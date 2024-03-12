;; =========================================================
;;
;; copy of ~/dotfiles-etc/dot.emacs
;; git url = git@github.com:cepek/dotfiles-etc.git
;;
;; =========================================================

;; enable cua mode on startup
; (cua-mode t)

;;disable splash screen and startup message

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; always display column numbers
(setq column-number-mode t)

;; I had to set 4 spaces for indentation first
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(defvaralias 'c-basic-offset 'tab-width)
; (defvaralias 'cperl-indent-level 'tab-width)

;; matching parenthesis
(show-paren-mode 1)

;; set font size to 12pt
(custom-set-faces
 '(default ((t (:height 120)))))
;;;;;
;;;;; In this example, :height 120 sets the font size to 12 points
;;;;; (since the default unit is 1/10th of a point).


(global-display-line-numbers-mode)
;; (add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; (add-hook 'c++-mode-hook 'display-line-numbers-mode)
;; (add-hook 'c-mode-hook 'display-line-numbers-mode)
;; (setq linum-format "%3d ")


;;; (set-frame-font "Source Code Pro-12" nil t)
;;; ... the font is not available
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(set-face-attribute 'region nil :background "#cce5ff")
;;;;; (cua-mode t)
;;;;; (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;;;;; (transient-mark-mode 1) ;; No region when it is not highlighted
;;;;; (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

; ----------------------------------------------------------


;; https://linuxhint.com/c_emacs_configuration/


(require 'package)
(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/") t)
; ------ unnecessary call (package-initialize) -------------
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(use-package try :ensure t)
(use-package which-key :ensure t :config (which-key-mode))




(use-package auto-complete
  :ensure t
  :init
  (progn
        (ac-config-default)
        (global-auto-complete-mode t)
        ))



;;;;; (use-package auto-complete
;;;;; (use-package flycheck
;;;;;   :ensure t
;;;;;   :init
;;;;  (global-flycheck-mode t)) ... nefunguje




(use-package modern-cpp-font-lock
:ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(modern-cpp-font-lock auto-complete which-key try use-package markdown-mode irony imenu-list company cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; markdown mode for emacs

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


;;; (add-hook 'write-file-hooks 'delete-trailing-whitespace nil t)

;; Automatically remove trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
