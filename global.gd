#todo adicionar cursores aqui
extends  Node
@onready var steps: AudioStreamPlayer = $steps
@onready var steps_left: AudioStreamPlayer2D = $steps_left
@onready var steps_right: AudioStreamPlayer2D = $steps_right

var pointer = preload("res://assets/cursores/Hands/Hand1.png");
var clicker = preload("res://assets/cursores/Arrows/Arrow2.png");

func change_to_hand():
	Input.set_custom_mouse_cursor(pointer);

func change_to_arrow():
	Input.set_custom_mouse_cursor(clicker);

func play_steps():
	steps_left.stop()
	steps_right.stop()
	steps.play()

func play_steps_left():
	steps.stop()
	steps_right.stop()
	steps_left.play()
	
func play_steps_right():
	steps.stop()
	steps_left.stop()
	steps_right.play()
