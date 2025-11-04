extends Node

class_name IRotator

static func verify_instance(rotator : IRotator) -> void:
	if not ("supported_planes" in rotator):
		push_error(str(rotator) + " must define supported_planes")

@warning_ignore("unused_parameter")
static func rotate_xy(point, angle):
	assert(false, "rotate_xy must be implemented")
	
@warning_ignore("unused_parameter")
static func rotate_xz(point, angle):
	assert(false, "rotate_xz must be implemented")
	
@warning_ignore("unused_parameter")
static func rotate_yz(point, angle):
	assert(false, "rotate_yz must be implemented")
	
	
@warning_ignore("unused_parameter")
static func _perform_rotation(point, matrix):
	assert(false, "_perform_rotation must be implemented")
	

@warning_ignore("unused_parameter")
static func rotate_shape(shape: Array, angle: float, plane: Enums.PLANES):
	assert(false, "rotate_shape must be implemented")
