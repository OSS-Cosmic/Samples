load("@tf//build_defs:package_app.bzl", "package_app")
load("//:defs.bzl", "common_sample_resources", "common_system_libraries")

package_app(
    name = "01_Transformations",
    resources = [ 
      ("", "//01_Transformations:01_Transformations"),
      ("",  "//01_Transformations:fsl")
    ],
    files = 
        common_system_libraries() + 
        common_sample_resources() + 
        {
              "GPUCfg/gpu.data": "@tf//:pc_gpu.data",
              "GPUCfg/gpu.cfg": "//01_Transformations:gpu.cfg",
        }
) 


package_app(
    name = "03_MultiThread",
    resources = [ 
      ("", "//03_MultiThread:03_MultiThread"),
      ("",  "//03_MultiThread:fsl")
    ],
    files = 
        common_system_libraries() + 
        common_sample_resources() + 
        {
              "GPUCfg/gpu.data": "@tf//:pc_gpu.data",
              "GPUCfg/gpu.cfg": "//03_MultiThread:gpu.cfg",
        }
) 
