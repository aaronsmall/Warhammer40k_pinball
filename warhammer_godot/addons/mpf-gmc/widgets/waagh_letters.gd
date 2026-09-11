class_name WaaghLettersWidget
extends MPFWidget

const DIM_ALPHA := 0.2
const LIT_ALPHA := 1.0

func action_update(settings: Dictionary, kwargs: Dictionary = {}) -> void:
	super(settings, kwargs)

	if settings.get("reset", false):
		_reset_letters()
		return

	var letter: String = str(settings.get("letter", "")).to_upper()
	if letter in ["W", "A1", "A2", "G", "H"]:
		_set_letter(letter, LIT_ALPHA)

func _ready() -> void:
	_reset_letters()

func _reset_letters() -> void:
	for letter in ["W", "A1", "A2", "G", "H"]:
		_set_letter(letter, DIM_ALPHA)

func _set_letter(letter: String, alpha: float) -> void:
	var label := get_node_or_null(letter) as Label
	if label:
		var color := label.modulate
		color.a = alpha
		label.modulate = color
