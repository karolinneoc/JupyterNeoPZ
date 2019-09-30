file(GLOB headers *.h)
file(GLOB sources *.cpp)

set(main_SRCS ${sources} ${headers})

add_executable(SpecialMapsExamples ${main_SRCS})

target_link_libraries(SpecialMapsExamples pz)