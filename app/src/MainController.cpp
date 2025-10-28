//
// Created by vukasin on 2.10.25..
//

#include "MainController.hpp"

#include <GUIController.hpp>
#include <engine/graphics/GraphicsController.hpp>
#include <engine/graphics/OpenGL.hpp>
#include <engine/platform/PlatformController.hpp>
#include <engine/resources/ResourcesController.hpp>
#include <spdlog/spdlog.h>

namespace app {

class MainPlatformEventObserver : public engine::platform::PlatformEventObserver {
public:
    void on_mouse_move(engine::platform::MousePosition position) override;
};

void MainPlatformEventObserver::on_mouse_move(engine::platform::MousePosition position) {
    auto gui_controller = engine::core::Controller::get<GUIController>();
    if (!gui_controller->is_enabled()) {
        auto camera = engine::core::Controller::get<engine::graphics::GraphicsController>()->camera();
        camera->rotate_camera(position.dx, position.dy);
    }
}

void MainController::initialize() {
    auto platform = engine::core::Controller::get<engine::platform::PlatformController>();
    platform->register_platform_event_observer(std::make_unique<MainPlatformEventObserver>());
    engine::graphics::OpenGL::enable_depth_testing();
}


std::string_view MainController::name() const {
    return Controller::name();
}

bool MainController::loop() {
    auto platform = get<engine::platform::PlatformController>();
    if (platform->key(engine::platform::KEY_ESCAPE).is_down()) {
        return false;
    }
    return true;
}

void MainController::poll_events() {
}

void MainController::update() {
    update_camera();
}

void MainController::begin_draw() {
    engine::graphics::OpenGL::clear_buffers();
}

static glm::vec3 board_to_world(int file, int rank, float board_scale = 0.01f)
{
    // The original chessboard model is 100×100 units (before scaling)
    // After scaling by 0.01 each square is 1.0 world unit.
    const float square_size = 1.0f;                     // after board_scale
    const float offset = (7.0f * square_size) * 0.5f;   // centre the board

    float x = (file * square_size) - offset;
    float z = (rank * square_size) - offset;            // rank = row (0 = back rank)
    return glm::vec3(x, 0.0f, z);
}

static void draw_piece(engine::resources::Model* model,
                                engine::resources::Shader* shader,
                                const glm::vec3& pos,
                                const glm::vec3& colour)
{
    if (!model || !shader) return;

    auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
    auto camera   = graphics->camera();

    shader->use();

    shader->set_mat4("projection", graphics->projection_matrix());
    shader->set_mat4("view",       camera->view_matrix());

    // ---- NEW uniforms required by the shader
    shader->set_vec3("pieceColor", colour);
    shader->set_vec3("lightPos",   glm::vec3(5.0f, 10.0f, 5.0f)); // any world position
    shader->set_vec3("viewPos",    camera->Position);

    glm::mat4 model_mat = glm::translate(glm::mat4(1.0f), pos);
    model_mat = glm::scale(model_mat, glm::vec3(0.01f));
    shader->set_mat4("model", model_mat);

    model->draw(shader);
}
void MainController::draw_all_pieces()
{
    auto resources = engine::core::Controller::get<engine::resources::ResourcesController>();

    // ---- Load models as raw pointers (matches your current API) ----
    auto* pawn   = resources->model("pawn");
    auto* rook   = resources->model("rook");
    auto* knight = resources->model("knight");
    auto* bishop = resources->model("bishop");
    auto* queen  = resources->model("queen");
    auto* king   = resources->model("king");

    auto* piece_shader = resources->shader("new_piece");
    if (!piece_shader) {
        spdlog::error("Shader 'piece' not found!");
        return;
    }

    // ---- Helper lambda using raw pointers ----
    auto place = [&](int file, int rank,
                     engine::resources::Model* mdl,
                     const glm::vec3& colour = glm::vec3(1.0f))
    {
        if (mdl) {
            draw_piece(mdl, piece_shader, board_to_world(file, rank), colour);
        }
    };

    // ---- White back rank (rank 0) ----
    place(0, 0, rook,   glm::vec3(1.0f));
    place(1, 0, knight, glm::vec3(1.0f));
    place(2, 0, bishop, glm::vec3(1.0f));
    place(3, 0, queen,  glm::vec3(1.0f));
    place(4, 0, king,   glm::vec3(1.0f));
    place(5, 0, bishop, glm::vec3(1.0f));
    place(6, 0, knight, glm::vec3(1.0f));
    place(7, 0, rook,   glm::vec3(1.0f));

    // ---- White pawns (rank 1) ----
    for (int f = 0; f < 8; ++f)
        place(f, 1, pawn, glm::vec3(1.0f));

    // ---- Black back rank (rank 7) ----
    place(0, 7, rook,   glm::vec3(0.2f));
    place(1, 7, knight, glm::vec3(0.2f));
    place(2, 7, bishop, glm::vec3(0.2f));
    place(3, 7, queen,  glm::vec3(0.2f));
    place(4, 7, king,   glm::vec3(0.2f));
    place(5, 7, bishop, glm::vec3(0.2f));
    place(6, 7, knight, glm::vec3(0.2f));
    place(7, 7, rook,   glm::vec3(0.2f));

    // ---- Black pawns (rank 6) ----
    for (int f = 0; f < 8; ++f)
        place(f, 6, pawn, glm::vec3(0.2f));
}

void MainController::draw() {
    draw_chessboard();
    draw_all_pieces();
    draw_skybox();
}

void MainController::end_draw() {
    engine::core::Controller::get<engine::platform::PlatformController>()->swap_buffers();
}

void MainController::terminate() {
}

void MainController::draw_planet() {
    auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
    auto planet = engine::core::Controller::get<engine::resources::ResourcesController>()->model("planet");
    auto shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("chessboard");
    shader->use();

    shader->set_mat4("projection", graphics->projection_matrix());
    shader->set_mat4("view", graphics->camera()->view_matrix());

    auto model = glm::mat4(1.0f);
    model = glm::translate(model, glm::vec3(0.0f, 0.0f, -40.0f));

    shader->set_mat4("model", scale(model, glm::vec3(0.1f)));
    planet->draw(shader);
}

void MainController::draw_chessboard() {
    auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
    auto chessboard = engine::core::Controller::get<engine::resources::ResourcesController>()->model("chessboard");
    auto shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("chessboard");
    shader->use();
    shader->set_mat4("projection", graphics->projection_matrix());
    shader->set_mat4("view", graphics->camera()->view_matrix());

    auto model = glm::mat4(1.0f);
    model = glm::scale(model, glm::vec3(0.01f, 0.01f, 0.01f));
    //model = glm::scale(model, glm::vec3(0.01f));
    shader->set_mat4("model", model);

    chessboard->draw(shader);
}


void MainController::draw_skybox() {
    auto skybox_shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("skybox");
    auto skybox_cube = engine::core::Controller::get<engine::resources::ResourcesController>()->skybox("skybox2");
    engine::core::Controller::get<engine::graphics::GraphicsController>()->draw_skybox(skybox_shader, skybox_cube);
}

static void draw_piece(const std::shared_ptr<engine::resources::Model>& model,
                       const glm::vec3& pos,
                       const glm::vec3& colour = glm::vec3(1.0f))
{
    auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
    auto shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("new_piece");

    shader->use();
    shader->set_mat4("projection", graphics->projection_matrix());
    shader->set_mat4("view",      graphics->camera()->view_matrix());
    shader->set_vec3("pieceColor", colour);

    glm::mat4 model_mat = glm::mat4(1.0f);
    model_mat = glm::translate(model_mat, pos);
    model_mat = glm::scale(model_mat, glm::vec3(0.01f));   // same scale as the board
    shader->set_mat4("model", model_mat);

    model->draw(shader);
}

void MainController::draw_knight() {
    auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
    auto knight = engine::core::Controller::get<engine::resources::ResourcesController>()->model("knight");

    auto shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("piece");
    shader->use();
    shader->set_mat4("projection", graphics->projection_matrix());
    shader->set_mat4("view", graphics->camera()->view_matrix());

    auto model = glm::mat4(1.0f);
    model = glm::translate(model, glm::vec3(5.0f, 0.0f, 0.0f));
    model = glm::scale(model, glm::vec3(0.01f));
    //model = glm::scale(model, glm::vec3(0.01f));
    shader->set_mat4("model", model);

    knight->draw(shader);
}

void MainController::draw_king() {
    auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
    auto king = engine::core::Controller::get<engine::resources::ResourcesController>()->model("king");

    auto shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("piece");
    shader->use();
    shader->set_mat4("projection", graphics->projection_matrix());
    shader->set_mat4("view", graphics->camera()->view_matrix());

    auto model = glm::mat4(1.0f);
    model = glm::scale(model, glm::vec3(0.01f));
    //model = glm::scale(model, glm::vec3(0.01f));
    shader->set_mat4("model", model);

    king->draw(shader);
}
void MainController::update_camera() {
    auto platform = engine::core::Controller::get<engine::platform::PlatformController>();
    auto camera = engine::core::Controller::get<engine::graphics::GraphicsController>()->camera();
    float dt = platform->dt();
    float speed = 5.0f;
    if (platform->key(engine::platform::KEY_W)
                .state() == engine::platform::Key::State::Pressed) {
        camera->move_camera(engine::graphics::Camera::Movement::FORWARD, speed * dt);
    }
    if (platform->key(engine::platform::KEY_S)
                .state() == engine::platform::Key::State::Pressed) {
        camera->move_camera(engine::graphics::Camera::Movement::BACKWARD, speed * dt);
    }
    if (platform->key(engine::platform::KEY_A)
                .state() == engine::platform::Key::State::Pressed) {
        camera->move_camera(engine::graphics::Camera::Movement::LEFT, speed * dt);
    }
    if (platform->key(engine::platform::KEY_D)
                .state() == engine::platform::Key::State::Pressed) {
        camera->move_camera(engine::graphics::Camera::Movement::RIGHT, speed * dt);
    }
    auto mouse = platform->mouse();
    camera->rotate_camera(mouse.dx, mouse.dy);
    camera->zoom(mouse.scroll);
}

}// namespace app
