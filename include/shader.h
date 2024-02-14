#ifndef SHADER_H
#define SHADER_H

#include <string>
#include <GL/glew.h>
#include <glm.hpp>

class Shader {
public:
    Shader(const char* vertexPath, const char* fragmentPath);
    ~Shader();

    void use() const;
    void setFloat(const std::string &name, float value) const;
    void setMat4(const std::string &name, const glm::mat4 &mat) const;
    void setVec3(const std::string &name, const glm::vec3 &value) const;

private:
    GLuint programID;
    std::string readShaderFile(const char* shaderPath);
    void checkCompileErrors(GLuint shader, std::string type);
};

#endif // SHADER_H
