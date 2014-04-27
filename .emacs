;;package-archives setting
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
;;auto-complete
(require 'auto-complete-config)
(ac-config-default)
;;yasnippet
(require 'yasnippet)
(yas-global-mode 1)
;;theme setting
(load-theme 'zenburn t)
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(require 'linum)
(global-linum-mode 1)
;;(setq molokai-theme-kit t)
;;(load-theme 'molokai t)
;;starter kit python
;;(starter-kit-load "python")
(setq py-install-directory "~/.python-mode.el-6.1.3/")
(add-to-list 'load-path py-install-directory)
;;python-mode.el install of python.el
(require 'python-mode)
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
;;jedi: Python auto-completion for Emacs
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)   
;;my-python-compile
(defun my-compile ()
  "Use compile to run python programs"
  (interactive)
  (compile (concat "python " (buffer-name))))
(setq compilation-scroll-output t)
(add-hook 'python-mode-hook
       	  '(lambda ()
             (define-key py-mode-map "\C-c\C-z" 'my-compile)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("27470eddcaeb3507eca2760710cc7c43f1b53854372592a3afa008268bcf7a75" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
