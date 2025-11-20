extends ShapeStrategy

class_name Cube5D

func create_shape() -> Array:
	var result := []

	for x in [-size, size]:
		for y in [-size, size]:
			for z in [-size, size]:
				for v in [-size, size]:
					for w in [-size, size]:
						result.append([x, y, z, v, w])

	return result
