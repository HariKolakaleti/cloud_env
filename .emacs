
; window size
(add-to-list 'default-frame-alist '(height . 32))
(add-to-list 'default-frame-alist '(width . 108))

; set custom font
(custom-set-faces
 '(default ((t (:height 140 :family "Monaco"))))
 )

; key bindings
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-x q") 'query-replace-regexp)
(global-set-key (kbd "C-c o") 'find-file-at-point)

; load octave/matlab setting
(load-file "~/emacs-lisp/octave-mode.el")


; auto file modes
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

; force emacs to look in current dir by default
(set-variable 'dirtrack-list '("^.*[^ ]+:\\(.*\\)]" 1 nil))
(dirtrack-mode 1)
