extends Area3D

var bulletSpd = 15.0
var bulletRange = 20.0

var travelled_dis = 0.0

func _physics_process(delta):
	
	position += -transform.basis.z * bulletSpd * delta
	travelled_dis += bulletSpd * delta
	if travelled_dis > bulletRange:
		queue_free()
		

	
