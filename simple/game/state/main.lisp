(defpackage {{name}}/game/state/main
  (:use :cl
        :ps-experiment
        :cl-ps-ecs
        :cl-web-2d-game))
(in-package :{{name}}/game/state/main)

(def-game-state main ((parent (make-ecs-entity)))
  :start-process
  (state-lambda (parent)
    (with-ecs-entity-parent (parent)
      )
    t)
  :process
  (state-lambda (parent)
    (with-ecs-entity-parent (parent)
      )
    nil)
  :end-process
  (state-lambda (parent)
    (delete-ecs-entity parent)
    t))
