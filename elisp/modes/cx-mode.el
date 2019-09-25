;; create the list for font-lock.
;; each category of keyword is given a particular face
(setq cx-font-lock-keywords
      (let* (
            ;; define several category of keywords
            (x-keywords '("break" "continue" "do" "else" "elif" "if" "return" "for" "struct" "then"))
            (x-types '("int" "void" "i32"))
            (x-constants '())
            (x-events '())
            (x-functions '())

            ;; generate regex string for each category of keywords
            (x-keywords-regexp (regexp-opt x-keywords 'words))
            (x-types-regexp (regexp-opt x-types 'words))
            (x-constants-regexp (regexp-opt x-constants 'words))
            (x-events-regexp (regexp-opt x-events 'words))
            (x-functions-regexp (regexp-opt x-functions 'words)))

        `(
          (,x-types-regexp . font-lock-type-face)
          (,x-constants-regexp . font-lock-constant-face)
          (,x-events-regexp . font-lock-builtin-face)
          (,x-functions-regexp . font-lock-function-name-face)
          (,x-keywords-regexp . font-lock-keyword-face)
          ;; note: order above matters, because once colored, that part won't change.
          ;; in general, put longer words first
          )))


;;;###autoload
(define-derived-mode cx-mode fundamental-mode "cx mode"
  "Major mode for editing CX"

  ;; code for syntax highlighting
  (setq font-lock-defaults '((cx-font-lock-keywords))))

  (setq tab-width 2)

  (setq tab-stop-list (number-sequence 2 200 2))

  (setq comment-start "//")
  (setq comment-end "")

;; add the mode to the `features' list
(provide 'cx-mode)
