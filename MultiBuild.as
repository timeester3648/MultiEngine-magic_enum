void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("magic_enum");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eNone);
	properties.license("./LICENSE");

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./include"
	});

	properties.files("./include/**.hpp");
}