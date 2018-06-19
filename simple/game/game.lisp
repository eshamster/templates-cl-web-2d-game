(defpackage {{name}}/game/game
  (:use :cl
        :ps-experiment
        :cl-ps-ecs
        :cl-web-2d-game)
  (:export :init-func
           :update-func)
  (:import-from :{{name}}/game/state/package
                :init-{{name}}-state))
(in-package :{{name}}/game/game)

(defun.ps+ init-func (scene)
  (init-{{name}}-state)
  (init-default-systems :scene scene)
  (init-input))

(defun.ps+ update-func ()
  (process-game-state))
