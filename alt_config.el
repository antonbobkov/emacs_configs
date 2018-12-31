(load "use_package_initial_config")

;; (use-package benchmark-init
;;   :config
;;   (add-hook 'after-init-hook 'benchmark-init/deactivate)
;;   )

;; (load "python_config")
(load "erlang_config")
;; (load "java_config")

(use-package company
  :init (global-company-mode)
)

;; (use-package flycheck
;;   :init (global-flycheck-mode)
;;   ;; :config
;;   ;; (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
;; )

;; turn on line numbers
(global-linum-mode t)

;; auto reload modified files
(global-auto-revert-mode 1)

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

;; hi
