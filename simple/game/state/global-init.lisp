(defpackage {{name}}/game/state/global-init
  (:use :cl
        :ps-experiment
        :cl-ps-ecs
        :cl-web-2d-game))
(in-package :{{name}}/game/state/global-init)

(def-game-state global-init ()
  :start-process
  (state-lambda ()
    (load-font "js/")
    t)
  :process
  (state-lambda ()
    (make-state :main))
  :end-process
  (state-lambda ()
    t))
