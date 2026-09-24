extends Node2D

@onready var white_screen = $"../../WhiteScreen"
@onready var black_screen = $"../../BlackScreen"

@onready var start_button = $StartButton
@onready var settings_button = $SettingsButton
@onready var credits_button = $CreditsButton
@onready var exit_button = $ExitButton

@onready var start_button_text = start_button.text
@onready var settings_button_text = settings_button.text
@onready var credits_button_text = credits_button.text
@onready var exit_button_text = exit_button.text

func _ready() -> void:
	start_button.text = "> " + start_button_text + " <"
	settings_button.text = "> " + settings_button_text + " <"
	credits_button.text = "> " + credits_button_text + " <"
	exit_button.text = "> " + exit_button_text + " <"

#region StartButton
func _on_start_button_mouse_entered() -> void:
	start_button.text = ">> " + start_button_text + " <<"

func _on_start_button_mouse_exited() -> void:
	start_button.text = "> " + start_button_text + " <"

func _on_start_button_button_down() -> void:
	start_button.text = ">>> " + start_button_text + " <<<"
	start_button.disabled = true
	settings_button.disabled = true
	credits_button.disabled = true
	exit_button.disabled = true

	var tween = create_tween()
	tween.tween_property(white_screen, "color:a", 1.0, 2.5)
	tween.tween_interval(1.0)
	tween.tween_property(black_screen, "color:a", 1.0, 0.5)
	await tween.finished

	# get_tree().change_scene_to_file("res://scenes/cutscene.tscn")
#endregion

#region SettingsButton
func _on_settings_button_mouse_entered() -> void:
	settings_button.text = ">> " + settings_button_text + " <<"

func _on_settings_button_mouse_exited() -> void:
	settings_button.text = "> " + settings_button_text + " <"

func _on_settings_button_button_down() -> void:
	settings_button.text = ">>> " + settings_button_text + " <<<"

	var tween = create_tween()
	tween.tween_property(white_screen, "color:a", 1.0, 2.5)
	tween.tween_interval(1.0)
	tween.tween_property(black_screen, "color:a", 1.0, 0.5)
	await tween.finished

	# get_tree().change_scene_to_file("res://scenes/settings.tscn")
#endregion

#region CreditsButton
func _on_credits_button_mouse_entered() -> void:
	credits_button.text = ">> " + credits_button_text + " <<"

func _on_credits_button_mouse_exited() -> void:
	credits_button.text = "> " + credits_button_text + " <"

func _on_credits_button_button_down() -> void:
	credits_button.text = ">>> " + credits_button_text + " <<<"

	var tween = create_tween()
	tween.tween_property(white_screen, "color:a", 1.0, 2.5)
	tween.tween_interval(1.0)
	tween.tween_property(black_screen, "color:a", 1.0, 0.5)
	await tween.finished

	# get_tree().change_scene_to_file("res://scenes/credits.tscn")
#endregion

#region ExitButton
func _on_exit_button_mouse_entered() -> void:
	exit_button.text = ">> " + exit_button_text + " <<"

func _on_exit_button_mouse_exited() -> void:
	exit_button.text = "> " + exit_button_text + " <"

func _on_exit_button_button_down() -> void:
	exit_button.text = ">>> " + exit_button_text + " <<<"

	var tween = create_tween()
	tween.tween_property(white_screen, "color:a", 1.0, 2.5)
	tween.tween_interval(1.0)
	tween.tween_property(black_screen, "color:a", 1.0, 0.5)
	await tween.finished

	get_tree().quit()
#endregion
