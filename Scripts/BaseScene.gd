extends Node3D

var cardinalLineX = MeshInstance3D.new()
var cardinalLineY: ImmediateMesh = ImmediateMesh.new()
var cardinalLineZ: ImmediateMesh = ImmediateMesh.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	var cardinalLineXMesh = ImmediateMesh.new()
	var cardinalLineMaterial = ORMMaterial3D.new()
	cardinalLineXMesh.surface_begin(Mesh.PRIMITIVE_LINES, cardinalLineMaterial)
	cardinalLineXMesh.surface_add_vertex(Vector3(-10000, 0, 0))
	cardinalLineXMesh.surface_add_vertex(Vector3(10000, 0, 0))
	cardinalLineXMesh.surface_end()
	cardinalLineX.mesh = cardinalLineXMesh
	cardinalLineX.cast_shadow = false
	cardinalLineMaterial.albedo_color = Color(1.0, 0.0, 0.0)
	cardinalLineMaterial.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	add_child(cardinalLineX)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
