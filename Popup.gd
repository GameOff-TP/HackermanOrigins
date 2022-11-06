extends Node

export(PackedScene) var puzzle_scene

onready var container = $Background/Container

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var puzzle = puzzle_scene.instance()
	$Background.rect_size = puzzle.rect_size
	
	print(puzzle.get_tree())
	
	container.add_child(puzzle)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
