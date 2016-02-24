;; anzu mode shows the number of matches for isearch
(anzu-mode)

;; Line number
(defun linum-on ()
  "Disable linum in large buffer"
  (if (or (minibufferp)
	  (> (buffer-size) 2000000))
      (message "Buffer is too large for displaying line number")
    (linum-mode 1)))
(add-hook 'prog-mode-hook 'linum-on)
(setq linum-format " %d ")
(hlinum-activate)      ; also highlight the current line number
(global-hl-todo-mode)

;; auto indent solution
(global-aggressive-indent-mode 1)

;; electric-pair mode: autocomplete (), [], {}
(electric-pair-mode)

;; WindMove mode -- use <Shift>-<up/down/left/right> to move between windows
(windmove-default-keybindings)

;; autocomplete
(global-auto-complete-mode 1)

;; iedit mode -- instantly edit multipe instances of the same word
;; this keybinding only works in window mode
;; (global-set-key (kbd "C-;") 'iedit-mode)

;; swiper
(setq ivy-display-style 'fancy)

;; Move-Text
(load "~/.emacs.d/my-scripts/move-lines/move-lines.el")

;;; Language specific setting

;;; C
(add-hook 'c-mode-hook
	  (lambda ()
	    (irony-mode)
	    (add-to-list 'company-backends 'company-irony)
	    (local-set-key (kbd "TAB") 'company-complete))
	  )
