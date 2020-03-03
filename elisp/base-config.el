;; tab settings
; (electric-indent-mode 0) ; turn off all autoindentation
(setq-default indent-tabs-mode t)
(setq tab-width 4)
(setq default-tab-width 4)
(setq-default tab-always-indent t)
;(setq tab-stop-list (number-sequence 2 120 2))
;(defun tab-insert-whitespace ()
;  "Insert two whitspace chars"
;  (interactive)
;  (insert "  "))
;(global-set-key (kbd "TAB") 'tab-insert-whitespace)
;(global-set-key (kbd "<tab>") 'tab-insert-whitespace)

;; c
(setq-default c-basic-offset 4)

;; rust
; (setq rust-indent-offset 2)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'base-config)
;;; config ends here
