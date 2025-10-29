//#shader vertex
#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out VS_OUT {
    vec3 FragPos;      // position in world space
    vec3 Normal;       // normal in world space
    vec2 TexCoords;    // texture coordinates (if used)
} vs_out;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    // ---- Transform vertex position to world space
    vs_out.FragPos = vec3(model * vec4(aPos, 1.0));

    // ---- Normal must be transformed by the normal matrix (inverse-transpose of model)
    //      For a uniform scale we can just use the model matrix's upper-left 3x3.
    mat3 normalMatrix = transpose(inverse(mat3(model)));
    vs_out.Normal = normalize(normalMatrix * aNormal);

    vs_out.TexCoords = aTexCoords;

    gl_Position = projection * view * vec4(vs_out.FragPos, 1.0);
}

//#shader fragment
#version 330 core

out vec4 FragColor;

in VS_OUT {
    vec3 FragPos;
    vec3 Normal;
    vec2 TexCoords;
} fs_in;

// Uniforms
uniform vec3 pieceColor;
uniform vec3 viewPos;

// Directional Light (novi)
uniform vec3 dirLightPos = vec3(0.0f, 5.0f, 0.0f);  // Default position above board
uniform vec3 dirLightColor = vec3(1.0f, 1.0f, 1.0f);  // White
uniform float dirLightIntensity = 1.0f;  // Stronger default

// Point Light (novi)
uniform vec3 pointLightPos = vec3(5.0f, 5.0f, 5.0f);  // Default position
uniform vec3 pointLightColor = vec3(1.0f, 0.9f, 0.8f);  // Warm
uniform float pointLightIntensity = 2.0f;  // Stronger
uniform float pointLightRadius = 10.0f;  // Larger radius for attenuation

const float shininess = 32.0;

// Main
void main()
{
    vec3 norm = normalize(fs_in.Normal);
    vec3 viewDir = normalize(viewPos - fs_in.FragPos);

    // Ambient
    float ambientStrength = 0.2;
    vec3 ambient = ambientStrength * vec3(1.0f);  // White ambient

    // Directional Light
    vec3 dirLightDir = normalize(dirLightPos - fs_in.FragPos);  // Direction towards light
    float dirDiff = max(dot(norm, dirLightDir), 0.0);
    vec3 dirDiffuse = dirLightColor * dirLightIntensity * dirDiff;
    vec3 dirHalfway = normalize(dirLightDir + viewDir);
    float dirSpec = pow(max(dot(norm, dirHalfway), 0.0), shininess);
    vec3 dirSpecular = 0.5 * dirSpec * dirLightColor * dirLightIntensity;
    vec3 directional = dirDiffuse + dirSpecular;

    // Point Light with attenuation
    vec3 pointLightDir = normalize(pointLightPos - fs_in.FragPos);
    float pointDiff = max(dot(norm, pointLightDir), 0.0);
    float dist = length(pointLightPos - fs_in.FragPos);
    float attenuation = 1.0 / (1.0 + 0.09 * dist + 0.032 * (dist * dist));  // Adjusted for stronger light
    vec3 pointDiffuse = pointLightColor * pointLightIntensity * pointDiff * attenuation;
    vec3 pointHalfway = normalize(pointLightDir + viewDir);
    float pointSpec = pow(max(dot(norm, pointHalfway), 0.0), shininess);
    vec3 pointSpecular = 0.5 * pointSpec * pointLightColor * pointLightIntensity * attenuation;
    vec3 point = pointDiffuse + pointSpecular;

    // Combine
    vec3 lighting = ambient + directional + point;
    vec3 result = lighting * pieceColor;

    // If no light effect (debug), make yellow
    if (length(directional + point) < 0.01) {
        result = vec3(1.0, 1.0, 0.0);  // Yellow to spot no light
    }

    result = pow(result, vec3(1.0/2.2));
    FragColor = vec4(result, 1.0);
}