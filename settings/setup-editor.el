(require 'use-package)

(use-package smartparens
  :defer t
  :ensure t
  :diminish smartparens-mode
  :init
  (use-package smartparens-config
    :init
    (smartparens-global-mode)
    (show-smartparens-global-mode)))

(use-package evil-smartparens
    :diminish evil-smartparens-mode
    :config (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))

(use-package lsp-mode
  :ensure t
  :config
  (use-package company-lsp
    :ensure t
    :config
    (push 'company-lsp company-backends)))

(use-package eldoc
  :init
  (add-hook 'prog-mode-hook #'eldoc-mode))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(use-package whitespace
  :init
  (add-hook 'before-save-hook 'whitespace-cleanup))

(use-package editorconfig
  :ensure t
  :init
  (editorconfig-mode 1))

(use-package which-key
  :ensure t
  :init
  (which-key-mode 1))
(provide 'setup-editor)
