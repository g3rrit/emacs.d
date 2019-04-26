;; tab settings
(electric-indent-mode 0) ; turn off all autoindentation
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq default-tab-width 2)
(setq-default tab-always-indent t)
;(defun tab-insert-whitespace ()
;  "Insert two whitspace chars"
;  (interactive)
;  (insert "  "))
;(global-set-key (kbd "TAB") 'tab-insert-whitespace)
;(global-set-key (kbd "<tab>") 'tab-insert-whitespace)
;; c
(setq-default c-basic-offset 2)
;; rust
(setq rust-indent-offset 2)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'base-config)
;;; config ends here
