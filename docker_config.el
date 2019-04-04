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

;; auto mouse in terminal mode

(xterm-mouse-mode 1)

;; hi
