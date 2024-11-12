extends Node

var dificuldade:= 0
var CPU := true
var color1 := Color(1, 1, 1)
var color2 := Color(1, 1, 1)
var player1_nome := "Player 1"
var player2_nome := "Player 2"
var score_maximo := "5"
var player_won := 2
var jogo_normal := true
var temporizador := false

func _ready() -> void:
	GlobalAudioStreamPlayer._musica_menu()
	
func _fechou_menu():
	GlobalAudioStreamPlayer._parar_musica()
	GlobalAudioStreamPlayer._musica_nivel()
	
func _fechou_nivel():
	GlobalAudioStreamPlayer._parar_musica()
	GlobalAudioStreamPlayer._musica_menu()
