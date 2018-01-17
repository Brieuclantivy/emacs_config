;; ----------------------------------
;;           EPITECH CONFIG
;; ----------------------------------

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")
(load "std.el")
(load "std_comment.el")
(setq make-backup-files nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auto-complete-c-headers yasnippet-snippets yasnippet auto-complete ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;start package.el
(require 'package)
;;MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.milkbox.net/packages/"))
;;init package.el
;;(package-initialize)
;;start auto-
(require 'auto-complete)
;;default config
(require 'auto-complete-config)
(ac-config-default)

;;start yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;init auto-complete-c-headers
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-source 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-redhat-linux/7/../../../../include/c++/7")
  )


;;call from c/c++ hooks
(add-hook 'c++-mode 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)
