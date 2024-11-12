extends Control

@onready var color_rect: ColorRect = $HBoxContainer/VBoxContainer2/VBoxContainer/HBoxContainer/BoxContainer/ColorRect
@onready var score: LineEdit = $VBoxContainer/Menu/LineEdit

func _process(delta: float) -> void:
	if GameManagement.color1 != color_rect.modulate :
		color_rect.modulate = GameManagement.color1

func _on_dificuldade_pressed() -> void:
	if score.text != "" :
		GameManagement.score_maximo = score.text
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	get_tree().change_scene_to_file("res://dificuldade.tscn")


func _on_modo_de_jogo_pressed() -> void:
	if GameManagement.jogo_normal :
		$VBoxContainer/Menu/Label.text = String("Cronômetro")
		GameManagement.jogo_normal = false
		return
	if GameManagement.jogo_normal == false :
		$VBoxContainer/Menu/Label.text = String("Normal")
		GameManagement.jogo_normal = true
