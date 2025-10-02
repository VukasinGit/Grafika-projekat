//
// Created by vukasin on 2.10.25..
//

#include "MainController.hpp"

#include <engine/graphics/GraphicsController.hpp>
#include <engine/graphics/OpenGL.hpp>
#include <engine/platform/PlatformController.hpp>
#include <engine/resources/ResourcesController.hpp>

std::string_view MainController::name() const {
    return Controller::name();
}

void MainController::initialize() {

}

bool MainController::loop() {
    return true;
}

void MainController::poll_events() {

}

void MainController::update() {

}

void MainController::begin_draw() {
    engine::graphics::OpenGL::clear_buffers();

}

void MainController::draw() {
    draw_skybox();
}

void MainController::end_draw() {
    engine::core::Controller::get<engine::platform::PlatformController>()->swap_buffers();
}

void MainController::terminate() {

}

void MainController::draw_skybox() {
    auto skybox_shader = engine::core::Controller::get<engine::resources::ResourcesController>()->shader("skybox");
    auto skybox_cube = engine::core::Controller::get<engine::resources::ResourcesController>()->skybox("skybox");
    engine::core::Controller::get<engine::graphics::GraphicsController>()->draw_skybox(skybox_shader, skybox_cube);
}