local resp = string.format(
    "method=%s \npath=%s \nua=%s \nqs=%s \nraw_query=%s\n",
    get_request_method(),
    get_request_path("User-Agent"),
    get_request_header("User-Agent"),
    get_request_query("qs"),
    get_request_raw_query()
    )

sleep(1000000) -- sleep 1s

set_response_header("x-abc", "xyz")
set_response_status(206)
set_response_body(resp)
