(defpackage {{name}}/game/state/global-init
  (:use :cl
        :ps-experiment
        :cl-ps-ecs
        :cl-web-2d-game))
(in-package :{{name}}/game/state/global-init)

(def-game-state global-init ()
  :start-process
  (lambda (_this)
    (load-font "js/")
    t)
  :process
  (lambda (_this)
    (declare (ignore _this))
    (make-state :main))
  :end-process
  (lambda (_this)
    t))
