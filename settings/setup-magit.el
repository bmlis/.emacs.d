(require 'use-package)
(use-package magit
  :bind
  ("C-x g" . magit-status))
(provide 'setup-magit)