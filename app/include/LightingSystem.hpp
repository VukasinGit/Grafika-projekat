//
// Created by vukasin on 29.10.25..
//

#ifndef LIGHTINGSYSTEM_HPP
#define LIGHTINGSYSTEM_HPP
#include <engine/resources/ResourcesController.hpp>

namespace app {
    extern glm::vec3 g_point_light_color;

    struct DirLight {
        glm::vec3 direction = glm::vec3(-0.2f, -1.0f, -0.2f);
        glm::vec3 color = glm::vec3(0.4f, 0.0f, 0.8f);
        float intensity = 1.0f;
    };

    struct PointLight {
        glm::vec3 position = glm::vec3(3.0f, 5.0f, -2.0f);
        glm::vec3 color = glm::vec3(1.0f, 0.7f, 0.2f);
        float intensity = 15.0f;
        float radius = 8.0f;
    };

    class LightingSystem {
    public:
        void handle_input();
        void update(float dt);
        void apply_to_shader(engine::resources::Shader* shader) const;
    private:
        DirLight  m_dir_light;
        PointLight m_point_light;

        // for point light animation
        float m_light_timer = 0.0f;
        const float m_light_cycle_duration = 4.0f;  // 4 sekunde za ceo ciklus
        const float m_light_min_y = 5.0f;
        const float m_light_max_y = 15.0f;

        glm::vec3 m_point_light_color = glm::vec3(1.0f, 1.0f, 1.0f);  // Počni sa belom
    };
}

#endif //LIGHTINGSYSTEM_HPP
