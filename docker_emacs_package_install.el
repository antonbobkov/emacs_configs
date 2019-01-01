;; from http://fuqcool.github.io/2014/05/install-emacs-package-from-cmd/
;; run with emacs --script FILENAME

(require 'package)

; find package information from following archives
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
                         ;; ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
(package-refresh-contents) ; needs in order to run

(mapcar (lambda (package)
          ; install package if not already installed
          (unless (package-installed-p package)
            (package-install package)))

        ; list of packages to be installed
        '(company use-package))
