(require 'use-package)
(use-package magit
  :ensure t
  :bind
  ("C-x g" . magit-status))
(use-package evil-magit
  :ensure t)

(use-package diff-hl
  :ensure t
  :init
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (global-diff-hl-mode))

(use-package git-gutter
  :ensure t
  :init
  (custom-set-variables
   '(git-gutter:modified-sign " "))
  (set-face-background 'git-gutter:modified "#90CAF9")
  (set-face-foreground 'git-gutter:modified "#E3F2FD")
  (set-face-background 'git-gutter:added "#CDDC39")
  (set-face-foreground 'git-gutter:added "#F0F4C3")
  (set-face-background 'git-gutter:deleted "#FF5722")
  (set-face-foreground 'git-gutter:deleted "#FF9E80")
  (setq vc-handled-backends ())
  (global-git-gutter-mode t))

(provide 'setup-magit)
