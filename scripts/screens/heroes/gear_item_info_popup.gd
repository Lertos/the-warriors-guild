extends Popup

onready var abilities_label = get_node('margin/panel/vbox/abilities/vbox/abilities')
onready var modifiers_label = get_node('margin/panel/vbox/modifiers/vbox/modifiers')


func load_page(item_meta: Dictionary):
	if 'abilities' in item_meta:
		if item_meta['abilities'] != {}:
			ItemHelper.get_bbcode_ability_list(abilities_label, item_meta['abilities'])
			
	if 'modifier' in item_meta:
		if item_meta['modifier'] != '':
			ItemHelper.get_bbcode_modifier_list(modifiers_label, item_meta['modifier'])

	#TODO: Load bonuses from rarity?


func close_item_info_popup():
	print('dd')
	emit_signal('popup_hide')


func on_close_item_info_popup():
	print('dd')
	emit_signal('popup_hide')
