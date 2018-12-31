(setq load-path (cons "/usr/lib/erlang/lib/tools-2.11.2/emacs" load-path))
(setq erlang-root-dir "/usr/lib/erlang/")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(setq erlang-man-root-dir "/usr/lib/erlang/man")
(require 'erlang-start)

;; (require 'flycheck)

;; (flycheck-define-checker erlang-otp
;;   "An Erlang syntax checker using the Erlang interpreter."
;;   :command ("erlc" "-o" temporary-directory "-Wall"
;; 	    "-I" "../include" "-I" "../../include"
;; 	    "-I" "../../../include" source)
;;   :error-patterns
;;   ((warning line-start (file-name) ":" line ": Warning:" (message) line-end)
;;    (error line-start (file-name) ":" line ": " (message) line-end)))

;; (add-hook 'erlang-mode-hook
;; 	  (lambda ()
;; 	    (flycheck-select-checker 'erlang-otp)
;; 	                            (flycheck-mode)))
