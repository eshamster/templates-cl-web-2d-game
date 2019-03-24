(defpackage {{name}}/game/state/main
  (:use :cl
        :ps-experiment
        :cl-ps-ecs
        :cl-web-2d-game))
(in-package :{{name}}/game/state/main)

(def-game-state main ((parent (make-ecs-entity)))
  :start-process
  (state-lambda (parent)
    (stack-default-ecs-entity-parent parent)
    t)
  :process
  (state-lambda ()
    nil)
  :end-process
  (state-lambda (parent)
    (let ((got-parent (pop-default-ecs-entity-parent)))
      (assert (eq parent got-parent)))
    (delete-ecs-entity parent)
    t))
