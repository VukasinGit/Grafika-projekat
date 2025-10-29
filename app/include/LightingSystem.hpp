//
// Created by vukasin on 29.10.25..
//

#ifndef LIGHTINGSYSTEM_HPP
#define LIGHTINGSYSTEM_HPP
#include <engine/resources/ResourcesController.hpp>

namespace app {
    struct DirLight {
        glm::vec3 direction = glm::vec3(-0.2f, -1.0f, -0.2f);
        glm::vec3 color = glm::vec3(1.0f, 1.0f, 1.0f);
        float intensity = 0.7f;
    };

    struct PointLight {
        glm::vec3 position = glm::vec3(3.0f, 5.0f, -2.0f);
        glm::vec3 color = glm::vec3(1.0f, 0.5f, 0.3f);
        float intensity = 0.7f;
        float radius = 2.0f;
    };

    class LightingSystem {
    public:
        void handle_input();
        void update(float dt);
        void apply_to_shader(engine::resources::Shader* shader) const;
    private:
        DirLight  m_dir_light;
        PointLight m_point_light;
    };
}

#endif //LIGHTINGSYSTEM_HPP
