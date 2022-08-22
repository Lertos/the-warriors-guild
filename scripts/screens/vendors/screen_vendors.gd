extends Node

var scene_vendor_record = preload("res://scenes/record_templates/vendors/vendor_record.tscn")
var locked_texture = load('res://assets/icons/locked.png')


func _ready():
	load_vendors()


func load_vendors():
	for index in range(0, len(Global_Vendors.vendors)):
		var vendor = Global_Vendors.vendors[index]
		
		var inst_vendor_record = scene_vendor_record.instance()
		var single_vendor_screen = get_vendor_node(vendor['id'])
		
		get_node('parent_vbox/vendors/vbox').add_child(inst_vendor_record)
		
		inst_vendor_record.set_meta('vendor', vendor)
		inst_vendor_record.setup_record(self)
		
		single_vendor_screen.set_meta('vendor', vendor)
		single_vendor_screen.setup_screen(self)


func load_vendor_screen(vendor_id: String):
	get_vendor_node(vendor_id).setup_screen(self)
	
	get_node('parent_vbox/vendors').visible = false
	get_vendor_node(vendor_id).visible = true


func show_all_vendors(vendor_id: String):
	get_vendor_node(vendor_id).visible = false
	get_node('parent_vbox/vendors').visible = true
	

func get_vendor_node(vendor_id: String):
	return get_node('parent_vbox/' + vendor_id)
