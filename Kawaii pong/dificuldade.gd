extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_facil_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	GameManagement.dificuldade = 2
	get_tree().change_scene_to_file("res://Levels/level.tscn")
	
	
func _on_medio_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	GameManagement.dificuldade = 2.5
	get_tree().change_scene_to_file("res://Levels/level.tscn")


func _on_dificil_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	GameManagement.dificuldade = 3
	get_tree().change_scene_to_file("res://Levels/level.tscn")
	

func _on_back_pressed() -> void:
	Music.audio_play("res://pong_assets/A-cant-click-here.ogg")
	get_tree().change_scene_to_file("res://custom_single_player.tscn")
