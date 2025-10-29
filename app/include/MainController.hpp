//
// Created by vukasin on 2.10.25..
//

#ifndef MAINCONTROLLER_HPP
#define MAINCONTROLLER_HPP
#include <engine/core/Controller.hpp>
#include <glm/vec3.hpp>
#include <engine/platform/PlatformEventObserver.hpp>

namespace app {
    class MainController : public engine::core::Controller {
    public:
        std::string_view name() const override;

    private:
        float m_board_world_size = 1.0f;
        glm::vec3 board_to_world(int file, int rank) const;
        void initialize() override;
        bool loop() override;
        void poll_events() override;
        void update() override;
        void begin_draw() override;
        void draw_all_pieces();
        void draw() override;
        void end_draw() override;
        void terminate() override;

        void draw_planet();
        void draw_chessboard();
        void draw_skybox();

        void update_camera();
    };
}

#endif //MAINCONTROLLER_HPP
