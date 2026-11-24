extends Node

@export var dialogue_animation: AnimationPlayer;
@export var animation_name: String;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func play_animation():
	dialogue_animation.play(animation_name);
