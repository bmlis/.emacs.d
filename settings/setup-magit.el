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

(use-package git-gutter-fringe
  :ensure t
  :config
  (set-face-background 'git-gutter-fr:modified "#90CAF9")
  (set-face-foreground 'git-gutter-fr:modified "#E3F2FD")
  (set-face-background 'git-gutter-fr:added "#CDDC39")
  (set-face-foreground 'git-gutter-fr:added "#F0F4C3")
  (set-face-background 'git-gutter-fr:deleted "#FF5722")
  (set-face-foreground 'git-gutter-fr:deleted "#FF9E80")
  (global-git-gutter-mode t))

(provide 'setup-magit)
