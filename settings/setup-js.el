(require 'use-package)

(use-package js2-mode
  :ensure t
  :init
  (use-package rjsx-mode
    :ensure t
    :init
    (add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
    (add-to-list 'auto-mode-alist '("\\.react.js\\'" . rjsx-mode))
    (add-to-list 'auto-mode-alist '("\\index.android.js\\'" . rjsx-mode))
    (add-to-list 'auto-mode-alist '("\\index.ios.js\\'" . rjsx-mode))
    (add-to-list 'magic-mode-alist '("/\\*\\* @jsx React\\.DOM \\*/" . rjsx-mode))
    (add-to-list 'magic-mode-alist '("^import React" . rjsx-mode)))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(use-package lsp-javascript-typescript
  :ensure t
  :after (lsp-mode)
  :init
  (defun has-js-or-ts-config? (path)
    (locate-dominating-file path #'(lambda (dir)
                                     (and  (or (directory-files dir nil "jsconfig.json")
                                               (directory-files dir nil "tsconfig.json"))
                                           (directory-files dir nil "package.json")))))

  (defun enable-lsp-js ()
    (when (has-js-or-ts-config? ".")
      (lsp-javascript-typescript-enable)))

  (add-hook 'js2-mode-hook #'enable-lsp-js)
  (add-hook 'rjsx-mode-hook #'enable-lsp-js))

(provide 'setup-js)
