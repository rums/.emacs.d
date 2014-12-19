;;; init-minors --- Summary
;;; Commentary:
;;; Code:
(require 'recentf)
(require 'smooth-scrolling)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(provide 'init-minors)
;;; init-minors.el ends here
