(defun dotspacemacs/layers ()
  (setq-default
    dotspacemacs-configuration-layers
    '(
      ivy
      (auto-completion :variables auto-completion-enable-sort-by-usage t
                      :disabled-for org markdown)
      better-defaults
      emacs-lisp
      git
      markdown
      org
      spell-checking
      syntax-checking
      zilongshanren
     )
  )
)


(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(solarized-dark solarized-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-line-numbers t
   dotspacemacs-maximized-at-startup t
   dotspacemacs-additional-packages '(racket-mode)
   dotspacemacs-excluded-packages '(vi-tilde-fringe)
   dotspacemacs-editing-style 'hybrid
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-emacs-command-key ":"

   )
)


(defun dotspacemacs/user-init ()
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://elpa.zilongshanren.com/melpa/")
          ("org-cn"   . "http://elpa.zilongshanren.com/org/")
          ("gnu-cn"   . "http://elpa.zilongshanren.com/gnu/")))

)

;; custom-file
(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)
