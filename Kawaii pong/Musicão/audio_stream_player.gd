extends AudioStreamPlayer

const musica = preload("res://pong_assets/no-copyright-music_-_Dango_-lofi-background-music.ogg")
const musica2 = preload("res://Musicão/Melancholic Walk [TubeRipper.cc].ogg")

func _tocar_musica(music: AudioStream, volume = -15) :
	if stream == music: 
		return 
	stream = music
	volume_db = volume 
	play()
	
func _musica_menu():
	_tocar_musica(musica)

func _musica_nivel():
	_tocar_musica(musica2)
	
func _parar_musica():
	stop()
