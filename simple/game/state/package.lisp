(defpackage {{name}}/game/state/package
  (:use :cl
        :ps-experiment
        ;; The followings are required to make package-inferred-system to recognize them
        :{{name}}/game/state/global-init
        :{{name}}/game/state/main)
  (:export :init-{{name}}-state)
  (:import-from :cl-web-2d-game
                :init-game-state
                :make-state))
(in-package :{{name}}/game/state/package)

(defun.ps+ init-{{name}}-state ()
  (init-game-state (make-state :global-init)))
