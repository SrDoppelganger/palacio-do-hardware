extends Node2D
@onready var animation: AnimationPlayer = $animation
@onready var intro: AudioStreamPlayer = $intro


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("UP"):
		intro.playing = false
		animation.play("outro")
	if Input.is_action_just_pressed("CONFIRM"):
		intro.playing = false
		animation.play("controls")
		
func _on_animation_animation_finished(anim_name: StringName) -> void:
	if anim_name == "outro":
		get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");
	if anim_name == "controls":
		animation.play("outro");
