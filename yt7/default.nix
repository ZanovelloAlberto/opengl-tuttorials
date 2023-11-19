{ pkgs ? import <nixpkgs> { } }:
pkgs.clangStdenv.mkDerivation rec {
  pname = "oddk";
  version = "0.1.1";
  buildInputs = with pkgs;[
    meson
    freetype
    nodePackages.nodemon
    stb
    glew
    glfw
    clang-tools
    clang
    pkg-config
    ninja
    gdb
    glm
  ];
      # CXXFLAGS = with pkgs; (builtins.concatStringsSep " " [
      # (lib.removeSuffix "\n" (builtins.readFile "${clang}/nix-support/cc-cflags"))
      # (lib.removeSuffix "\n" (builtins.readFile "${clang}/nix-support/libc-cflags"))
      # (lib.removeSuffix "\n" (builtins.readFile "${clang}/nix-support/libcxx-cxxflags"))
    # ]);ls


  src = ./.;
  # buildPhase = ''
  #   clang src/*.c -lGL -lGLEW -lglfw -lfreetype -I src -ldl -lm `pkg-config --cflags stb`
  # '';
  # title = "ok";
  shellHook = ''
    start(){
      sway assign [title=${pname}] workspace 3
      mesonConfigurePhase
      nodemon -e c,glsl,h,cpp -w ../src --exec "rm ./$1; ninja -C . && ./$1 ; echo build failed..." 
    }

  '';
}
