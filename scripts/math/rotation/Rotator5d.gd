extends IRotator

class_name Rotator5D

static var supported_planes = [Enums.PLANES.XY, Enums.PLANES.XZ, Enums.PLANES.YZ, Enums.PLANES.XW, Enums.PLANES.YW, Enums.PLANES.ZW]

static func rotate_shape(shape: Array, angle: float, plane: Enums.PLANES):
	assert(typeof(shape[0]) == TYPE_VECTOR4, "Passed shape to Rotator4D does not consist of Vector4 points.")
	
	assert(plane in supported_planes, "Passed plane to Rotator4D is not in the list of supported planes.")
	
	for i in range(shape.size()):
		var vertex = shape[i]
		
		if plane == Enums.PLANES.XY:
			shape[i] = rotate_xy(vertex, angle)
		elif plane == Enums.PLANES.XZ:
			shape[i] = rotate_xz(vertex, angle)
		elif plane == Enums.PLANES.YZ:
			shape[i] = rotate_yz(vertex, angle)
		elif plane == Enums.PLANES.XW:
			shape[i] = rotate_xw(vertex, angle)
		elif plane == Enums.PLANES.YW:
			shape[i] = rotate_yz(vertex, angle)
		else:
			shape[i] = rotate_zw(vertex, angle)

static func _perform_rotation(point: Vector4, rotation_matrix : Array) -> Vector4:
	var vec = VectorHelper.convert_vec4_to_array(point)
	var result = MatrixHelper.multiply_matrix_vector(rotation_matrix, vec)
	return VectorHelper.convert_array_to_vector4(result)


static func rotate_xy(point: Vector4, angle: float) -> Vector4:
	var rot = [
		[cos(angle), -sin(angle), 0, 0],
		[sin(angle),  cos(angle), 0, 0],
		[0, 0, 1, 0],
		[0, 0, 0, 1]
	]

	return _perform_rotation(point, rot)


static func rotate_xz(point: Vector4, angle: float) -> Vector4:
	var rot = [
		[cos(angle), 0, -sin(angle), 0],
		[0, 1, 0, 0],
		[sin(angle), 0, cos(angle),  0],
		[0, 0, 0, 1]
	]

	return _perform_rotation(point, rot)


static func rotate_yz(point: Vector4, angle: float) -> Vector4:
	var rot = [
		[1, 0, 0, 0],
		[0, cos(angle), -sin(angle), 0],
		[0, sin(angle), cos(angle),  0],
		[0, 0, 0, 1]
	]
	
	return _perform_rotation(point, rot)
	

static func rotate_xw(point: Vector4, angle: float) -> Vector4:
	var rot = [
		[cos(angle), 0, 0, -sin(angle)],
		[0, 1, 0, 0],
		[0, 0, 1, 0],
		[sin(angle), 0, 0, cos(angle)]
	]
	
	return _perform_rotation(point, rot)
	

static func rotate_yw(point: Vector4, angle: float) -> Vector4:
	var rot = [
		[1, 0, 0, 0],
		[0, cos(angle), 0, -sin(angle)],
		[0, 0, 1, 0],
		[0, sin(angle), 0, cos(angle)]
	]
	
	return _perform_rotation(point, rot)
	
	
static func rotate_zw(point: Vector4, angle: float) -> Vector4:
	var rot = [
		[1, 0, 0, 0],
		[0, 1, 0, 0],
		[0, 0, cos(angle), -sin(angle)],
		[0, 0, sin(angle), cos(angle)]
	]
	
	return _perform_rotation(point, rot)
