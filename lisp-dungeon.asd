(defsystem "lisp-dungeon"
  :version "0.0.1"
  :author "Ysgard"
  :license "MIT"
  :depends-on (#:alexandria
               
               #:cl-liballegro
               #:cl-liballegro-nuklear
               
               #:livesupport)
  :serial t
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "main"))))
  :description "Doing https://gitlab.com/lockie/cl-fast-ecs/-/wikis/tutorial-2"
  :defsystem-depends-on (#:deploy)
  :build-operation "deploy-op"
  :build-pathname #P"lisp-dungeon"
  :entry-point "lisp-dungeon:main")
