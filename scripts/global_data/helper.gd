extends Node

func get_time_from_stamp(time_in_seconds: int):
	var hours = 0
	var minutes = 0
	var seconds = 0
	var remaining_time
	
	hours = time_in_seconds / 3600
	remaining_time = time_in_seconds - (hours * 3600)
	
	minutes = remaining_time / 60
	remaining_time = remaining_time - (minutes * 60)
	
	seconds = remaining_time
	
	if hours != 0:
		return str(hours) + ':%02d:%02d' % [minutes, seconds]
	elif minutes != 0:
		return '%02d:%02d' % [minutes, seconds]
	elif seconds != 0:
		return '%02d' % [seconds]
	
	
