extends GridContainer

@onready var button: Button = $Button
@onready var button_2: Button = $Button2
@onready var button_3: Button = $Button3
@onready var button_4: Button = $Button4
@onready var button_5: Button = $Button5
@onready var button_6: Button = $Button6

func _on_button_pressed() -> void:
	GameManagement.color1 = button.modulate

func _on_button_2_pressed() -> void:
	GameManagement.color1 = button_2.modulate

func _on_button_3_pressed() -> void:
	GameManagement.color1 = button_3.modulate

func _on_button_4_pressed() -> void:
	GameManagement.color1 = button_4.modulate

func _on_button_5_pressed() -> void:
	GameManagement.color1 = button_5.modulate

func _on_button_6_pressed() -> void:
	GameManagement.color1 = button_6.modulate
