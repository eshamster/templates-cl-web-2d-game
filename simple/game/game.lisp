(defpackage {{name}}/game/game
  (:use :cl
        :ps-experiment
        :cl-ps-ecs
        :cl-web-2d-game)
  (:export :init-func
           :update-func)
  (:import-from :{{name}}/game/{{name}}-state
                :make-game-start-state))
(in-package :{{name}}/game/game)

(defun.ps+ init-func (scene)
  (init-game-state (make-game-start-state))
  (init-default-systems :scene scene)
  (init-input))

(defun.ps+ update-func ()
  (process-game-state))
