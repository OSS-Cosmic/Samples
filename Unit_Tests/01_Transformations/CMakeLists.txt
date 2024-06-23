add_executable(01_Transformations 01_Transformations.cpp)
target_link_libraries(01_Transformations TF)
tf_set_output_dir(01_Transformations "Unit_Tests/01_Transformations") 

add_custom_command ( TARGET 01_Transformations  POST_BUILD
   COMMAND ${CMAKE_COMMAND} -E copy_if_different GPUCfg/gpu.cfg $<TARGET_FILE_DIR:01_Transformations>/GPUCfg/gpu.cfg
   COMMAND ${CMAKE_COMMAND} -E copy_if_different ${RESOURCES_DIR}/GPUData/pc_gpu.data $<TARGET_FILE_DIR:01_Transformations>/GPUCfg/gpu.data
   COMMAND ${CMAKE_COMMAND} -E make_directory $<TARGET_FILE_DIR:01_Transformations>/Textures 
   COMMAND ${CMAKE_COMMAND} -E copy_if_different ${TF_SAMPLE_MEDIA}/UnitTestResources/Textures/dds/*.tex $<TARGET_FILE_DIR:01_Transformations>/Textures/
   COMMAND ${CMAKE_COMMAND} -E copy_directory_if_different ${TF_SAMPLE_MEDIA}/UnitTestResources/Fonts $<TARGET_FILE_DIR:01_Transformations>/Fonts
)
tf_fsl_compile(01_Transformations 
  --compile "${CMAKE_CURRENT_SOURCE_DIR}/Shaders/FSL/ShaderList.fsl" ) 
tf_prepare_resources(01_Transformations) 
