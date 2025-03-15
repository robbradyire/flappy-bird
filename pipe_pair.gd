extends Node

@export var speed := 100
@export var gap := 100
var half_gap := gap / 2

func _ready() -> void:
	var midpoint := getPipeMidpoint()
	$Top.position = midpoint - Vector2(0, half_gap)
	$Bottom.position = midpoint + Vector2(0, half_gap)

func _process(delta: float) -> void:
	$Top.position.x -= speed * delta
	$Bottom.position.x -= speed * delta

func getPipeMidpoint() -> Vector2:
	$TubePath/TubeSpawnLocation.progress_ratio = randf()
	return $TubePath/TubeSpawnLocation.position
