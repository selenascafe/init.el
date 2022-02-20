(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)
(setq backup-inhibited t)
(setq auto-save-default nil)

(define-key global-map "\M-i" 'previous-line)
(define-key global-map "\M-j" 'backward-char)
(define-key global-map "\M-k" 'next-line)
(define-key global-map "\M-l" 'forward-char)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))
(unless (package-installed-p 'use-package)
   (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package phoenix-dark-pink-theme)
(use-package doom-themes
  :ensure t)
(use-package latex-preview-pane)
(use-package org)
(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode))
(use-package simple-httpd
  :ensure t)

(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled
(load-theme 'doom-Iosvkem t)

(setq org-ellipsis " ▼")
(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(latex-preview-pane-enable)
