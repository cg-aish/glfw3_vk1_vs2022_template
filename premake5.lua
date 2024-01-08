-- premake5.lua
include "vendor/conandeps.premake5.lua"

workspace "GlfwVulkanTemplate"
configurations { "Debug", "Release" }
architecture "x64"

project "GlfwVulkanTemplate"
kind "ConsoleApp"
language "C++"
cppdialect "C++20"

targetdir "build/%{cfg.buildcfg}/bin"
objdir "build/%{cfg.buildcfg}/obj"

location "./src"
files { "%{prj.location}**.h", "%{prj.location}/**.cpp" }

filter "configurations:Debug"
	defines { "DEBUG" }
	symbols "On"
filter {}

filter "configurations:Release"
	defines { "NDEBUG" }
	optimize "On"
filter {}

conan_setup("release_x86_64")
