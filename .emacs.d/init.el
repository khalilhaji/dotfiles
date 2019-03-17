(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" default)))
 '(package-selected-packages
   (quote
    (2048-game speed-type org-bullets spacemacs-theme which-key use-package try gruvbox-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Package stuff:
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(setq inhibit-startup-message t)

(if (package-installed-p 'use-package)
    nil
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package org-bullets
  :ensure t)


;; Themes:
;; (use-package gruvbox-theme
;;   :ensure t
;;   :config (load-theme 'gruvbox-dark-medium))

(use-package spacemacs-theme
  :defer t
  :init (load-theme 'spacemacs-dark t))


;; Org mode:
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))



;; Custom functions:
;; This is a convenient function that kills all buffers but the currently active one.
(defun nuke-all-buffers ()
  (interactive)
  (mapcar 'kill-buffer (cdr (buffer-list))))


(global-set-key (kbd "C-x K") 'nuke-all-buffers)


;; Other options:
(tool-bar-mode -1)

