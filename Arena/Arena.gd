extends Node 

onready var Screen_size = get_viewport().get_size_override()

func _ready() -> void:
	$Ball.position = Screen_size / 2

func _on_Wall_left_body_exited(body:Node) -> void:
	#Hacer que el jugador de la derecha adquiera un punto
	body_exited(body)

func _on_Wall_right_body_exited(body:Node) -> void:
	#Hacer que el jugador de la izquierda adquiera un punto
	body_exited(body)

func body_exited(body:Node) -> void:
	if body == $Ball:
		body.position = Screen_size / 2
	else:
		body.queue_free()
		