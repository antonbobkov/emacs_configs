;; (setq load-path (cons "/usr/lib/erlang/lib/tools-2.11.2/emacs" load-path))
;; (setq erlang-root-dir "/usr/lib/erlang/")
;; (setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
;; (setq erlang-man-root-dir "/usr/lib/erlang/man")
;; (require 'erlang-start)

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

(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
        If no region is selected and current line is not blank and we are not at the end of the line,
        then comment current line.
        Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))

(global-set-key "\M-;" 'comment-dwim-line)

(fset 'my-comment-enter
      (lambda (&optional arg) "Keyboard macro." (interactive "p")
	(kmacro-exec-ring-item (quote (";OHOCOCOC" 0 "%d")) arg))
      )

(global-set-key (kbd "<C-return>") 'my-comment-enter)
