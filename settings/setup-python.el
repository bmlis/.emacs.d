(require 'use-package)


(use-package anaconda-mode
  :ensure t
  :commands anaconda-mode
  :diminish anaconda-mode
  :init
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'eldoc-mode))

(use-package py-isort
  :ensure t
  :init
  (add-hook 'before-save-hook 'py-isort-before-save))

(use-package company-anaconda
  :ensure t
  :init (add-to-list 'company-backends 'company-anaconda))

(use-package pyenv-mode
  :ensure t
  :config
  (pyenv-mode))

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

(provide 'setup-python)
