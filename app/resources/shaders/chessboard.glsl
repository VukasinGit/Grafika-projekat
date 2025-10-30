//#shader vertex
#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec2 TexCoords;
out vec3 Normal;
out vec3 FragPos;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    FragPos = vec3(model * vec4(aPos, 1.0));
    Normal = aNormal;
    TexCoords = aTexCoords;
    gl_Position = projection * view * vec4(FragPos, 1.0);
}

//#shader fragment
#version 330 core

out vec4 FragColor;

in vec2 TexCoords;
in vec3 Normal;
in vec3 FragPos;

uniform sampler2D texture_diffuse1;
uniform vec3 lightColor = vec3(1.0, 1.0, 1.0);
uniform vec3 lightPos = vec3(5.0, 10.0, 5.0);
uniform vec3 viewPos;

void main() {
    // Sample the texture
    vec3 baseColor = texture(texture_diffuse1, TexCoords).rgb;

    // Basic lighting calculations
    vec3 norm = normalize(Normal);
    vec3 lightDir = normalize(lightPos - FragPos);

    // Stronger ambient lighting so texture is visible
    float ambientStrength = 0.6;
    vec3 ambient = ambientStrength * lightColor;

    // Diffuse lighting
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * lightColor * 0.4;

    // Combine lighting with base color
    vec3 result = (ambient + diffuse) * baseColor;

    FragColor = vec4(result, 1.0);
}