;; projectile + helm
;; (projectile-global-mode)
;; (setq projectile-completion-system 'helm
;;       projectile-switch-project-action 'helm-projectile)

;; display neotree by default, toggle by F8
(neotree)
(global-set-key [f8] 'neotree-toggle)
(add-hook 'hl-line-mode-hook (hl-line-mode))  ; highlight line in neotree buffer

;; uzumaki makes the window management easier
(uzumaki-minor-mode)

;; ido-mode displays more interactive stuff in C-x f and C-x k
(ido-mode)
