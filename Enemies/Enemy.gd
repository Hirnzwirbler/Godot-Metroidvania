extends KinematicBody2D

const EnemyDeathEffect = preload("res://Effects/EnemyDeathEffect.tscn")

export (int) var MAX_SPEED = 15

onready var stats = $EnemyStats

var motion = Vector2.ZERO

func _on_Hurtbox_hit(damage):
	stats.health -= damage

func _on_EnemyStats_enemy_died():
	Utils.instance_scene_on_main(EnemyDeathEffect, global_position)	
	queue_free()
