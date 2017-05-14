;; Setting the package repositories
(setq package-archives
    '(("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path. If not done then functions like
;; package-installed-p won't be recognized
(package-initialize)

;; Setting apropos to sort by score
(setq apropos-sort-by-scores t)

;; Enabling the windmove by default which allows to switch
;; to windows using SHIFT <left>, <right>, <up>, <down>
(windmove-default-keybindings)

;; The packages that need to be installed
(defvar my-packages
  '(;; key binding and code colorization for clojure
    ;; https://github.com/clojure-emacs/clojure-mode
    clojure-mode

    ;; extra syntax highlighting for clojure
    clojure-mode-extra-font-locking

    ;; integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cide
    cider

    ;; Typescript majore mode
    typescript-mode

    ;; Typescript interactive development environment
    ;; https://github.com/ananthakumaran/tide
    tide

    ;; On the fly syntax checking
    ;; https://github.com/flycheck/flycheck
    flycheck
    
    ;; makes handling lisp expressions much, much easier
    ;; Cheatsheet: https://www.emacswiki.org/emacs/ParaeditCheatsheet
    paredit

    ;; Enchanges M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    ;; https://github.com/nonsequitur/smex
    smex
    
    ;; allow ido usage in as many contexsta as possible.
    ;; see customization/navigation.el line 23 for a description
    ;; of ido
    ido-ubiquitous

    ;; project navigation
    projectile

    ;; colorful paranthesis matching
    rainbow-delimiters

    ;; edit html tags like sexps
    tagedit

    ;; Company mode
    company

    ;; git integration
    magit))


;; On OS X, an Emacs instance started from the graphical user
;; interface will have a different environment than a shell in a
;; terminal window, because OS X does not run a shell during the
;; login. Obviously this will lead to unexpected results when
;; calling external utilities like make from Emacs.
;; This library works around this problem by copying important
;; environment variables from the user's shell.
;; https://github.com/purcell/exec-path-from-shell
(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

;; Go over the list of my-packages and install them if not installed
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Initializing the exec-path-from-shell on startup for Mac
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Initializing smex on startup
;; Also set the global M-x & M-X binding to launch smex instead
;; of the default command executor
;; => C-h f, while Smex is active will describe the command
;; => C-h w, shows the keybinding of the selected command
;; => M-. Jumps to the definition of the selected command
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;; This is the old M-x

;; Set minor modes to open for Clojure mode
;; This includes Paredit, Cider
(require 'clojure-mode)
(defun turn-on-paredit () (paredit-mode 1))
(defun turn-on-cider () (cider-mode 1))
(add-hook 'clojure-mode 'turn-on-paredit)
(add-hook 'clojure-mode 'turn-on-cider)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" default)))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(winner-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
