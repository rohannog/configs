;;(require 'color-theme)
;;(color-theme-emacs-21)
;;(global-font-lock-mode 1)
;;(transient-mark-mode t)
;;(set-default-font "-adobe-courier-bold-r-normal--24-240-75-75-m-150-iso8859-1")

;;(if (>= emacs-major-version 23) 
;;  (set-default-font "Monospace-14"))

;;Setting background colour
;;(set-background-color "#DDDDDD")

(defun my-java-mode-hook ()
  (setq c-basic-offset 2)
  (setq tab-width 2))
(add-hook 'java-mode-hook 'my-java-mode-hook)
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; Delete seleted text when typing
(delete-selection-mode 1)

;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir "~/.emacs.d/autosaves/")

(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
   (if buffer-file-name
      (concat "#" (file-name-nondirectory buffer-file-name) "#")
    (expand-file-name
     (concat "#%" (buffer-name) "#")))))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir "~/.emacs.d/backups/")
(setq backup-directory-alist (list (cons "." backup-dir)))

;; Start server
(server-start)

;;Add directory with Emacs elis files
;;(add-to-list 'load-path "~/install/emacs-extras/elisp")

;;Install php-mode
;;(require 'php-mode)
;;(setq php-manual-path "/home/rohan/install/php-manual")

;;Install js2-mode
;;(require 'js2-mode)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(js2-basic-offset 2)
;;)

;;(require 'sudo-save)
