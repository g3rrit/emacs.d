(electric-indent-mode 0) ; turn off all autoindentation
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq-default c-basic-offset 2)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'config)
;;; config ends here
