
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(org-log-into-drawer t)
 '(package-selected-packages
   (quote
    (solarized-theme evil-magit evil smart-mode-line-powerline-theme smart-mode-line powerline org-edna magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
						 ("marmalade" . "https://marmalade-repo.org/packages/")
						 ("melpa" . "https://melpa.org/packages/")))

;; Org mode options
(setq org-todo-keywords
      '((sequence "TODO" "WRITING" "WAITING" "DRAFT COMPLETE" "|" "DONE")))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-agenda-files '("~/Dropbox/org_files/"))
(setq org-hide-leading-stars t)

;; Evil mode
(require 'evil)
(evil-mode 1)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)
(require 'evil-magit)

;; solarized theme
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (load-theme 'solarized-dark)))
