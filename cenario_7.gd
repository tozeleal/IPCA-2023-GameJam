extends Node2D

func _ready():
	if SceneManager.cen7Unlock == false:
		$Cenario7/StaticBody2D/CollisionPolygon2D2.disabled = true
		$Cenario7/StaticBody2D/CollisionPolygon2D3.disabled = true
		$Cenario7/StaticBody2D/CollisionPolygon2D4.disabled = true
		
	else 
		$Cenario7/StaticBody2D/CollisionPolygon2D2.disabled = false
		$Cenario7/StaticBody2D/CollisionPolygon2D3.disabled = false
		$Cenario7/StaticBody2D/CollisionPolygon2D4.disabled = false
		
