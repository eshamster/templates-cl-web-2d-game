(defpackage {{name}}/game/{{name}}-state
  (:use :cl
        :ps-experiment
        :cl-ps-ecs
        :cl-web-2d-game)
  (:export :make-game-start-state))
(in-package :{{name}}/game/{{name}}-state)

(defstruct.ps+
    (game-main-state
     (:include game-state
               (start-process
                (lambda (_this)
                  (declare (ignore _this))
                  t))
               (process
                (lambda (_this)
                  (declare (ignore _this))
                  nil)))))

(defstruct.ps+
    (game-start-state
     (:include game-state
               (start-process
                (lambda (_this)
                  ;; TODO: Prevent multiple load
                  (load-font "js/")
                  t))
               (process
                (lambda (_this)
                  (declare (ignore _this))
                  (make-game-main-state)))
               (end-process
                (lambda (_this)
                  t)))))
