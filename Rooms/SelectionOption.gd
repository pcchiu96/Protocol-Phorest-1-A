extends OptionButton

export (String) var selectionString

func _ready():
	pass # Replace with function body.

func _pressed():
	get_parent().get_parent().optionSelect(selectionString)
