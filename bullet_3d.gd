extends Area3D

var bulletSpd = 55.0
var range = 40.0

var travelled_dis = 0.0

func _physics_process(delta):
	
	position += -transform.basis.z * bulletSpd * delta
	travelled_dis += bulletSpd * delta
	if travelled_dis > range:
		queue_free()
		
		
