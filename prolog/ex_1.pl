:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- http_handler(/, holala, []).
holala(_Request) :-
        format('Content-type: text/plain~n~n'),
        format('Hola Terricola~n').
server(Port) :-
        http_server(http_dispatch, [port(Port)]).