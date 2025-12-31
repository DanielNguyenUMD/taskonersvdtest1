extends Area3D

var bulletSpd = 30.0
var bulletRng = 40.0

var travelled_distance = 0.0

func _physics_process(delta):
	position +=  -transform.basis.z * bulletSpd * delta
	travelled_distance += bulletSpd * delta
	if travelled_distance > bulletRng:
		queue_free()
		
	
