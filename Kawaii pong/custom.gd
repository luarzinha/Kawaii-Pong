extends Control

@onready var color_rect1: ColorRect = $HBoxContainer/VBoxContainer2/VBoxContainer/HBoxContainer/BoxContainer/ColorRect
@onready var color_rect2: ColorRect = $HBoxContainer2/VBoxContainer2/VBoxContainer/HBoxContainer/BoxContainer/ColorRect
@onready var line_edit2: LineEdit = $HBoxContainer2/VBoxContainer2/VBoxContainer/LineEdit
@onready var line_edit1: LineEdit = $HBoxContainer/VBoxContainer2/VBoxContainer/LineEdit
@onready var score: LineEdit = $VBoxContainer/Menu/LineEdit

func _process(delta: float) -> void:
	if color_rect1.modulate != GameManagement.color1 :
		color_rect1.modulate = GameManagement.color1
	if color_rect2.modulate != GameManagement.color2 :
		color_rect2.modulate = GameManagement.color2


func _on_button_pressed() -> void:
	if score.text != "" :
		GameManagement.score_maximo = score.text
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	if line_edit1.text != "" :
		GameManagement.player1_nome = line_edit1.text
	if line_edit2.text != "" :
		GameManagement.player2_nome = line_edit2.text
	get_tree().change_scene_to_file("res://Levels/level.tscn")


func _on_normal_pressed() -> void:
	if GameManagement.jogo_normal :
		$VBoxContainer/Menu/Label.text = String("Cronômetro")
		GameManagement.jogo_normal = false
		return
	if GameManagement.jogo_normal == false :
		$VBoxContainer/Menu/Label.text = String("Normal")
		GameManagement.jogo_normal = true
