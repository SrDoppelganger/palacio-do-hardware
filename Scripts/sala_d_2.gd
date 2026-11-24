extends Node2D

@onready var audio: AudioStreamPlayer = $audio/audio
@onready var audio2: AudioStreamPlayer = $audio/audio2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_continuar_pressed() -> void:
	Global.play_steps();
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");

func _on_voltar_pressed() -> void:
	Global.play_steps_left();
	get_tree().change_scene_to_file("res://Scenes/sala_d_1.tscn");

# ============================================================================================== #
# scripts de cursores
func _on_mouse_entered() -> void:
	Global.change_to_hand();
	
func _on_mouse_exited() -> void:
	Global.change_to_arrow();

func _on_music_toggled(toggled_on: bool) -> void:
	if toggled_on:
		audio.play();
		audio2.stop();
	if !toggled_on:
		audio.stop();
		
func _on_music2_toggled(toggled_on: bool) -> void:
	if toggled_on:
		audio2.play();
		audio.stop();
	if !toggled_on:
		audio2.stop();
