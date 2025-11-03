extends Node


func rotate_xy(point: Vector3, angle : float):
	return Vector3(
		point.x * cos(angle) - point.y * sin(angle),
		point.x * sin(angle) + point.y * cos(angle),
		point.z
	)

func rotate_xz(point: Vector3, angle: float) -> Vector3:
	return Vector3(
		point.x * cos(angle) + point.z * sin(angle),
		point.y,
		-point.x * sin(angle) + point.z * cos(angle)
	)
	
func rotate_yz(point: Vector3, angle: float) -> Vector3:
	return Vector3(
		point.x,
		point.y * cos(angle) - point.z * sin(angle),
		point.y * sin(angle) + point.z * cos(angle)
	)
