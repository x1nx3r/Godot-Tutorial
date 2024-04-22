extends AudioStreamPlayer

func _ready():
	# Load the music
	var music = load("res://audio/bgmusic.mp3")

	# Set the music to loop
	stream = music

	# Start playing the music
	play()
