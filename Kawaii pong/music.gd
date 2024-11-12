extends Node

@onready var audio_ya: AudioStreamPlayer = $audio_ya


var music_volume = -20.0
var sfx_volume = -10.0

func audio_play(audio:String) -> void:
	audio_ya.volume_db = music_volume
	audio_ya.stream = ResourceLoader.load(audio)
	audio_ya.play()
