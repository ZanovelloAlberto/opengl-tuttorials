project('ok', ['cpp','c'])
ok = 'demo'
# Initialize GLFW dependency
glfw_dep = dependency('glfw3')

# if not compiler.has_header('filesystem')   # This is OK
#     warning('The compiler has no <filesystem> header file')
# endif
 


c = meson.get_compiler('cpp')

# if not c.has_header('filesystem')   # This is OK
#     warning('The compiler has no <filesystem> header file')
# endif
add_project_arguments(['-std=c++17'], language : 'cpp')

m = c.find_library('m')
freetype2 = dependency('freetype2')
glew = dependency('glew')
gl = dependency('opengl')
# stb = dependency('stb')
glm = dependency('glm')
# glad = dependency('glad')

src = files('EBO.cpp',  'stb.cpp', 'shaderClass.cpp',  'VAO.cpp',  'VBO.cpp', 'glad.c', 'Texture.h', 'Texture.cpp')
executable(ok,  'Main.cpp', src,
     dependencies: [glfw_dep, freetype2, m, gl, glew],
     include_directories: ['include','.']
)
# ss = ['une','two','tree','four','five','six']



# foreach i : range(1, 6)
#       executable(ss[i], ss[i].join('src/','.cpp'),
#             dependencies: [glfw_dep, freetype2, m, gl, glew],
#       )
# endforeach
     
      # executable('tf', ss[i].join('src/','.cpp'),
      #       dependencies: [glfw_dep, freetype2, m, gl, glew],
      # )

