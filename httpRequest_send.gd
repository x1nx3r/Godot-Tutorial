extends Node
class_name Http_send_request

func _ready():
	# Create an HTTP request node and connect its completion signal.
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.request_completed.connect(self._http_request_completed)

	# Note: Don't make simultaneous requests using a single HTTPRequest node.
	var body = JSON.new().stringify({
		"name": globals.uName,
		"score": globals.uScore
	})

	var header = ["Content-Type: application/json"]
	var error = http_request.request("http://localhost/httpRequest/credentials-post-handler.php", header, HTTPClient.METHOD_POST, body)
	if error != OK:
		push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
	var json = body.get_string_from_utf8()
	print("Response: ", response_code)
