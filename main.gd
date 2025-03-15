extends Node

@export var pipes_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func start_game() -> void:
	$Player.position = $StartPosition.position
	

func _on_pipe_timer_timeout() -> void:
	var pipe = pipes_scene.instantiate()
	add_child(pipe)
 
