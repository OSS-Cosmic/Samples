load("@prelude//paths.bzl", "paths")

def common_sample_resources() -> dict[str, str]:
      return {paths.join("Textures",paths.basename(file)): file for file in glob(["TFSamples-Media/UnitTestResources/Textures/dds/*.tex"])} | \
            {paths.relativize(file,"TFSamples-Media/UnitTestResources"): file for file in glob(["TFSamples-Media/UnitTestResources/Fonts/**/*"])} 
 
def common_system_libraries():
      return select({
           "tf_platform//target:win11": {
                 "amd_ags_x64.dll": "@tf//3rdparty:amd_ags_x64.dll",
                 "dxil.dll": "@tf//3rdparty:dxil.dll",
                 "dxcompiler.dll": "@tf//3rdparty:dxcompiler.dll",
                 "WinPixEventRuntime.dll": "@tf//3rdparty:WinPixEventRuntime.dll",
           },
              "DEFAULT": {}
       }) 
