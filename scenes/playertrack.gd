extends Position2D

export var show_debug_rect = false


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	get_viewport().warp_mouse(get_viewport().size / 2)
	$debugrect.visible = self.show_debug_rect
	


func _process(delta):
	self.position = get_viewport().get_mouse_position()
	
#	var x_axis = Input.get_joy_axis(0, 0)
#	var y_axis = Input.get_joy_axis(0, 1)
#
#	self.position += Vector2(x_axis, y_axis) * 2000 * delta