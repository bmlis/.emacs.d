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

(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :config
  (defun my/use-eslint-from-node-modules ()
    (let ((root (locate-dominating-file
                 (or (buffer-file-name) default-directory)
                 (lambda (dir)
                   (let ((eslint (expand-file-name "node_modules/eslint/bin/eslint.js" dir)))
                     (and eslint (file-executable-p eslint)))))))
      (when root
        (let ((eslint (expand-file-name "node_modules/eslint/bin/eslint.js" root)))
          (setq-local flycheck-javascript-eslint-executable eslint)))))
  (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
  (add-hook 'after-init-hook #'global-flycheck-mode))

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
