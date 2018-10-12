;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;; Settings
(defvar settings-dir
  (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

(require 'settings)
(global-linum-mode t)
(add-hook 'prog-mode-hook 'rainbow-mode)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(92 . 50))
(add-to-list 'default-frame-alist '(alpha . (92 . 50)))
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq vc-handled-backends ())
(global-unset-key (kbd "C-z"))

(fringe-helper-define 'git-gutter-fr:modified nil
  "........"
  "........"
  "........"
  "........"
  "........"
  "........"
  "........"
  "........")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bfb2b4217c1a71c1c4201a66ec52f33c4fab30bff5306dd9c3f8524ac2e8e7c7" "2ed1c05f204f4a6650900541dd3cea0f06a33297faaa1c9e048a84e77222e8da" "63dee1f4324dd686e79ebae44bb575d5da82950b68506ba7953e4dc83cb837be" "d19b6cb50f86a0460826bde9a8d491e8ca4bac66f632c38ce081b0155ca36f01" "3fc999d3bad959dd579f264da93b8736a8aef16ae106bed8403b00cf2b4723ed" "f5ea697467b84a681fb8f984789198090975de04c42fda067c3560d3d3d62d67" "e5821980bd8d5c29741f9cd2a164b69f4419bb7e8e11f71b92371218ae3325f2" "03720f7b2e15c6d967f6e8865f1f1d365e1834c29bd52b43063f829095753a20" "dccee79c92557e4f62f195d1701fed3da22334e6f084ea319405e6981f771ef2" "9899b7fb8c8fd66c27dad25d19745c2edb76aa6e4bf6fc223c77fd729b81ee22" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(nil nil t)
 '(package-selected-packages
   (quote
    (git-gutter 0blayout ace-window ranger evil use-package scpaste smex magit find-file-in-project ido-ubiquitous idle-highlight-mode paredit better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "orange red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dark goldenrod"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "dark olive green"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "khaki3")))))
(provide 'init)
;;; init.el ends here
