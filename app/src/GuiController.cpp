//
// Created by vukasin on 19.10.25..
//

#include <GUIController.hpp>
#include <engine/graphics/GraphicsController.hpp>
#include <engine/platform/PlatformController.hpp>
#include <imgui.h>

namespace app {
    void GUIController::initialize() {
        set_enable(false);
    }

    void GUIController::poll_events() {
        const auto platform = get<engine::platform::PlatformController>();
        if (platform->key(engine::platform::KeyId::KEY_P).state() == engine::platform::Key::State::JustPressed) {
            set_enable(!is_enabled());
        }
    }

    void GUIController::draw() {
        auto graphics = get<engine::graphics::GraphicsController>();
        auto camera = graphics->camera();

        graphics->begin_gui();

        ImGui::Begin("Camera settings");

        const auto&c = *camera;
        ImGui::Text("Position: (%f %f %f)", c.Position.x, c.Position.y, c.Position.z);
        ImGui::Text("Yaw, Pitch: (%f %f %f)", c.Yaw, c.Pitch);
        ImGui::Text("Camera front: (%f %f %f)", c.Front.x, c.Front.y, c.Front.z);
        ImGui::End();

        graphics->end_gui();
    }
}
