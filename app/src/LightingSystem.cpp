// LightingSystem.cpp
#include "LightingSystem.hpp"
#include <engine/core/Controller.hpp>
#include <engine/platform/PlatformController.hpp>
#include <imgui.h>

namespace app {
void LightingSystem::update(float dt) {
    handle_input();
}

void LightingSystem::handle_input() {
    auto platform = engine::core::Controller::get<engine::platform::PlatformController>();
    float speed = 2.0f * platform->dt();

    if (platform->key(engine::platform::KEY_UP).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.z -= speed;
    if (platform->key(engine::platform::KEY_DOWN).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.z += speed;
    if (platform->key(engine::platform::KEY_LEFT).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.x -= speed;
    if (platform->key(engine::platform::KEY_RIGHT).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.x += speed;
}


void LightingSystem::apply_to_shader(engine::resources::Shader *shader) const {
    if (!shader) return;

    shader->set_vec3("dirLight.direction", m_dir_light.direction);
    shader->set_vec3("dirLight.color", m_dir_light.color * m_dir_light.intensity);

    shader->set_vec3("pointLight.position", m_point_light.position);
    shader->set_vec3("pointLight.color", m_point_light.color * m_point_light.intensity);
    shader->set_float("pointLight.radius", m_point_light.radius);
}
}// namespace app