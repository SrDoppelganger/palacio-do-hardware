extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _on_continuar_pressed() -> void:
	#add som de "aceite"
	Global.play_steps_left();
	get_tree().change_scene_to_file("res://Scenes/sala_e_2.tscn");
func _on_continuar_mouse_entered() -> void:
	Global.change_to_hand();
func _on_continuar_mouse_exited() -> void:
	Global.change_to_arrow();

func _on_voltar_pressed() -> void:
	#add som de "aceite"
	Global.play_steps_right();
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");
func _on_voltar_mouse_entered() -> void:
	Global.change_to_hand();
func _on_voltar_mouse_exited() -> void:
	Global.change_to_arrow();

func _on_button_mouse_entered() -> void:
	Global.change_to_hand();
func _on_button_mouse_exited() -> void:
	Global.change_to_arrow();
