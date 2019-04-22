
;;; package --- Main init file
;;; Commentary:
;;; This is my init file

;;; Code:
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-refresh-contents)

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; +------------------------------+
;; | REQUIRES PACKAGES            |
;; +------------------------------+
(require 'evil)
(evil-mode 1)

(require 'base)
(require 'base-theme)
(require 'base-extensions)
(require 'base-functions)
(require 'base-global-keys)

(require 'lang-python)

(require 'lang-php)

(require 'lang-javascript)

(require 'lang-web)

(require 'lang-haskell)

(require 'lang-rust)

(require 'lang-c)

;; --------------------------------


(setq-default indent-tabs-mode nil)
(define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)
(setq tab-stop-list (number-sequence 2 200 2))

(setq backup-directory-alist '(("." . "~/backup/emacs"))
      backup-by-copying      t      ; dont delink hard links
      version-control        t      ; use version numbers on backups
      delete-old-versions    t      ; automatically delete excess backups
      kept-new-versions      20     ; how many of the newest versions to keep
      kept-old-versions      5)     ; how many of the old

(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)

(electric-indent-mode 0) ; turn off all autoindentation

(defun c-comment-block ()
  "function for creating commment block c-style."
  (interactive)
  (beginning-of-line)
  (insert "//---------------------------------------")
  (newline)
  (insert "// ")
  (end-of-line)
  (newline)
  (insert "//---------------------------------------")
)

(defun c-comment-line ()
  "function for creating comment line c-style."
  (interactive)
  (end-of-line)
  (setq w (point))
  (beginning-of-line)
  (setq w (- w (point)))
  (setq w (- 34 w))
  (insert "// -- ")
  (end-of-line)
  (insert " ")
  (while (> w 0)
    (insert "-")
    (setq w (1- w)))
)

(defun hs-comment-block ()
  "function for creating commment block c-style."
  (interactive)
  (beginning-of-line)
  (insert "---------------------------------------")
  (newline)
  (insert "-- ")
  (end-of-line)
  (newline)
  (insert "---------------------------------------")
)

(defun hs-comment-line ()
  "function for creating comment line c-style."
  (interactive)
  (beginning-of-line)
  (insert "-- -------- ")
  (end-of-line)
  (insert "-------- -- ")
)


(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
