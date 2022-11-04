;; Changing Emacs font
(set-frame-font "Cascadia Code 12" nil t)

;; Replacing default buffer list for ibuffer
(global-set-key [remap list-buffers] 'ibuffer)

;; Rebinding M-o to other window => C-x o
(global-set-key (kbd "M-o") 'other-window)

;; Adding window movement support
(windmove-default-keybindings)

;; Binding IMenu to M-i
(global-set-key (kbd "M-i") 'imenu)

;; Setting helm keybindings
;; Replacing M-x with helm-M-x
;; (global-set-key (kbd "M-x") #'helm-M-x)
;; Replacing bookmark keybinding with helm's keybinding
;; (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;; Replacing default file search with helm-find-files
;; (global-set-key (kbd "C-x C-f") #'helm-find-files)

;; Setting helm-mode globally
;; (helm-mode 1)

;; Setting IDO mode
(ido-mode 1)
;; Setting ido everywhere
(setq ido-everywhere t)
;; Enabling flex matching
(setq ido-enable-flex-matching t)

;; Windows only commands
(if (eq system-type 'windows-nt)
    ;; Change windows find with GNU find
    (setenv "PATH" (concat "C:\\gnuwin32\\bin\\" path-separator (getenv "PATH")))
)

;; Installing MELPA

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("05626f77b0c8c197c7e4a31d9783c4ec6e351d9624aa28bc15e7f6d6a6ebd926" default))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(helm dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
