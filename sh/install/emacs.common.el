;; packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(markdown-command "pandoc"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; set up hook for 80 character limit and line wrapping
(global-visual-line-mode t)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook '(lambda() (set-fill-column 79)))
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; remove trailing wuite spaces
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; packages installed by MELPA:
;; cuda-mode, sr-speedbar

;; All key binding go here

;; Terminal keys
(global-set-key "\C-xc" 'compile);
(global-set-key "\C-xt" 'ansi-term);

;; Undo and redo setup here
(global-set-key (kbd "C-z") 'redo)

;; auto-complete
(autoload 'company-mode "company" nil t)


;; Redefine some long alias/list
(defalias 'yes-or-no-p 'y-or-n-p) ;; y or n is enough
(defalias 'list-buffers 'ibuffer)

;; Set up google style
(add-to-list 'load-path "~/.emacs.d/elpa/")
;;(load "google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; Set up .cu files styles
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))

;; default theme
(load-theme 'tango-dark t)


;; to use copy with clipboard
(setq x-select-enable-clipboard t)

;; tell emacs to open .h as C++ format
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; tell emacs to open .common file
(add-to-list 'auto-mode-alist '("\\.*.common\\'" . sh-mode))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; START CPP EDIT OPTIONS
;; CPP eco system in tuhdo_cpp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'load-path "~/.emacs.d/lisp/tuhdo_cpp")
;; (load-file "~/.emacs.d/lisp/tuhdo_cpp/tuhdo_init.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DONE CPP EDIT OPTIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; START PYTHON EDIT OPTIONS IN EMACS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; To set up ipython inside emacs:
(setq py-install-directory "~/.emacs.d/lisp/python-mode")
(add-to-list 'load-path py-install-directory)
;;(require 'python-mode)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(autoload 'python-mode "python-mode" "Python Mode." t)

;; turn off autocomplete
;; run inferior process python
;;(add-hook 'python-mode 'run-python)

;; turn off global-company-mode once using python-mode
;; otherwise, company mode is very slow and return many error message
;;(global-company-mode '(not python-mode))

;; use IPython

(setq-default py-shell-name "/usr/local/bin/ipython3")
(setq-default py-which-bufname "IPython3")
;; ; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
         '("--gui=wx" "--pylab=wx" "-colors" "Linux"))

(setq py-force-py-shell-name-p t)
(setq py-keep-windows-configuration 'force)
;; ; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
;; ; don't split windows
;;(setq py-split-windows-on-execute-p nil)
(setq py-split-windows-on-execute-p 'just-two)

;; ; try to automagically figure out indentation
;; ;;(setq py-smart-indentation t)
     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DONE PYTHON SETUP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
