(require 'use-package)

(use-package smartparens
  :defer t
  :ensure t
  :diminish smartparens-mode
  :init
  ;; (use-package evil-smartparens
  ;;   :load-path "site-lisp/evil-smartparens"
  ;;   :diminish evil-smartparens-mode
  ;;   :config (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))
  (use-package smartparens-config
    :init
    (smartparens-global-mode)
    (show-smartparens-global-mode)))


(use-package eldoc
  :diminish eldoc
  :init
  (add-hook 'prog-mode-hook #'eldoc-mode))

(use-package subword
  :init
  (add-hook 'prog-mode-hook #'subword-mode))

(use-package flycheck
  :ensure t
  :config
  (defun flycheck-load-config ()
    (set-face-attribute 'flycheck-warning nil
                        :foreground "black"
                        :background "yellow"
                        :underline nil)
    (set-face-attribute 'flycheck-error nil
                        :foreground "black"
                        :background "red"
                        :underline nil))
  (add-hook 'flycheck-mode-hook 'flycheck-load-config)
  (add-hook 'python-mode-hook #'(lambda () (setq flycheck-checker 'python-pylint)))
  :init
  (global-flycheck-mode))

(use-package yasnippet
  :ensure t
  :diminish yasnippet
  :commands (yas-minor-mode)
  :init
  (add-hook 'prog-mode-hook #'yas-minor-mode)
  :config
  (yas-reload-all))

(use-package whitespace
  :init
  (add-hook 'before-save-hook 'whitespace-cleanup))

(provide 'setup-programing)
