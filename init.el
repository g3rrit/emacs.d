;;; package --- Main init file
;;; Commentary:
;;; This is my init file

;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; +------------------------------+
;; | REQUIRES PACKAGES            |
;; +------------------------------+

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

; enable evil-mode
(evil-mode 1)

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
