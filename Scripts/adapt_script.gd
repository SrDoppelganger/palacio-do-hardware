extends Node

signal W_signal;
signal A_signal;
signal S_signal;
signal D_signal;



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("CONFIRM"):
		print("confirm");
	if Input.is_action_just_pressed("UP"):
		print("up");
		W_signal.emit();
	if Input.is_action_just_pressed("DOWN"):
		print("down");
		S_signal.emit();
	if Input.is_action_just_pressed("LEFT"):
		print("left");
		A_signal.emit();
	if Input.is_action_just_pressed("RIGHT"):
		print("right");
		D_signal.emit();
