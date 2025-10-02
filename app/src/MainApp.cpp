//
// Created by vukasin on 2.10.25..
//

#include "MainApp.hpp"

#include <MainController.hpp>
#include <engine/core/Controller.hpp>

class MainController;
void MainApp::app_setup() {
    auto main_controller = register_controller<MainController>();
    main_controller->after(engine::core::Controller::get<engine::core::EngineControllersEnd>());
}