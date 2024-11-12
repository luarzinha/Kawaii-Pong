extends Node

var player_score := 0
var opponent_score := 0 

@onready var ponto_meu: Label = $"HBoxContainer/PONTO MEU"
@onready var ponto_dele: Label = $"HBoxContainer/PONTO DELE"
@onready var ball: Ball = $Ball
@onready var countdown_timer: Timer = $CountdownTimer
@onready var countdown_label: Label = $"Countdown label"
@onready var score_sound: AudioStreamPlayer = $ScoreSound
@onready var player_name1: Label = $PlayerName
@onready var player_name2: Label = $PlayerName2
@onready var fundo_pause: TextureRect = $fundo_pause
@onready var player_paddle_2: CharacterBody2D = $PlayerPaddle2
@onready var player_paddle: CharacterBody2D = $PlayerPaddle
@onready var timer: Timer = $Timer
@onready var temporizador: Label = $Temporizador

func _ready() -> void:
	$AudioStreamPlayer2D.play()
	GameManagement._fechou_menu()
	player_name1.text = GameManagement.player1_nome
	if GameManagement.CPU :
		player_name2.text = "CPU"
	else :
		player_name2.text = GameManagement.player2_nome
	player_paddle.modulate = GameManagement.color1
	player_paddle_2.modulate = GameManagement.color2
	

func _process(_delta: float) -> void:
	countdown_label.text = str(int(countdown_timer.time_left))
	temporizador.text = str(int(timer.time_left) - 1)
	if Input.is_action_just_pressed("Pausar") && get_tree().paused == false:
		fundo_pause.show()
		get_tree().paused = true
	if GameManagement.jogo_normal == true :
		if ponto_meu.text == GameManagement.score_maximo :
			GameManagement.player_won = 0
			get_tree().change_scene_to_file("res://Levels/gamer_over.tscn")
		if ponto_dele.text == GameManagement.score_maximo :
			GameManagement.player_won = 1
			get_tree().change_scene_to_file("res://Levels/gamer_over.tscn")
	else :
		if int(temporizador.text) == int("0") :
			if int(ponto_meu.text) > int(ponto_dele.text) :
				GameManagement.player_won = 0
				get_tree().change_scene_to_file("res://Levels/gamer_over.tscn")
			else :
				GameManagement.player_won = 1
				get_tree().change_scene_to_file("res://Levels/gamer_over.tscn")

func _on_wall_left_body_entered(body: Node2D) -> void:
	body.position = get_viewport().size / 2
	opponent_score += 1
	ponto_dele.text = str(opponent_score)
	
	ball.stop_moving()
	countdown_timer.start()
	countdown_label.show()
	score_sound.play()

func _on_wall_right_body_entered(body: Node2D) -> void:
	body.position = get_viewport().size / 2
	player_score += 1
	ponto_meu.text = str(player_score)
	
	ball.stop_moving()
	countdown_timer.start()
	countdown_label.show()
	score_sound.play()	

func _on_countdown_timer_timeout() -> void:
	ball.start_moving() 
	countdown_label.hide()
	if GameManagement.jogo_normal == false &&  GameManagement.temporizador == false:
		_temporizador()
		GameManagement.temporizador = true

func _on_botão_continue_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	fundo_pause.hide()
	get_tree().paused = false

func _on_botão_main_menu_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	get_tree().paused = false
	get_tree().change_scene_to_file("res://menuzão.tscn")

func _temporizador() -> void :
	temporizador.show()
	
	timer.start()
