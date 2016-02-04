(global-set-key (kbd "M-x") 'smex)	;replace the default command line

(global-set-key (kbd "M-/") 'hippie-expand)    ; replace debrev expansion algorithm
(global-set-key (kbd "M-;") 'comment-dwim-2)   ; replace the built in behavior of adding comment
(global-set-key (kbd "C-\\") 'er/expand-region) ; doesn't work within terminal
(global-set-key (kbd "C-s") 'swiper)		; replace default I-search capability with swiper
   
;; making window managing easier
(global-set-key (kbd "C-x <left>") 'uzumaki-cycle-to-prev-buffer)
(global-set-key (kbd "C-x <right>") 'uzumaki-cycle-to-next-buffer)
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows) ;replace the close-all-other-window behavior

;; toggle neotree display
(global-set-key (kbd "M-n") 'neotree-toggle)

;; use avy (the better ace-jump)
(global-set-key (kbd "C-:") 'avy-goto-char)

;; iedit mode -- instantly edit multipe instances of the same word
;; this keybinding only works in window mode
(global-set-key (kbd "C-;") 'iedit-mode)
