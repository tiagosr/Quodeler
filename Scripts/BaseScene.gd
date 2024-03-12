extends Node3D

var cardinalLines = MeshInstance3D.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	var cardinalLinesMesh = ImmediateMesh.new()
	var cardinalLineXMaterial = ORMMaterial3D.new()
	var cardinalLineYMaterial = ORMMaterial3D.new()
	var cardinalLineZMaterial = ORMMaterial3D.new()
	cardinalLineXMaterial.albedo_color = Color(1.0, 0.0, 0.0)
	cardinalLineXMaterial.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	cardinalLineYMaterial.albedo_color = Color(0.0, 1.0, 0.0)
	cardinalLineYMaterial.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	cardinalLineZMaterial.albedo_color = Color(0.0, 0.0, 1.0)
	cardinalLineZMaterial.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED

	cardinalLinesMesh.surface_begin(Mesh.PRIMITIVE_LINES, cardinalLineXMaterial)
	cardinalLinesMesh.surface_add_vertex(Vector3(-10000, 0, 0))
	cardinalLinesMesh.surface_add_vertex(Vector3( 10000, 0, 0))
	cardinalLinesMesh.surface_end()

	cardinalLinesMesh.surface_begin(Mesh.PRIMITIVE_LINES, cardinalLineYMaterial)
	cardinalLinesMesh.surface_add_vertex(Vector3(0, -10000, 0))
	cardinalLinesMesh.surface_add_vertex(Vector3(0,  10000, 0))
	cardinalLinesMesh.surface_end()

	cardinalLinesMesh.surface_begin(Mesh.PRIMITIVE_LINES, cardinalLineZMaterial)
	cardinalLinesMesh.surface_add_vertex(Vector3(0, 0, -10000))
	cardinalLinesMesh.surface_add_vertex(Vector3(0, 0,  10000))
	cardinalLinesMesh.surface_end()

	cardinalLines.mesh = cardinalLinesMesh
	cardinalLines.cast_shadow = false
	add_child(cardinalLines)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
