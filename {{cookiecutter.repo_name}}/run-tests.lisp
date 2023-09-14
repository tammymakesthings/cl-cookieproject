;;;; -*- lisp; coding: utf-8; lexical-binding: t; -*-
;;;; run-tests.lisp

"
Run the unit tests. Loading this file does the same thing as the
'make test' Makefile command. This project uses FiveAM for unit
testing.

See <https://github.com/lispci/fiveam> for details and
documentation.

Loading this file does the same thing as the 'make test'
Makefile target.
"

(load "{{ cookiecutter.project_name}}.asd")
(load "{{ cookiecutter.project_name}}-tests.asd")

(ql:quickload "{{ cookiecutter.project_name}}-tests")

(in-package :{{ cookiecutter.project_name}}-tests)

(uiop:quit (if (run-all-tests) 0 1))
