//
// Created by vukasin on 2.10.25..
//

#include "MainController.hpp"
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
}
void MainController::draw() {
}
void MainController::end_draw() {
}
void MainController::terminate() {
}