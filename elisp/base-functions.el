;; Add your custom functions here

(defun print-elements-of-list (list)
  "Print each element of LIST on a line of its own."
  (while list
    (print (car list))
    (setq list (cdr list))))

;; -------------------- MARKDOWN ---------------------------------------------------------------
(defun markdown-html (buffer)
  (princ (with-current-buffer buffer
    (format "<!DOCTYPE html><html><title>Impatient Markdown</title><xmp theme=\"united\" style=\"display:none;\"> %s  </xmp><script src=\"http://strapdownjs.com/v/0.2/strapdown.js\"></script></html>" (buffer-substring-no-properties (point-min) (point-max))))
  (current-buffer)))
;; - Start an emacs' web server with M-x httpd-start.
;; - Start impatient mode in the buffers you're interested to live preview: M-x impatient-mode.
;; - Open your browser to localhost:8080/imp. You'll see the list of buffers with the mode enabled. Click on one: you see live rendering of the buffer.
;; - Tell impatient mode to use it: M-x imp-set-user-filter RET markdown-html RET.
;; ----------------------------------------------------------------------------------------------

(provide 'base-functions)
