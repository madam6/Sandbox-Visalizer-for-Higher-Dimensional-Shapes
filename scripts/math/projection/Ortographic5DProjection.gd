extends ProjectionStrategy

class_name Orthographic5DProjection

func project(shape : Array) -> Array:
	assert(shape.size() > 0, "Empty shape passed to 5D projection.")
	assert(typeof(shape[0]) == TYPE_ARRAY && shape[0].size()==5, "Passed shape to a 5D projector does not consist of 5D arrays.")
	
	var projected_shape = []
	
	for point in shape:
		projected_shape.append(Vector3(point.x, point.y, point.z))
	
	return projected_shape
