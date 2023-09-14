;;;; -*- lisp; coding: utf-8; lexical-binding: t; -*-
;;;; build-docs.lisp

"
Load this file to build the project documentation. Requires 'coo'
<https://github.com/fisxoj/coo> from QuickLisp. This does the same
thing as the 'make docs' Makefile command.
"

(load "{{ cookiecutter.project_name}}.asd")

(ql:quickload :coo)
(ql:quickload :{{cookiecutter.project_name}})
(coo:document-system :{{cookiecutter.project_name}})

(uiop:quit 0)
