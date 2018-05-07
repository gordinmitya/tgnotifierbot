#!/usr/bin/env python3

def api(environ, start_response):
    """Simplest possible application object"""
    data = b'{"code": 200}\n'
    status = '200 OK'
    response_headers = [
        ('Content-type', 'application/json'),
        ('Content-Length', str(len(data)))
    ]
    start_response(status, response_headers)
    return iter([data])