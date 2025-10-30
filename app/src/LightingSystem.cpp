// LightingSystem.cpp
#include "LightingSystem.hpp"
#include <engine/core/Controller.hpp>
#include <engine/platform/PlatformController.hpp>
#include <imgui.h>
#include <spdlog/spdlog.h>

namespace app {

glm::vec3 g_point_light_color = glm::vec3(1.0f, 1.0f, 1.0f);

void LightingSystem::update(float dt) {
    handle_input();
}

void LightingSystem::handle_input() {
    auto platform = engine::core::Controller::get<engine::platform::PlatformController>();
    float dt = platform->dt();
    float speed = 5.0f * dt;

    if (platform->key(engine::platform::KEY_UP).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.z -= speed;
    if (platform->key(engine::platform::KEY_DOWN).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.z += speed;
    if (platform->key(engine::platform::KEY_LEFT).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.x -= speed;
    if (platform->key(engine::platform::KEY_RIGHT).state() == engine::platform::Key::State::Pressed)
        m_point_light.position.x += speed;

    // === ANIMACIJA SVETLA ===
    m_light_timer += dt;
    if (m_light_timer >= m_light_cycle_duration) {
        m_light_timer -= m_light_cycle_duration;  // restart ciklusa
    }

    // Sinusoida: 0 → 1 → 0
    float t = (m_light_timer / m_light_cycle_duration) * 3.14159f * 2.0f;  // 0 → 2π
    float normalized = (sin(t) + 1.0f) * 0.5f;  // 0 → 1 → 0

    // Interpolacija Y pozicije
    float target_y = m_light_min_y + (m_light_max_y - m_light_min_y) * normalized;
    m_point_light.position.y = target_y;

    spdlog::info("Light position: {} {} {}", m_point_light.position.x, m_point_light.position.y, m_point_light.position.z);
}

void LightingSystem::apply_to_shader(engine::resources::Shader *shader) const {
    if (!shader) return;

    shader->use();

    shader->set_vec3("dirLightDirection", m_dir_light.direction);
    shader->set_vec3("dirLightColor", m_dir_light.color);
    shader->set_float("dirLightIntensity", m_dir_light.intensity);

    shader->set_vec3("pointLightPos", m_point_light.position);
    shader->set_vec3("pointLightColor", g_point_light_color * m_point_light.color);
    shader->set_float("pointLightIntensity", m_point_light.intensity);
    shader->set_float("pointLightRadius", m_point_light.radius);
    }
}// namespace app