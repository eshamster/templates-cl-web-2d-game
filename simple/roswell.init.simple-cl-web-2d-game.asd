(DEFPACKAGE :ROSWELL.INIT.SIMPLE-CL-WEB-2D-GAME
  (:USE :CL))
(IN-PACKAGE :ROSWELL.INIT.SIMPLE-CL-WEB-2D-GAME)
(DEFVAR *PARAMS*
  '(:FILES
    ((:NAME "static/css/viewer.css" :METHOD "copy" :REWRITE
      "{{name}}/static/css/viewer.css")
     (:NAME "game/_name_-state.lisp" :METHOD "djula" :REWRITE
      "{{name}}/game/{{name}}-state.lisp")
     (:NAME "_name_.asd" :METHOD "djula" :REWRITE "{{name}}/{{name}}.asd")
     (:NAME "qlfile.lock" :METHOD "djula" :REWRITE "{{name}}/qlfile.lock")
     (:NAME "README.markdown" :METHOD "djula" :REWRITE
      "{{name}}/README.markdown")
     (:NAME ".gitignore" :METHOD "djula" :REWRITE "{{name}}/.gitignore")
     (:NAME "qlfile" :METHOD "djula" :REWRITE "{{name}}/qlfile")
     (:NAME "t/main.lisp" :METHOD "djula" :REWRITE
      "{{name}}/t/main.lisp")
     (:NAME "main.lisp" :METHOD "djula" :REWRITE
      "{{name}}/main.lisp")
     (:NAME "game/game.lisp" :METHOD "djula" :REWRITE
      "{{name}}/game/game.lisp")
     (:NAME "server.lisp" :METHOD "djula" :REWRITE
      "{{name}}/server.lisp"))))
(DEFUN SIMPLE-CL-WEB-2D-GAME (_ &REST R)
  (ASDF/OPERATE:LOAD-SYSTEM :ROSWELL.UTIL.TEMPLATE :VERBOSE NIL)
  (FUNCALL (READ-FROM-STRING "roswell.util.template:template-apply") _ R
           *PARAMS*))
