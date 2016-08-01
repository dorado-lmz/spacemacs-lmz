(defun dotspacemacs/layers ()
  (setq-default
    dotspacemacs-configuration-layers
    '(
      ivy
      (auto-completion :variables auto-completion-enable-sort-by-usage t
                      :disabled-for org markdown)
      better-defaults
      emacs-lisp
      markdown
      org
      spell-checking
      syntax-checking
      html
      javascript
      (ibuffer :variables ibuffer-group-buffers-by 'projects)
      (typescript :variables
                 typescript-fmt-on-save nil
                 typescript-fmt-tool 'typescript-formatter)
       ;; restclient
       emacs-lisp
       (clojure :variables clojure-enable-fancify-symbols t)
       ranger
       ;; racket
       (spacemacs-layouts :variables layouts-enable-autosave nil
                          layouts-autosave-delay 300)
       colors
       (git :variables
            git-magit-status-fullscreen t
            magit-push-always-verify nil
            magit-save-repository-buffers 'dontask
            magit-revert-buffers 'silent
            magit-refs-show-commit-count 'all
            magit-revision-show-gravatars nil)
       racket
       zilongshanren
     )
  )
)


(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-themes '(solarized-dark solarized-light)
   dotspacemacs-scratch-mode 'emacs-lisp-mode
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-line-numbers t
   dotspacemacs-maximized-at-startup t
   dotspacemacs-additional-packages '()
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
   dotspacemacs-excluded-packages '(counsel-projectile
                                    magit-gh-pulls
                                    magit-gitflow
                                    org-projectile
                                    evil-mc
                                    evil-args
                                    evil-ediff
                                    evil-exchange
                                    evil-unimpaired
                                    evil-indent-plus
                                    centered-buffer-mode
                                    volatile-highlights
                                    ;; performance not good
                                    smartparens
                                    spaceline
                                    holy-mode
                                    skewer-mode
                                    highlight-indentation
                                    vi-tilde-fringe
                                    eyebrowse
                                    hl-anything
                                    org-bullets
                                    smooth-scrolling
                                    org-repo-todo
                                    org-download
                                    org-timer
                                    livid-mode
                                    git-gutter
                                    git-gutter-fringe
                                    alert
                                    ;; disable it for lispy-mode
                                    ;;https://github.com/abo-abo/lispy/issues/137
                                    evil-escape
                                    leuven-theme
                                    gh-md
                                    evil-lisp-state
                                    spray
                                    doc-view
                                    lorem-ipsum
                                    ac-ispell
                                    ace-jump-mode
                                    auto-complete
                                    auto-dictionary
                                    clang-format
                                    define-word
                                    google-translate
                                    disaster
                                    epic
                                    fancy-battery
                                    neotree
                                    org-present
                                    orgit
                                    orglue
                                    spacemacs-theme
                                    spinner
                                    tagedit
                                    helm-flyspell
                                    flyspell-correct-helm
                                    helm-c-yasnippet
                                    ace-jump-helm-line
                                    helm-make
                                    helm-projectile
                                    helm-themes
                                    helm-swoop
                                    helm-spacemacs-help
    )
   )
)


(defun dotspacemacs/user-init ()
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://elpa.zilongshanren.com/melpa/")
          ("org-cn"   . "http://elpa.zilongshanren.com/org/")
          ("gnu-cn"   . "http://elpa.zilongshanren.com/gnu/")))
  (with-eval-after-load 'emacs-lisp-mode
    (define-key emacs-lisp-mode-map (kbd "C-j") 'eval-print-last-sexp))
  )

;; custom-file
(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)
