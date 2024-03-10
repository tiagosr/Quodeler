extends Control


@onready var sceneViewport = $HSplitContainer/SubViewportContainer/SceneViewport
@onready var mainTabBar = $HSplitContainer/Sidebar/TabBar
@onready var mainTabContainer = $HSplitContainer/Sidebar/TabPanelContainer

@onready var tilesetTab = $HSplitContainer/Sidebar/TabPanelContainer/TilesetTab
@onready var uvsTab = $HSplitContainer/Sidebar/TabPanelContainer/UVsTab
@onready var paintTab = $HSplitContainer/Sidebar/TabPanelContainer/PaintTab
@onready var transformTab = $HSplitContainer/Sidebar/TabPanelContainer/TransformTab
@onready var sceneTab = $HSplitContainer/Sidebar/TabPanelContainer/SceneTab

var baseScene = null
var tabPanelScene = null

# Called when the node enters the scene tree for the first time.
func _ready():
	baseScene = sceneViewport.get_child(0)
	mainTabBar.tab_changed.connect(sidebar_tab_selected)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func sidebar_tab_selected(idx):
	tilesetTab.visible = idx == 0
	uvsTab.visible = idx == 1
	paintTab.visible = idx == 2
	transformTab.visible = idx == 3
	sceneTab.visible = idx == 4
