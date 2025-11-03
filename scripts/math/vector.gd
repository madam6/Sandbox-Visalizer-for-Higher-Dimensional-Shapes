extends Node

class_name VectorHelper

static func magnitude(vector: Array) -> float:
	var sum = 0.0
	
	for coord in vector:
		sum += coord * coord
	
	return sqrt(sum)
	

static func normalize(vector: Array) -> Array:
	var mag = magnitude(vector)
	var result = []
	
	for coord in vector:
		result.append(coord / mag)
		
	return result
	

static func convertVec4toArray(vector: Vector4) -> Array:
	return [vector.x, vector.y, vector.z, vector.w]
	
static func convertArrayToVector4(vector: Array) -> Vector4:
	return Vector4(vector[0], vector[1], vector[2], vector[3])	
	
static func convertVec3toArray(vector: Vector3) -> Array:
	return [vector.x, vector.y, vector.z]
	
static func convertArrayToVector3(vector: Array) -> Vector3:
	return Vector3(vector[0], vector[1], vector[2])

static func convertVec2toArray(vector: Vector2) -> Array:
	return [vector.x, vector.y]
	
static func convertArrayToVector2(vector: Array) -> Vector2:
	return Vector2(vector[0], vector[1])
