(in-package :asdf-user)

(defsystem
  "{{ cookiecutter.project_name }}-tests"
  :description "Test suite for the {{ cookiecutter.project_name }} system"
  :author "{{ cookiecutter.author }} <{{ cookiecutter.email }}>"
  :version "{{ cookiecutter.version }}"
  :homepage "https://github.com/{{cookiecutter.username}}/{{cookiecutter.project_name}}"
  :bug-tracker "https://github.com/{{cookiecutter.username}}/{{cookiecutter.project_name}}/issues"
  :source-control
  (
    :git
    "git@github.com/{{cookiecutter.username}}/{{cookiecutter.project_name}}.git"
    )
  
  :depends-on (
                :{{ cookiecutter.project_name }}
                :fiveam
                )
  :license "{{ cookiecutter.licence }}"
  :serial t
  :components (
                (:module "tests"
                  :serial t
                  :components (
                                (:file "packages")
                                (:file "test-{{ cookiecutter.project_name }}")
                                )
                  )
                (:static-file "LICENSE.md")
                (:static-file "CODE_OF_CONDUCT.md")
                (:static-file "README.md")
                )

  ;; The following would not return the right exit code on error, but still 0.
  ;; :perform (test-op (op _) (symbol-call :fiveam :run-all-tests))
  )
