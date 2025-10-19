//
// Created by vukasin on 2.10.25..
//

#include "MainApp.hpp"

#include <GUIController.hpp>
#include <MainController.hpp>
#include <engine/core/Controller.hpp>

namespace app {
    void MainApp::app_setup() {
        const auto main_controller = register_controller<MainController>();
        const auto gui_controller = register_controller<GUIController>();
        main_controller->after(engine::core::Controller::get<engine::core::EngineControllersEnd>());
        gui_controller->after(main_controller);
    }
}