(use-package jdee
	     :ensure t)

(setq jdee-server-dir "/home/antongml/java_emacs_installs/jdee-server/target")

(eval-after-load 'jdee
                      '(global-set-key (kbd "C-b") 'jdee-complete))

