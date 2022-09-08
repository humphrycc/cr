local r = get_request_header('Baidu-Cdn-Request-Id')
if r and r ~= '' then
    set_response_status(404)
    set_response_body("i am away")
else
    set_response_status(200)
    set_response_body("i am here")
end