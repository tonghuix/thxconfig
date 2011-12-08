(server-start)
(add-hook 'kill-emacs-hook
(lambda()
(if (file-exists-p "~/.emacs.d/server/server")
(delete-file "~/.emacs.d/server/server"))))

;;; uncomment this line to disable loading of "default.el" at startup
 (setq inhibit-default-init t)

;; enable visual feedback on selections
;;(setq transient-mark-mode t)

;; default to better frame titles

(setq ansi-color-for-comint-mode t)
(customize-group 'ansi-colors)
(kill-this-buffer);关闭customize窗口

;自定义按键
(global-set-key [f1] 'shell);F1进入Shell
(global-set-key [f5] 'gdb);F5调试程序
(setq compile-command "make -f Makefile")
(global-set-key [f7] 'do-compile);F7编译文件
(global-set-key [f8] 'other-window);F8窗口间跳转
;(global-set-key [C-return] 'kill-this-buffer);C-return关闭当前buffer
(global-set-key [f10] 'split-window-vertically);F10分割窗口
(global-set-key [f11] 'delete-other-windows);F11 关闭其它窗口
(global-set-key [f12] 'my-fullscreen);F12 全屏
(global-set-key (kbd "C-,") 'backward-page);文件首
(global-set-key (kbd "C-.") 'forward-page);文件尾

(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;;自动换行
;; (toggle-truncate-lines t)

(global-linum-mode 1)

;; always end a file with a newline
;(setq require-final-newline 'query)
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-blue2)
(require 'recentf)
(recentf-mode t)

;;禁用工具栏
(tool-bar-mode nil)

;;开启图片显示功能
(setq auto-image-file-mode t)

(show-paren-mode t)
(setq x-select-enable-clipboard t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(defun up-slightly () (interactive) (scroll-up 3))
(defun down-slightly () (interactive) (scroll-down 3))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#233b5a" :foreground "#fff8dc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))


;=============== muse mode ========================

(load-file "~/.emacs-muse.el")   ;; muse config
(require 'muse-mode)
;(require 'muse-context)

(setq muse-html-charset-default "utf-8")
(setq muse-html-encoding-default "utf8")
(setq muse-pdf-encoding-default "utf8")
(setq muse-context-encoding-default "utf8")

;;================== jabber ===================================

(require 'jabber)

(setq jabber-account-list '(
                            ("tonghuix@gmail.com"
			     (:password . nil)
                              (:network-server . "talk.google.com")
                              (:port . 443)
                              (:connection-type . ssl))
                            ))

;;===================== mew =====================================
(setq EmacsPortable-global-tabbar 't) ; 开启标签栏支持
(setq EmacsPortable-global-ruler 't) ; 开启全局标尺
(setq EmacsPortable-popup-menu 't) ; 弹出式菜单.
(setq EmacsPortable-popup-toolbar 't) ; 弹出式工具栏
(require 'tabbar)
 (when (require 'tabbar nil t)
      (setq tabbar-buffer-groups-function
    	(lambda () (list "All Buffers")))
      (setq tabbar-buffer-list-function
    	(lambda ()
    	  (remove-if
    	   (lambda(buffer)
    	     (find (aref (buffer-name buffer) 0) " *"))
    	   (buffer-list))))
      (tabbar-mode))

;;============= Unities =========


(add-hook 'c-mode-common-hook 'doxymacs-mode)


(require 'xcscope) ;;加载xcscope
(require 'cedet) ;;加载cedet
(global-set-key [(f5)] 'speedbar)
(require 'ecb) ;;加载ecb
(require 'session) ;;加载session
(add-hook 'after-init-hook 'session-initialize) ;; 启动时初始化session
(require 'doxymacs) ;; 启动doxymacs
(add-hook 'c-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode
(add-hook 'c++-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode
(desktop-load-default) ;;读取默认desktop设置
(desktop-read) ;;读取当前目录保存的desktop设置 

;;; C/C++ Programming Enviroment
(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "linux")))
; 下面调整Tab键缩进为4个空格
(setq c-basic-offset 4)

;;;; CC-mode配置  http://cc-mode.sourceforge.net/
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

(defun my-c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  ;;; hungry-delete and auto-newline
  (c-toggle-auto-hungry-state 1)
  ;;按键定义
  (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
  (define-key c-mode-base-map [(return)] 'newline-and-indent)
  (define-key c-mode-base-map [(f7)] 'compile)
  (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
  ;;  (define-key c-mode-base-map [(tab)] 'hippie-expand)
  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)

;;预处理设置
(setq c-macro-shrink-window-flag t)
;;(setq c-macro-preprocessor "cpp")
(setq c-macro-cppflags " ")
(setq c-macro-prompt-flag t)
(setq hs-minor-mode t)
(setq abbrev-mode t)
)
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
 
;;;;我的C++语言编辑策略
(defun my-c++-mode-hook()
(setq tab-width 4 indent-tabs-mode nil)
(c-set-style "stroustrup")
;;  (define-key c++-mode-map [f3] 'replace-regexp)
)

;;CEDET
(defun my-indent-or-complete ()
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command))
  )
 
(global-set-key [(control tab)] 'my-indent-or-complete)

(setq semanticdb-project-roots 
(list
(expand-file-name "/")))

(autoload 'senator-try-expand-semantic "senator")
 
(setq hippie-expand-try-functions-list
      '(
        senator-try-expand-semantic
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-list
        try-expand-list-all-buffers
        try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-whole-kill
        )
      )

;;====================== ERC ======================

(load-file "~/.erc.el")
