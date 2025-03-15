extends Area2D

# TODO: also implement some kinda angular "gravity" like in real Flappy B

@export var flap_strength = -2.5
const GRAVITY := 9.8 * 0.5
var velocity := 0.0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	velocity += GRAVITY * delta
	position.y += velocity # clamped to terminal velocity of birb???
	
	if Input.is_action_just_pressed("flap"):
		velocity = flap_strength


func _on_area_entered(area: Area2D) -> void:
	$AnimatedSprite2D.animation = "hit"
	print("Entered!")
