extends Node

var scene_vendor_record = preload("res://scenes/record_templates/vendors/vendor_record.tscn")
var locked_texture = load('res://assets/icons/locked.png')


func _ready():
	load_vendors()


func load_vendors():
	for index in range(0, len(Global_Vendors.vendors)):
		var vendor = Global_Vendors.vendors[index]
		
		var inst_vendor_record = scene_vendor_record.instance()
		
		inst_vendor_record.set_meta('vendor', vendor)
		inst_vendor_record.update_record()

		get_node('parent_vbox/vendors/vbox').add_child(inst_vendor_record)
