extends ProjectionStrategy

class_name Perspective5DProjection

# Distance of 4D camera to XYZ world along the w axis.
@export var w_distance := 2.0 
# Distance of 5D camera to XYZW world along the V axis.
@export var v_distance := 2.0

func project(shape: Array) -> Array:
	assert(shape.size() > 0, "Empty shape passed to 5D projection.")
	assert(typeof(shape[0]) == TYPE_ARRAY && shape[0].size()==5, "Passed shape to a 5D projector does not consist of 5D arrays.")
	
	var projected_4d_shape = []
	var projected = []
	
	for point in shape:
		var v_factor = 1.0 / (v_distance - point[4])
		projected_4d_shape.append(Vector4(point[0] * v_factor, point[1] * v_factor, point[2] * v_factor, point[3] * v_factor))

	for point in projected_4d_shape:
		var w_factor = 1.0 / (w_distance - point.w)
		projected.append(Vector3(point.x * w_factor, point.y * w_factor, point.z * w_factor))
	return projected
