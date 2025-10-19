//
// Created by vukasin on 2.10.25..
//

#include "MainController.hpp"

#include <engine/graphics/GraphicsController.hpp>
#include <engine/graphics/OpenGL.hpp>
#include <engine/platform/PlatformController.hpp>
#include <engine/resources/ResourcesController.hpp>

namespace app {

    std::string_view MainController::name() const {
        return Controller::name();
    }

    void MainController::initialize() {
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

    void MainController::draw() {
        draw_skybox();
        draw_planet();
        //draw_tower();
    }

    void MainController::end_draw() {
        engine::core::Controller::get<engine::platform::PlatformController>()->swap_buffers();
    }

    void MainController::terminate() {
    }

    void MainController::draw_planet() {
        auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
        auto planet = engine::core::Controller::get<engine::resources::ResourcesController>()->model("planet");
        auto shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("basic");
        shader->use();
        shader->set_mat4("projection", graphics->projection_matrix());
        shader->set_mat4("view", graphics->camera()
                                         ->view_matrix());

        auto model = glm::mat4(1.0f);
        model = glm::translate(model, glm::vec3(0.0f, 0.0f, -40.0f));

        shader->set_mat4("model", scale(model, glm::vec3(0.1f)));
        planet->draw(shader);
    }

    void MainController::draw_tower() {
        auto graphics = engine::core::Controller::get<engine::graphics::GraphicsController>();
        auto tower = engine::core::Controller::get<engine::resources::ResourcesController>()->model("tower");
        auto shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("basic");
        shader->use();

        shader->set_mat4("projection", graphics->projection_matrix());
        shader->set_mat4("view", graphics->camera()
                                         ->view_matrix());

        auto model = glm::mat4(1.0f);
        shader->set_mat4("model", model);
        tower->draw(shader);
    }

    void MainController::draw_skybox() {
        auto skybox_shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("skybox");
        auto skybox_cube = engine::core::Controller::get<engine::resources::ResourcesController>()->skybox("skybox2");
        engine::core::Controller::get<engine::graphics::GraphicsController>()->draw_skybox(skybox_shader, skybox_cube);
    }

    void MainController::update_camera() {
        auto platform = engine::core::Controller::get<engine::platform::PlatformController>();
        auto camera = engine::core::Controller::get<engine::graphics::GraphicsController>()->camera();
        float dt = platform->dt();
        float speed = 5.0f;
        if (platform->key(engine::platform::KEY_W)
                    .state() == engine::platform::Key::State::Pressed) {
            camera->move_camera(engine::graphics::Camera::Movement::FORWARD, speed*dt);
        }
        if (platform->key(engine::platform::KEY_S)
                    .state() == engine::platform::Key::State::Pressed) {
            camera->move_camera(engine::graphics::Camera::Movement::BACKWARD, speed*dt);
        }
        if (platform->key(engine::platform::KEY_A)
                    .state() == engine::platform::Key::State::Pressed) {
            camera->move_camera(engine::graphics::Camera::Movement::LEFT, speed*dt);
        }
        if (platform->key(engine::platform::KEY_D)
                    .state() == engine::platform::Key::State::Pressed) {
            camera->move_camera(engine::graphics::Camera::Movement::RIGHT, speed*dt);
        }
        auto mouse = platform->mouse();
        camera->rotate_camera(mouse.dx, mouse.dy);
        camera->zoom(mouse.scroll);
    }

}
