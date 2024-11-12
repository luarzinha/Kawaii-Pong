extends Control

@onready var player_won: Label = $TextureRect/VBoxContainer2/VBoxContainer/Label2

func _ready() -> void:
	GameManagement._fechou_nivel()
	GameManagement.temporizador = false
	GameManagement.jogo_normal = true
	if GameManagement.player_won == 0 :
		player_won.text = GameManagement.player1_nome + " ganhou!"
	else :
		player_won.text = GameManagement.player2_nome + " ganhou!"

func _on_button_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	get_tree().change_scene_to_file("res://menuzão.tscn")
	
