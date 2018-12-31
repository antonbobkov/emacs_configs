;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/remote_sync/emacs_config/")

(setq use-package-always-ensure t)

(load "python_config")
(load "java_config")

(use-package company)
;; (use-package irony)
;; (use-package company-irony)

;; (eval-after-load 'company
;;     '(add-to-list 'company-backends 'company-irony))

;; ;; irony-mode
;; (add-hook 'c++-mode-hook 'irony-mode)
;; (add-hook 'c-mode-hook 'irony-mode)
;; (add-hook 'objc-mode-hook 'irony-mode)

;; (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(use-package flycheck
	     :ensure t
	     :init (global-flycheck-mode))

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))


;; turn on line numbers
(global-linum-mode t)

;; test keybind
(defun my-insert-snippet ()
  "this is a comment"
  (interactive)
  (insert "py")
)

 (global-set-key (kbd "M-5") 'my-insert-snippet)



