local r = get_request_header('Baidu-Cdn-Request-Id')
if r and r ~= '' then
    set_response_status(403)
    set_response_body("i am sick")
else
    set_response_status(200)
    set_response_body("i am fine")
end