extends TextureRect
@onready var botão_continue: Button = $"VBoxContainer/botão_continue"
@onready var botão_main_menu: Button = $"VBoxContainer/botão_main_menu"

var x = 150
var y = 30.5

func _ready() -> void:
	var buttons = [botão_continue, botão_main_menu]
	for button in buttons:
		button.pivot_offset.x = x	
		button.pivot_offset.y = y
