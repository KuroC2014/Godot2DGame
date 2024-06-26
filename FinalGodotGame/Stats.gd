class_name Stats

extends Node

signal health_changed

@export var max_health: int = 5

@onready var health: int = max_health:
	set(v):
		v = clampi(v,0,max_health)
		if health == v:
			return
		health = v
		print("signal released")
		health_changed.emit()
