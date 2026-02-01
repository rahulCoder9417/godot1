extends Node2D

var car_scene :PackedScene = preload("res://scene/car.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass






func _on_finish_area_body_entered(body: Node2D) -> void:
	pass


func _on_car_timer_timeout() -> void:
	var car =  car_scene.instantiate() as Area2D
	var pos_marker = $CarstartPostition.get_children().pick_random()
	car.position= pos_marker.position
	$Objects.add_child(car)
	car.connect("body_entered",go_to_title)
func go_to_title(body):
	pass
	
