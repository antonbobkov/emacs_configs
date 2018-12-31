(load "use_package_initial_config")

(use-package benchmark-init
  :config
  (add-hook 'after-init-hook 'benchmark-init/deactivate)
  )

(load "python_config")
;;(load "java_config")

(use-package company)

(use-package flycheck
  :init (global-flycheck-mode)
  :config
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
)

;; turn on line numbers
(global-linum-mode t)

;; auto reload modified files
(global-auto-revert-mode 1)

(setq load-path (cons "/usr/lib/erlang/lib/tools-2.11.2/emacs" load-path))
(setq erlang-root-dir "/usr/lib/erlang/")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)
