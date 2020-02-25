extends Node2D

var DisplayValue = 0

var save_path = "res://save-file.cfg"
var config = ConfigFile.new()
var load_response = config.load(save_path)

func _ready():
	pass 

func saveValue(section, key):
	config.set_value(section, key, DisplayValue)
	config.save(save_path)
	
func loadValue(section, key):
	DisplayValue = config.get_value(section, key, DisplayValue)
