% Modulos necesarios para HTTPRequest
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
% Handler o manejadores
:- http_handler(root(.), holala, []).
:- http_handler(root(hola), hola, []).
% Funciones que sirven para mostrar mensajes
holala(_Request) :-
        format('Content-type: text/plain~n~n'),
        format('Hola Terricola~n').
hola(_Request):-
	format('Content-type: text/plain~n~n'),
        format('Colombia tierra querida~n').
% Predicado del servidor
server(Port) :-
        http_server(http_dispatch, [port(Port)]).