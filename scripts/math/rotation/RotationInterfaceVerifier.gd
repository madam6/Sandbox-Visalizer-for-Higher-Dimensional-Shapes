extends Node

func _ready():
	IRotator.verify_instance(Rotator3D.new())
	IRotator.verify_instance(Rotator4D.new())
