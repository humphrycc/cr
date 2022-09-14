if get_request_query('allow') == 'true' then
    set_response_status(200)
else
    set_response_status(403)
end