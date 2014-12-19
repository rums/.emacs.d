(provide 'init-keymaps)

;; colemak remaps
;;; normal mode
(define-key evil-normal-state-map "N" 'evil-join)
(define-key evil-normal-state-map "l" 'evil-insert)
(define-key evil-normal-state-map "L" 'evil-insert-line)
(define-key evil-normal-state-map "i" 'evil-forward-char)
(define-key evil-normal-state-map "I" 'evil-window-bottom)
(define-key evil-normal-state-map "j" 'evil-search-next)
(define-key evil-normal-state-map "J" 'evil-search-previous)
;;; window mode
(define-key evil-window-map "n" 'evil-window-down)
(define-key evil-window-map "N" 'evil-window-move-very-bottom)
(define-key evil-window-map "e" 'evil-window-up)
(define-key evil-window-map "E" 'evil-window-move-very-top)
(define-key evil-window-map "i" 'evil-window-right)
(define-key evil-window-map "I" 'evil-window-move-far-right)
(define-key evil-window-map "j" 'evil-window-new)
;;; motion-state
(define-key evil-motion-state-map "n" 'evil-next-line)
(define-key evil-motion-state-map "e" 'evil-previous-line)
(define-key evil-motion-state-map "E" 'evil-lookup)
(define-key evil-motion-state-map "i" 'evil-forward-char)
(define-key evil-motion-state-map "I" 'evil-window-bottom)
(define-key evil-motion-state-map "j" 'evil-search-next)
(define-key evil-motion-state-map "J" 'evil-search-previous)
(define-key evil-motion-state-map "k" 'evil-forward-word-end)
(define-key evil-motion-state-map "K" 'evil-forward-WORD-end)
;;; visual-state
(define-key evil-visual-state-map "n" 'evil-next-line)
(define-key evil-visual-state-map "e" 'evil-previous-line)
(define-key evil-visual-state-map "i" 'evil-forward-char)
(define-key evil-visual-state-map "I" 'evil-window-bottom)
(define-key evil-visual-state-map "l" evil-inner-text-objects-map)
(define-key evil-visual-state-map "L" 'evil-insert)
;;; operator-state
(define-key evil-operator-state-map "l" evil-inner-text-objects-map)
