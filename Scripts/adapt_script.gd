extends Node

signal W_signal;
signal A_signal;
signal S_signal;
signal D_signal;
signal Interact;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("CONFIRM"):
		Interact.emit();
	if Input.is_action_just_pressed("UP"):
		W_signal.emit();
	if Input.is_action_just_pressed("DOWN"):
		S_signal.emit();
	if Input.is_action_just_pressed("LEFT"):
		A_signal.emit();
	if Input.is_action_just_pressed("RIGHT"):
		D_signal.emit();
