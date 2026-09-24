extends Node2D

@onready var black_screen = $BlackScreen
@onready var screen = $Screen

@onready var logo = $Screen/StartScreen/Logo
@onready var label = $Screen/StartScreen/Label

var anim_finished = false
signal key_pressed

func _ready() -> void:
	await get_tree().create_timer(1.0).timeout

	var tween = create_tween()
	tween.tween_property(black_screen, "color:a", 0.0, 0.25)

	var tween2 = create_tween().set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tween2.tween_property(screen, "position:y", 162.0, 1.0)

	await tween2.finished

	var tween3 = create_tween().set_trans(Tween.TRANS_SINE)
	tween3.tween_property(logo, "scale", Vector2(1.25, 1.25), 0.25)
	tween3.tween_property(logo, "scale", Vector2.ONE, 0.25)

	await tween3.finished
	anim_finished = true
	label.visible = true

	await key_pressed
	anim_finished = false

	var tween4 = create_tween().set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tween4.tween_property(screen, "position:y", 324.0, 1.0)

func _input(event: InputEvent) -> void:
	if event.is_pressed() and anim_finished:
		key_pressed.emit()
