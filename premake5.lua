include "../../premake/common_premake_defines.lua"

project "magic_enum"
	kind "None"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./**.hpp",
	}

	includedirs {
		"%{IncludeDir.magic_enum}"
	}