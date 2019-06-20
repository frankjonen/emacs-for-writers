;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   dotspacemacs-distribution 'spacemacs
      ;; Base distribution to use. This is a layer contained in the directory
      ;; `+distribution'. For now available distributions are `spacemacs-base'
      ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-enable-lazy-installation 'unused
      ;; Lazy installation of layers (i.e. layers are installed only when a file
      ;; with a supported type is opened). Possible values are `all', `unused'
      ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
      ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
      ;; lazy install any layer that support lazy installation even the layers
      ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
      ;; installation feature and you have to explicitly list a layer in the
      ;; variable `dotspacemacs-configuration-layers' to install it.
      ;; (default 'unused)
   dotspacemacs-ask-for-lazy-installation t
      ;; If non-nil then Spacemacs will ask for confirmation before installing
      ;; a layer lazily. (default t)
   dotspacemacs-configuration-layer-path '()
      ;; If non-nil layers with lazy install support are lazy installed.
      ;; List of additional paths where to look for configuration layers.
      ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layers
   ;; List of configuration layers to load.
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     (auto-completion :disabled-for markdown)
     better-defaults
     emacs-lisp
     ;; git
     markdown
     org
     (shell :shell-default-height 30
             shell-default-position 'bottom)
     (spell-checking :variables spell-checking-enable-by-default nil)
     syntax-checking
     html
     ;; version-control
     osx
     ;; themes-megapack
     )
   dotspacemacs-additional-packages '(olivetti)
      ;; List of additional packages that will be installed without being
      ;; wrapped in a layer. If you need some configuration for these
      ;; packages, then consider creating a layer. You can also put the
      ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-frozen-packages '()
      ;; A list of packages that cannot be updated.
   dotspacemacs-excluded-packages '()
      ;; A list of packages that will not be installed and loaded.
   dotspacemacs-install-packages 'used-only))
      ;; Defines the behaviour of Spacemacs when installing packages.
      ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
      ;; `used-only' installs only explicitly used packages and uninstall any
      ;; unused packages as well as their unused dependencies.
      ;; `used-but-keep-unused' installs only the used packages but won't uninstall
      ;; them if they become unused. `all' installs *all* packages supported by
      ;; Spacemacs and never uninstall them. (default is `used-only')

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   dotspacemacs-elpa-https t
      ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
      ;; possible. Set it to nil if you have no way to use HTTPS in your
      ;; environment, otherwise it is strongly recommended to let it set to t.
      ;; This variable has no effect if Emacs is launched with the parameter
      ;; `--insecure' which forces the value of this variable to nil.
      ;; (default t)
   dotspacemacs-elpa-timeout 5
      ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-check-for-update nil
      ;; If non nil then spacemacs will check for updates at startup
      ;; when the current branch is not `develop'. Note that checking for
      ;; new versions works via git commands, thus it calls GitHub services
      ;; whenever you start Emacs. (default nil)
   dotspacemacs-elpa-subdirectory nil
      ;; If non-nil, a form that evaluates to a package directory. For example, to
      ;; use different package directories for different Emacs versions, set this
      ;; to `emacs-version'.
   dotspacemacs-editing-style 'vim
      ;; One of `vim', `emacs' or `hybrid'.
      ;; `hybrid' is like `vim' except that `insert state' is replaced by the
      ;; `hybrid state' with `emacs' key bindings. The value can also be a list
      ;; with `:variables' keyword (similar to layers). Check the editing styles
      ;; section of the documentation for details on available variables.
      ;; (default 'vim)
   dotspacemacs-verbose-loading nil
      ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-startup-banner 'official
      ;; Specify the startup banner. Default value is `official', it displays
      ;; the official spacemacs logo. An integer value is the index of text
      ;; banner, `random' chooses a random text banner in `core/banners'
      ;; directory. A string value must be a path to an image format supported
      ;; by your Emacs build.
      ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-lists '(
                                ;(recents . 5)
                                (projects . 7))
      ;; List of items to show in startup buffer or an association list of
      ;; the form `(list-type . list-size)`. If nil then it is disabled.
      ;; Possible values for list-type are:
      ;; `recents' `bookmarks' `projects' `agenda' `todos'."
      ;; List sizes may be nil, in which case
      ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-buffer-responsive t
      ;; True if the home buffer should respond to resize events.
   dotspacemacs-scratch-mode 'text-mode
      ;; Default major mode of the scratch buffer (default `text-mode')   
   dotspacemacs-themes '(doom-molokai
                         cyberpunk
                         gotham
                         spacemacs-dark)
      ;; List of themes, the first of the list is loaded when spacemacs starts.
      ;; Press <SPC> T n to cycle to the next theme in the list (works great
      ;; with 2 themes variants, one dark and one light)
                            
   dotspacemacs-colorize-cursor-according-to-state t
      ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-default-font '("Input Mono Narrow"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
      ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
      ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-leader-key "SPC"
      ;; The leader key
   dotspacemacs-emacs-command-key "SPC"
      ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
      ;; (default "SPC")
   dotspacemacs-ex-command-key ":"
      ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-emacs-leader-key "M-m"
      ;; The leader key accessible in `emacs state' and `insert state'
      ;; (default "M-m")
   dotspacemacs-major-mode-leader-key ","
      ;; Major mode leader key is a shortcut key which is the equivalent of
      ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
      ;; Major mode leader key accessible in `emacs state' and `insert state'.
      ;; (default "C-M-m")
   dotspacemacs-distinguish-gui-tab nil
      ;; These variables control whether separate commands are bound in the GUI to
      ;; the key pairs C-i, TAB and C-m, RET.
      ;; Setting it to a non-nil value, allows for separate commands under <C-i>
      ;; and TAB or <C-m> and RET.
      ;; In the terminal, these pairs are generally indistinguishable, so this only
      ;; works in the GUI. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
      ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-retain-visual-state-on-shift t
      ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
      ;; there. (default t)
   dotspacemacs-visual-line-move-text nil
      ;; If non-nil, J and K move lines up and down when in visual mode.
      ;; (default nil)
   dotspacemacs-ex-substitute-global nil
      ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
      ;; (default nil)
   dotspacemacs-default-layout-name "Default"
      ;; Name of the default layout (default "Default")
   dotspacemacs-display-default-layout nil
      ;; If non nil the default layout name is displayed in the mode-line.
      ;; (default nil)
   dotspacemacs-auto-resume-layouts nil
      ;; If non nil then the last auto saved layouts are resume automatically upon
      ;; start. (default nil)
   dotspacemacs-large-file-size 1
      ;; Size (in MB) above which spacemacs will prompt to open the large file
      ;; literally to avoid performance issues. Opening a file literally means that
      ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-auto-save-file-location 'cache
      ;; Location where to auto-save files. Possible values are `original' to
      ;; auto-save the file in-place, `cache' to auto-save the file to another
      ;; file stored in the cache directory and `nil' to disable auto-saving.
      ;; (default 'cache)
   dotspacemacs-max-rollback-slots 5
      ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-helm-resize nil
      ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-no-header nil
      ;; if non nil, the helm header is hidden when there is only one source.
      ;; (default nil)
   dotspacemacs-helm-position 'bottom
      ;; define the position to display `helm', options are `bottom', `top',
      ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-use-fuzzy 'always
      ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
      ;; in all non-asynchronous sources. If set to `source', preserve individual
      ;; source settings. Else, disable fuzzy matching in all sources.
      ;; (default 'always)
   dotspacemacs-enable-paste-transient-state nil
      ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
      ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-which-key-delay 0.4
      ;; Which-key delay in seconds. The which-key buffer is the popup listing
      ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-position 'bottom
      ;; Which-key frame position. Possible values are `right', `bottom' and
      ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
      ;; right; if there is insufficient space it displays it at the bottom.
      ;; (default 'bottom)
   dotspacemacs-loading-progress-bar t
      ;; If non nil a progress bar is displayed when spacemacs is loading. This
      ;; may increase the boot time on some systems and emacs builds, set it to
      ;; nil to boost the loading time. (default t)
   dotspacemacs-fullscreen-at-startup nil
      ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
      ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-use-non-native nil
      ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
      ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-maximized-at-startup t
      ;; If non nil the frame is maximized when Emacs starts up.
      ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
      ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-active-transparency 90
      ;; A value from the range (0..100), in increasing opacity, which describes
      ;; the transparency level of a frame when it's active or selected.
      ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
      ;; A value from the range (0..100), in increasing opacity, which describes
      ;; the transparency level of a frame when it's inactive or deselected.
      ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-show-transient-state-title t
      ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-color-guide t
      ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-mode-line-unicode-symbols t
      ;; If non nil unicode symbols are displayed in the mode line. (default t)

   dotspacemacs-smooth-scrolling t
      ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
      ;; scrolling overrides the default behavior of Emacs which recenters point
      ;; when it reaches the top or bottom of the screen. (default t)

   dotspacemacs-line-numbers nil
      ;; Control line numbers activation.
      ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
      ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
      ;; This variable can also be set to a property list for finer control:
      ;; '(:relative nil
      ;;   :disabled-for-modes dired-mode
      ;;                       doc-view-mode
      ;;                       markdown-mode
      ;;                       org-mode
      ;;                       pdf-view-mode
      ;;                       text-mode
      ;;   :size-limit-kb 1000)
      ;; (default nil)

   dotspacemacs-folding-method 'evil
      ;; Code folding method. Possible values are `evil' and `origami'.
      ;; (default 'evil)

   dotspacemacs-smartparens-strict-mode nil
      ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
      ;; (default nil)

   dotspacemacs-smart-closing-parenthesis nil
      ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
      ;; over any automatically added closing parenthesis, bracket, quote, etc…
      ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)

   dotspacemacs-highlight-delimiters 'all
      ;; Select a scope to highlight delimiters. Possible values are `any',
      ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
      ;; emphasis the current one). (default 'all)

   dotspacemacs-persistent-server nil
      ;; If non nil, advise quit functions to keep server open when quitting.
      ;; (default nil)

   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
      ;; List of search tool executable names. Spacemacs uses the first installed
      ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
      ;; (default '("ag" "pt" "ack" "grep"))

   dotspacemacs-default-package-repository nil
      ;; The default package repository used if no explicit repository has been
      ;; specified with an installed package.
      ;; Not used for now. (default nil)

   dotspacemacs-whitespace-cleanup nil
      ;; Delete whitespace while saving buffer. Possible values are `all'
      ;; to aggressively delete empty line and long sequences of whitespace,
      ;; `trailing' to delete only the whitespace at end of lines, `changed'to
      ;; delete only whitespace for changed lines or `nil' to disable cleanup.
      ;; (default nil)
   ))

(defun dotspacemacs/user-init ()
      ;;  "Initialization function for user code.
      ;;  It is called immediately after `dotspacemacs/init', before layer configuration
      ;;  executes.
      ;;  This function is mostly useful for variables that need to be set
      ;;  before packages are loaded. If you are unsure, you should try in setting them in
      ;;  `dotspacemacs/user-config' first."

      (add-to-list 'default-frame-alist
                   '(ns-transparent-titlebar . t))
      
      (add-to-list 'default-frame-alist
                   '(ns-appearance . dark))
      (setq frame-resize-pixelwise t)
      (setq powerline-image-apple-rgb t)

;;    (desktop-save-mode 1)
      (setq desktop-path '("."))
;;    (setq desktop-save t)

)

(defun dotspacemacs/user-config ()
      ;;  "Configuration function for user code.
      ;;  This function is called at the very end of Spacemacs initialization after
      ;;  layers configuration.
      ;;  This is the place where most of your configurations should be done. Unless it is
      ;;  explicitly specified that a variable should be set before a package is loaded,
      ;;  you should place your code here."

;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; User Info

(setq user-mail-address "your@email.com")
;; Put your email address in here


;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Basics 

(global-visual-line-mode 1)

; Redefine some EVIL keys back to normal Emacs keys for more fluid editing

(with-eval-after-load 'evil-maps
	(define-key evil-motion-state-map (kbd "C-a") 'move-beginning-of-line)
	(define-key evil-motion-state-map (kbd "C-e") 'move-end-of-line))

; If you want to redefine more, here are their names
; https://github.com/magnars/.emacs.d/blob/master/site-lisp/evil/evil-maps.el


;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Mac Specific

;; Uncomment if colours look off
;;(setq ns-use-srgb-colorspace nil)


;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Spellcheck Setup

(with-eval-after-load "ispell"
	(setq ispell-program-name "aspell")
	(ispell-set-spellchecker-params)
	(setq ispell-dictionary "en_GB"))



;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Terminal Environment

(defun my-shell-setup ()
	(interactive)
	(setq buffer-face-mode-face '(:family "PxPlus IBM VGA8" :height 160))
	(buffer-face-mode))
(add-hook 'term-mode-hook #'my-shell-setup)



;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Image Environment

(defun set-image-borderless ()
	(setq left-margin-width 0)
	(setq right-margin-width 0)
	(set-fringe-mode 0)
	(setq global-hl-line-mode nil)
	(image-transform-fit-to-height))
(add-hook 'image-mode-hook #'set-image-borderless)



;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


(defun my-toggle-margins-low ()
"Set margins in current buffer for use in narrow windows."
(interactive)
  (if (or (> left-margin-width 0) (> right-margin-width 0))
    (progn
      (setq left-margin-width 0)
      (setq right-margin-width 0)
      (set-fringe-mode nil)
      (setq global-hl-line-mode t)
      (set-window-buffer (selected-window) (current-buffer)))
    (setq left-margin-width 5)
    (setq right-margin-width 5)
    (set-fringe-mode 0)
    (setq global-hl-line-mode nil)
    (set-window-buffer (selected-window) (current-buffer))))

(global-set-key [f5] #'my-toggle-margins-low)


(defun my-toggle-margins-wide ()
"Set margins in current buffer for use in full-screen."
(interactive)
  (if (or (> left-margin-width 0) (> right-margin-width 0))
    (progn
      (setq left-margin-width 0)
      (setq right-margin-width 0)
      (set-fringe-mode nil)
      (setq global-hl-line-mode t)
      (set-window-buffer (selected-window) (current-buffer)))
    (setq left-margin-width 80)
    (setq right-margin-width 80)
    (set-fringe-mode 0)
    (setq global-hl-line-mode nil)
    (set-window-buffer (selected-window) (current-buffer))))

(global-set-key [f8] #'my-toggle-margins-wide)



;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Projectile

(setq projectile-completion-system 'ivy)
(setq projectile-ignore-global '(".DS_Store" ".gitmodules" ".gitignore"))
;; (setq projectile-project-search-path '("~/projects/" "~/work/"))



;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Markdown

(defun markdown-setup ()
	(interactive)
	(visual-line-mode 1)
	(setq buffer-face-mode-face '(:family "iA Writer Quattro S" :height 200 :foreground "#aba7a0"))
	(buffer-face-mode)
	(setq line-spacing 3)
	(setq left-margin-width 8)
	(setq right-margin-width 8)
	(flyspell-mode 1)
	(setq global-hl-line-mode nil)
	(setq header-line-format " "))
(add-hook 'markdown-mode-hook #'markdown-setup)
(add-hook 'markdown-mode-hook 'prettify-symbols-mode)


;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Org-Mode

(defun split-and-indirect-orgtree ()
"Splits window to the right and opens an org tree section in it"
(interactive)
(split-window-right)
(org-tree-to-indirect-buffer)
(windmove-right))


(defun kill-and-unsplit-orgtree ()
"Kills the cloned buffer and deletes the window."
(interactive)
(kill-this-buffer)
(delete-window))


(with-eval-after-load 'org
	(setq org-agenda-files '("~/Org/Notes/"
	                         "~/Org/Agenda/"))
	(setq org-default-notes-file "~/Org/Notes/notes.org")
	(setq org-ellipsis "⤵")
	(setq org-catch-invisible-edits 'show-and-error)
	(setq org-hide-emphasis-markers t)
	(setq org-fontify-whole-heading-line t)
	(setq org-tags-column 0)
	(setq org-bullets-bullet-list '("⬢" "◆" "▲" "■" ""))
	(setq org-indent-mode t)
	(setq org-adapt-indentation t)
	(setq line-move-visual t)
	; Shortcuts to Interactive Functions
	(define-key org-mode-map [f9]  #'split-and-indirect-orgtree)
	(define-key org-mode-map [f12] #'kill-and-unsplit-orgtree)
	(define-key org-mode-map [f7]  #'org-html-export-to-html))


; Things we can't set as defaults above, we can set here
(defun org-setup ()
	(setq line-spacing 3)
	(flyspell-mode 1)
	(setq global-hl-line-mode nil)
	(set-fringe-mode 0)
	(setq left-margin-width 5)
	(setq right-margin-width 5)
	(setq header-line-format " ")
	(olivetti-mode 1))
(add-hook 'org-mode-hook #'org-setup)

;; The Hooks! Might be faster to set this as separate hooks instead of one big function
(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'prettify-symbols-mode)


(defun my-org-config/setup-buffer-face ()
	(setq buffer-face-mode-face '(:family "iA Writer Mono S"))
	(buffer-face-mode)
)
(add-hook 'org-agenda-mode-hook 'my-org-config/setup-buffer-face)

(custom-theme-set-faces
	'user
	'(variable-pitch ((t (:family "iA Writer Quattro S" :height 200 :foreground "#a5967e"))))
	'(fixed-pitch ((t (:family "iA Writer Mono S" :height 180 ))))
	'(flyspell-incorrect ((t (:foreground "#d3ebe9" :background "#c23127"))))
	'(header-line ((t (:background "#1c1e1f" :height 220))))
	'(org-document-title        ((t (:foreground "#f2f2f2" :weight bold :height 400))))
	'(org-meta-line             ((t (:inherit (font-lock-comment-face fixed-pitch)))))
	'(org-document-info         ((t (:foreground "#51c4b5"))))
	'(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
	'(org-block                 ((t (:inherit fixed-pitch))))
	'(org-link                  ((t (:foreground "royal blue" :underline t))))
	'(org-property-value        ((t (:inherit fixed-pitch))) t)
	'(org-special-keyword       ((t (:inherit (font-lock-comment-face fixed-pitch)))))
	'(org-tag                   ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
	'(org-verbatim              ((t (:inherit (shadow fixed-pitch)))))
	'(org-indent                ((t (:inherit (org-hide fixed-pitch)))))
	'(org-level-1               ((t (:foreground "#ffaf69"))))
	'(org-level-2               ((t (:foreground "#3fc6b7"))))
	'(org-level-3               ((t (:foreground "#dc4d59"))))
	'(org-list-dt               ((t (:foreground "#ea412b"))))
	'(org-ellipsis              ((t (:foreground "#51c4b5")))))


;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; Writing Window Setup

(defun write-window-setup ()
(interactive)
	(split-window-right)
	(windmove-right)
	(split-window-below)
	(windmove-left)
	(find-file "draft.org" t)
	(windmove-right)
	(find-file "notes.md" t)
	(windmove-left))
	
(with-eval-after-load 'dired
	(define-key dired-mode-map [f3] #'write-window-setup))


;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
)
  
;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
