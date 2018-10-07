(require 'use-package)

(use-package tao-theme
  :defer t
  :ensure t
  :init
  (setq-default line-spacing 1)
  (load-theme 'tao-yang t)
  ;; (global-hl-line-mode)
  (column-number-mode 1)
  (add-to-list 'default-frame-alist '(font . "Fantasque Sans Mono-14")))

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/theme 'respectful)
  (setq sml/no-confirm-load-theme t)
  (sml/setup))

(use-package ace-window
  :ensure t
  :bind
  ("M-p" . ace-window))

(provide 'setup-ux)
