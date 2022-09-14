local path = get_request_path()
set_response_status(403)
set_response_body(path)