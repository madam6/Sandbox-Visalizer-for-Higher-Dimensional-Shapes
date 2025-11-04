extends IRotator

class_name Rotator3D

static var supported_planes = [Enums.PLANES.XY, Enums.PLANES.XZ, Enums.PLANES.YZ]

static func rotate_shape(shape: Array, angle: float, plane: Enums.PLANES):
	assert(typeof(shape[0]) == TYPE_VECTOR3, "Passed shape to Rotator3D does not consist of Vector3 points.")
	
	assert(plane in supported_planes, "Passed plane to Rotator3D is not in the list of supported planes.")
	
	for i in range(shape.size()):
		var vertex = shape[i]
		
		if plane == Enums.PLANES.XY:
			shape[i] = rotate_xy(vertex, angle)
		elif plane == Enums.PLANES.XZ:
			shape[i] = rotate_xz(vertex, angle)
		else:
			shape[i] = rotate_yz(vertex, angle)
	

static func _perform_rotation(point: Vector3, rotation_matrix : Array) -> Vector3:
	var vec = VectorHelper.convert_vec3_to_array(point)
	var result = MatrixHelper.multiply_matrix_vector(rotation_matrix, vec)
	return VectorHelper.convert_array_to_vector3(result)

static func rotate_xy(point: Vector3, angle: float) -> Vector3:
	var rot = [
		[cos(angle), -sin(angle), 0.0],
		[sin(angle),  cos(angle), 0.0],
		[0.0,         0.0,        1.0]
	]

	return _perform_rotation(point, rot)


static func rotate_xz(point: Vector3, angle: float) -> Vector3:
	var rot = [
		[ cos(angle), 0.0, sin(angle)],
		[ 0.0,        1.0, 0.0],
		[-sin(angle), 0.0, cos(angle)]
	]

	return _perform_rotation(point, rot)


static func rotate_yz(point: Vector3, angle: float) -> Vector3:
	var rot = [
		[1.0, 0.0,        0.0       ],
		[0.0, cos(angle), -sin(angle)],
		[0.0, sin(angle),  cos(angle)]
	]

	return _perform_rotation(point, rot)
