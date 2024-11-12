extends CharacterBody2D
@export var speed := 400.0 
var direction := 0.0 

func _process(delta: float) -> void:
	velocity.y = direction * speed 
	move_and_collide(velocity * delta)

func _unhandled_input(_event: InputEvent) -> void:
	direction = Input.get_axis("jogador 1 up", "Jogador 1 down")
	
