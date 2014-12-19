;;; init-auto-insert-mode --- Summary
;;; Commentary:
;;; Code:
(auto-insert-mode)
 ;; *NOTE* Trailing slash important
(add-hook 'TeX-mode-hook '(lambda ()
  (remove-hook 'find-file-hooks (car find-file-hooks) 'local)))
(setq auto-insert-directory "~/templates/tex/")
(setq auto-insert-query nil)
(let ((el (assoc 'latex-mode auto-insert-alist)))
  (if el
      (setcdr el "/c/temp/autoinsert.tex")
    (define-auto-insert "\\.tex$" "/c/temp/autoinsert.tex")))
(provide 'init-auto-insert-mode)
;;; init-auto-insert-mode.el ends here
