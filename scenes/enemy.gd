extends Node2D
export var health = 100
const MAX_VELOCITY = 2000

func _on_body_body_entered(body):
	# XXX: Ignoring weight
	health -= min(body.linear_velocity.length(), MAX_VELOCITY) / 3000 * 5
	print(health)
	