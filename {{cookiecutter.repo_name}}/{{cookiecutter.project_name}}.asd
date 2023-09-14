(in-package :asdf-user)

(defsystem
  "{{ cookiecutter.project_name }}"
  :author "{{ cookiecutter.author }} <{{ cookiecutter.email }}>"
  :version "{{ cookiecutter.version }}"
  :license "{{ cookiecutter.licence }}"
  :description "{{ cookiecutter.description }}"
  :homepage "https://github.com/{{cookiecutter.username}}/{{cookiecutter.project_name}}"
  :bug-tracker "https://github.com/{{cookiecutter.username}}/{{cookiecutter.project_name}}/issues"
  :source-control
  (
    :git
    "git@github.com/{{cookiecutter.username}}/{{cookiecutter.project_name}}.git"
    )

  ;; Dependencies.
  :depends-on (
                )

  ;; Project stucture.
  :serial t
  :components (
                (:module "src"
                  :serial t
                  :components (
                                (:file "packages")
                                (:file "{{ cookiecutter.project_name }}")
                                )
                  )
                (:static-file "LICENSE.md")
                (:static-file "CODE_OF_CONDUCT.md")
                (:static-file "README.md")
                )

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "{{ cookiecutter.project_name }}"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "{{ cookiecutter.project_name}}:main"
  )
