load("@tf//build_defs:package_app.bzl", "package_app")
load("//:defs.bzl", "common_unit_test_resources")

package_app(
    name = "01_Transformations",
    resources = [ 
      ("", "//01_Transformations:01_Transformations"),
      ("",  "//01_Transformations:fsl")
    ],
    files = 
      common_unit_test_resources() |
      {
          "GPUCfg/gpu.data": "@tf//:pc_gpu.data",
          "GPUCfg/gpu.cfg": "//01_Transformations:gpu.cfg",

          "amd_ags_x64.dll": "@tf//3rdparty:amd_ags_x64.dll",
          "dxil.dll": "@tf//3rdparty:dxil.dll",
          "dxcompiler.dll": "@tf//3rdparty:dxcompiler.dll",
          "WinPixEventRuntime.dll": "@tf//3rdparty:WinPixEventRuntime.dll",
          "D3D12Core.dll": "@tf//3rdparty:D3D12Core.dll",
          "d3d12SDKLayers.dll": "@tf//3rdparty:d3d12SDKLayers.dll",
      }
) 


