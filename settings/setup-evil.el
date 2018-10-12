(require 'use-package)

(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  (use-package evil-surround
    :ensure t
    :init
    (global-evil-surround-mode 1)))

(use-package evil-smartparens
  :defer t
  :ensure t
  :init
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))

(provide 'setup-evil)
