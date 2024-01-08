from conan import ConanFile

class ConanTemplateGLFW(ConanFile):
	settings = "os", "compiler", "build_type", "arch"
	generators = "PremakeDeps"

	def requirements(self):
		self.requires("glfw/3.3.8")