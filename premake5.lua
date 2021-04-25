project "Comet"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    systemversion "latest"

    targetdir ("%{wks.location}/bin/" .. outputDirectory .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputDirectory .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",

        "include/yaml-cpp/**.h"
    }

    includedirs
    {
        "include"
    }

    filter "configurations:Debug"
        symbols "On"
        runtime "Debug"

    filter "configurations:Release"
        optimize "on"
        runtime "Release"

