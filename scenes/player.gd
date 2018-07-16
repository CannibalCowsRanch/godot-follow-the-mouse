extends RigidBody2D

onready var track = get_parent().get_node('playertrack')


func _integrate_forces(state):
	var thrust = track.position - self.position
	state.set_linear_velocity(thrust * 5)