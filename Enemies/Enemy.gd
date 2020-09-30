extends KinematicBody2D

export (int) var MAX_SPEED = 15

onready var stats = $EnemyStats

var motion = Vector2.ZERO

func _on_Hurtbox_hit(damage):
	stats.health -= damage

func _on_EnemyStats_enemy_died():
	queue_free()
