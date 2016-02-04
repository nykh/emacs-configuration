(defun cheat ()
  "A short cut to call up the emacs cheat sheet file .emacs.d/cheatsheet"
  (interactive) ; to set this as a command
  (find-file "~/.emacs.d/cheatsheet")
  (read-only-mode))

(defun modify-emacs-setting ()
  "Dired emacs setting in neotree and open the init.el file"
  (interactive)				; set this as a command
  (neotree-dir "~/.emacs.d/")
  (find-file "~/.emacs.d/init.el"))
