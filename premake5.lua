project "yaml-cpp"
    kind "StaticLib"
    language "C++"
	staticruntime "On"
    
    targetdir ("bin/" .. outputdir .. "/")
    objdir ("bin-int/" .. outputdir .. "/")

    files
    {
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
    }
    
    includedirs
	{
		"include"
	}
	
	defines { "YAML_CPP_STATIC_DEFINE" }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++20"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"