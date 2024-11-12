extends Control

@onready var botão_signleplayer = $MarginContainer/VBoxContainer/Singleplayer
@onready var botão_multplayer = $MarginContainer/VBoxContainer/Multplayer
@onready var botão_quit = $MarginContainer/VBoxContainer/Quit

func mouse_interaction(button: Button, state: String) -> void:
	match state:
		"exited":
			button.modulate.a = 1.0
			
		"entered":
			button.modulate.a = 0.5

func _on_singleplayer_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	get_tree().change_scene_to_file("res://custom_single_player.tscn")
	GameManagement.CPU = true

func _on_multplayer_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	get_tree().change_scene_to_file("res://custom.tscn")
	GameManagement.CPU = false

func _on_quit_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	await get_tree().create_timer(1.0).timeout
	get_tree().quit()
