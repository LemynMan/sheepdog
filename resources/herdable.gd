#Needs a stress level – the longer the dog is within their threat radius, 
#or the threat radius overlap, the higher the stress. If the sheep are 
#stressed they will run directly awa from the threat. For higher levels, 
#if the stress gets too high then at a threshold they can attack (rams, 
#billygoats etc). For low enough stress the animal goes into grazing 
#animation and stays pretty still.

extends CharacterBody2D

@export var speed = 400

var target = position

func _ready():
	target = $"../player".position
	
func _physics_process(delta):
	target = $"../player".position
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 10:
		move_and_slide()
