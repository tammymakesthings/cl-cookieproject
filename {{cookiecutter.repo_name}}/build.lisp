;;;; -*- lisp; coding: utf-8; lexical-binding: t; -*-
;;;; build.lisp

"
Load this file to build the project executable. This does the same
thing as the 'make build' Makefile command.
"

(load "{{ cookiecutter.project_name}}.asd")

(ql:quickload :{{ cookiecutter.project_name }})
(asdf:make :{{ cookiecutter.project_name }})

(uiop:quit 0)
