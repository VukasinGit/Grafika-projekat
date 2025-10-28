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

// ---------------------------------------------------------------------
// Uniforms (set from C++)
// ---------------------------------------------------------------------
uniform vec3 pieceColor;   // base colour of the piece (white/black)
uniform vec3 lightPos;     // world-space position of a single light
uniform vec3 viewPos;      // camera position (for specular)

const float shininess = 32.0;
const vec3  lightColor = vec3(1.0, 1.0, 1.0);   // white light

void main()
{
    // -----------------------------------------------------------------
    // 1. Ambient
    // -----------------------------------------------------------------
    float ambientStrength = 0.2;
    vec3 ambient = ambientStrength * lightColor;

    // -----------------------------------------------------------------
    // 2. Diffuse
    // -----------------------------------------------------------------
    vec3 norm = normalize(fs_in.Normal);
    vec3 lightDir = normalize(lightPos - fs_in.FragPos);
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * lightColor;

    // -----------------------------------------------------------------
    // 3. Specular (Blinn-Phong)
    // -----------------------------------------------------------------
    float specularStrength = 0.5;
    vec3 viewDir = normalize(viewPos - fs_in.FragPos);
    vec3 halfwayDir = normalize(lightDir + viewDir);
    float spec = pow(max(dot(norm, halfwayDir), 0.0), shininess);
    vec3 specular = specularStrength * spec * lightColor;

    // -----------------------------------------------------------------
    // 4. Combine + apply piece colour
    // -----------------------------------------------------------------
    vec3 lighting = ambient + diffuse + specular;
    vec3 result = lighting * pieceColor;

    // Gamma correction (simple sRGB approximation)
    result = pow(result, vec3(1.0/2.2));

    FragColor = vec4(result, 1.0);
}