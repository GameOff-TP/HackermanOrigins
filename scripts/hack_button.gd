extends Control

export var progress_speed = 50
export(Color) var done_color

var progress = 0

var isButtonDown = false
var isDone = false

onready var progress_bar = $ProgressBar
onready var button = $Button

func _process(delta: float) -> void:
	if not isDone and isButtonDown:
		progress += progress_speed * delta
		if progress >= 100:
			progress = 100
			isDone = true
			button.disabled = true
			progress_bar.add_color_override("font_color", done_color)
		progress_bar.value = progress


func _on_Button_button_down() -> void:
	isButtonDown = true


func _on_Button_button_up() -> void:
	isButtonDown = false
