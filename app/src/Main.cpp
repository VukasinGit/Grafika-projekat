#include "MainApp.hpp"
#include <engine/core/Engine.hpp>

int main(int argc, char** argv) {
    return std::make_unique<MainApp>()->run(argc, argv);
}
