;;; Enable package management
(require 'package)
(add-to-list 'package-archives
 	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;; theme
(load-theme 'deeper-blue t)
(tool-bar-mode -1)			; for window version

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0a1a7f64f8785ffbf5b5fbe8bca1ee1d9e1fb5e505ad9a0f184499fe6747c1af" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; autosave setting
(setq
 backup-by-copying t          ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.autosaves"))    ; put temp file in ~/.autosave
 delete-old-versions t        ; overwrite old version
 kept-new-versions 6
 kept-old-versions 2
 version-control t)           ; use versioned backups

;; project and window management setting
(load "~/.emacs.d/setup-project.el")

;; editor setting
(load "~/.emacs.d/setup-editor.el")

;; my custom function
(load "~/.emacs.d/setup-custom.el")

;;; keybinding
(load "~/.emacs.d/setup-keybinding.el")
