;;; package.el --- Summary
;;; Commentary:
;; stop bitching

;;; Code:
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(require 'package)

;;evil mode
(package-initialize)
(evil-mode 1)        ;; enable evil-mode

;;flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

;; folder for initializations
(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
;; initialize
(mapc 'require '(init-keymaps
		init-haskell-mode
                init-sml-mode
                init-org-mode
                init-auctex-mode
                init-helm
                init-rcirc-mode
                init-minors))

;; color theme
(load-theme 'monokai t)
;; font
(add-to-list 'default-frame-alist '(font . "Consolas-11"))
(set-face-attribute 'default t :font "Consolas-11")

;; NO FRILLS
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)
;; NO JUNK
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      backup-directory-alist `((".*" . ,temporary-file-directory)))

;; misc
(setq column-number-mode t)
;(setq enable-recursive-minibuffers t)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(electric-indent-mode t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-hoogle-imports t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-stylish-on-save t)
 '(minimap-always-recenter t)
 '(org-agenda-files (quote ("c:/msys64/usr/bin/todo.org" "d:/SkyDrive/School/2014 Fall/Programming Languages [COP 4020]/notes/11-06-2014.org" "c:/msys64/home/Micah/org/work.org" "c:/msys64/home/Micah/org/school.org" "c:/msys64/home/Micah/org/home.org")))
 '(sml-indent-level 2 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
