//
// Created by vukasin on 2.10.25..
//

#ifndef MAINCONTROLLER_HPP
#define MAINCONTROLLER_HPP
#include <engine/core/Controller.hpp>


class MainController : engine::core::Controller {
public:
    std::string_view name() const override;

private:
    void initialize() override;
    bool loop() override;
    void poll_events() override;
    void update() override;
    void begin_draw() override;
    void draw() override;
    void end_draw() override;
    void terminate() override;
};


#endif //MAINCONTROLLER_HPP
