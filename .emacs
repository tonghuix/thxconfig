
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(server-start)
(add-hook 'kill-emacs-hook
(lambda()
(if (file-exists-p "~/.emacs.d/server/server")
(delete-file "~/.emacs.d/server/server"))))
;;(add-to-list 'load-path "/home/tonghuix/.emacs.d/elpa/"
;; Package

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(setq frame-title-format "%b")
;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)
;(setq show-paren-style 'expression) ; highlight entire bracket expression
;; enable visual feedback on selections
(setq transient-mark-mode t) 

(require 'fill-column-indicator)

;; default to better frame titles
;;(global-hl-line-mode 1) ; turn on highlighting current line
(setq ansi-color-for-comint-mode t)
(customize-group 'ansi-colors)
(kill-this-buffer);关闭customize窗口
(electric-pair-mode 1) ;enable electric-pair-mode, insert Parenthesis/Brackests automaticly

;; after copy Ctrl+c in X11 apps, you can paste by `yank' in emacs
(setq x-select-enable-clipboard t)

;; after mouse selection in X11, you can paste by `yank' in emacs
(setq x-select-enable-primary t)


;自定义按键
(global-set-key [f1] 'eshell);F1进入Shell
(global-set-key [f5] 'gdb);F5调试程序
(setq compile-command "make -f Makefile")
(global-set-key [f7] 'do-compile);F7编译文件
(global-set-key [f8] 'other-window);F8窗口间跳转
;(global-set-key [C-return] 'kill-this-buffer);C-return关闭当前buffer
;(global-set-key [f10] 'split-window-vertically);F10分割窗口
(global-set-key [f11] 'delete-other-windows);F11 关闭其它窗口
(global-set-key [f12] 'my-fullscreen);F12 全屏
(global-set-key (kbd "C-,") 'backward-page);文件首
(global-set-key (kbd "C-.") 'forward-page);文件尾

;; default to unified diffs
(setq diff-switches "-u")

;;自动换行
;; (toggle-truncate-lines t)

(global-linum-mode 1)

;; always end a file with a newline
;(setq require-final-newline 'query)

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
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("b5cff93c3c6ed12d09ce827231b0f5d4925cfda018c9dcf93a2517ce3739e7f1" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(elfeed-feeds
   (quote
    ("https://media.libreplanet.org/atom/" "http://esr.ibiblio.org/?feed=rss2" "http://fossforce.com/feed/" "http://static.fsf.org/fsforg/rss/news.xml" "http://static.fsf.org/fsforg/rss/blogs.xml" "http://www.howtoforge.com/node/feed" "http://feeds.feedburner.com/ItsFoss" "https://marguerite.github.io/feed.xml" "http://www.masteringemacs.org/feed/" "http://opensource.com/feed" "https://www.phoronix.com/rss.php" "http://www.gnu.org/rss/whatsnew.rss" "https://sammy.hk/feed/" "https://www.marguerite.su/feed/" "http://distrowatch.com/news/dw.xml" "http://emacser.com/feed" "http://feeds.feedburner.com/Fossbytes" "https://www.fossmint.com/feed/" "http://www.ibm.com/developerworks/views/linux/rss/libraryview.jsp" "http://itsfoss.com/feed/" "http://www.linuxjournal.com/node/feed" "http://linuxtoday.com/backend/biglt.rss" "https://www.linux.com/rss/feeds.php" "http://www.linuxinsider.com/perl/syndication/rssfull.pl" "http://feeds.feedburner.com/linuxtoy" "http://lwn.net/headlines/newrss" "http://feeds.feedburner.com/d0od" "http://feeds.feedburner.com/tecmint" "http://www.tecmint.com/category/linux-commands/feed/" "http://www.ubuntugeek.com/feed/" "http://feeds2.feedburner.com/webupd8" "http://googleblog.blogspot.com/atom.xml" "http://www.bbc.co.uk/zhongwen/simp/index.xml" "http://www.ftchinese.com/rss/feed" "http://www.chinagfw.org/feeds/posts/default" "http://rss.slashdot.org/Slashdot/slashdot" "http://feeds.feedburner.com/solidot" "https://soylentnews.org/index.atom" "https://mandywangblog.wordpress.com/feed/" "http://feed.xbeta.info/" "http://feed.appinn.com/" "http://feed.iplaysoft.com/" "http://cnpolitics.org/feed/" "http://feed.williamlong.info/" "https://www.freemindworld.com/blog/feed" "http://feeds2.feedburner.com/programthink" "http://chinadigitaltimes.net/chinese/category/%E7%BC%96%E8%BE%91%E6%8E%A8%E8%8D%90/feed/" "http://www.cppblog.com/converse/rss.aspx" "http://www.ibm.com/developerworks/cn/views/rss/customrssatom.jsp?zone_by=Linux&type_by=Articles&type_by=Tutorials&search_by=&day=1&month=01&year=2005&max_entries=20&feed_by=rss&isGUI=true&Submit.x=34&Submit.y=9" "http://www.ibm.com/developerworks/cn/views/rss/customrssatom.jsp?Submit.x=34&Submit.y=9&day=1&feed_by=rss&isGUI=true&max_entries=20&month=01&search_by=&type_by=Articles&type_by=Tutorials&year=2005&zone_by=Linux" "http://blog.sina.com.cn/rss/1581720921.xml" "http://coolshell.cn/?feed=rss2" "http://feeds.feedburner.com/ruanyifeng" "https://share.dmhy.org/topics/rss/team_id/576/rss.xml" "https://flying609.wordpress.com/feed/" "https://airfactsjournal.com/feed/" "https://www.youtube.com/feeds/videos.xml?channel_id=UCq4urPJHPbzOsQsgxYKGd2A" "http://www.av8rdan.com/feeds/posts/default" "https://airscapemag.com/feed/" "https://blog.aopa.org/aopa/feed/" "https://www.aopa.org/rss" "http://aviationhumor.net/feed/" "https://www.boldmethod.com/rss/" "https://cessnaflyer.org/?format=feed&type=rss" "https://feed43.com/6316444650766850.xml" "http://feeds.feedburner.com/FlightLearnings" "http://www.flightgear.org/feed/" "http://www.flightglobal.com/rss/general-aviation-news-rss/" "https://generalaviationnews.com/feed/" "https://xe.ivao.aero/feed/" "http://johnandmartha.kingschools.com/feed/" "https://www.planeandpilotmag.com/feed/" "https://feed43.com/7215045417240565.xml" "http://feed.pixnet.net/blog/posts/rss/apexflight" "https://yinlei.org/x-plane10/big5.php?p=atom.xml")))
 '(fci-rule-color "#eee8d5")
 '(font-use-system-font t)
 '(package-selected-packages
   (quote
    (markdown-preview-mode markdown-toc color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme-modern tabbar session popup pod-mode markdown-mode magit jabber initsplit htmlize graphviz-dot-mode dpkg-dev-el diminish devscripts csv-mode browse-kill-ring boxquote bar-cursor fill-column-indicator)))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook (quote (text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))

(add-to-list 'after-make-frame-functions
	     (lambda (new-frame)
	       (select-frame new-frame)
		;; Setting English Font
		(set-face-attribute 'default nil :font "Fira Mono 12")

		;; Chinese Font
		(dolist (charset '(kana han symbol cjk-misc bopomofo))
		  (set-fontset-font (frame-parameter nil 'font)
		         charset (font-spec :family "Noto Sans CJK SC"
                		                       :size 16)))))

;=============== muse mode ========================
;
;(load-file "~/.emacs-muse.el")   ;; muse config
;(require 'muse-mode)
;(require 'muse-context)

;(setq muse-html-charset-default "utf-8")
;(setq muse-html-encoding-default "utf8")
;(setq muse-pdf-encoding-default "utf8")
;(setq muse-context-encoding-default "utf8")

;;================== jabber ===================================

;(require 'jabber)

;(setq jabber-account-list '(
 ;                           ("tonghuix@gmail.com"
;			     (:password . nil)
 ;                             (:network-server . "talk.google.com")
 ;                             (:port . 443)
 ;                             (:connection-type . ssl))
 ;                           ))

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

;(setq whitespace-style '(face empty tabs lines-tail trailing))
;(global-whitespace-mode t)
(load-file "~/.emacs.d/column-marker.el")
(require 'column-marker)
  (add-hook 'c-mode-hook (lambda () (interactive) (column-marker-1 80)))
  (add-hook 'c++-mode-hook (lambda () (interactive) (column-marker-1 80)))
  (global-set-key [?\C-c ?m] 'column-marker-1)
  (add-hook '-mode-hook (lambda () (interactive) (column-marker-1 80)))

; (add-hook 'c-mode-common-hook 'doxymacs-mode)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


(require 'xcscope) ;;加载xcscope
(require 'cedet) ;;加载cedet
(global-set-key [(f5)] 'speedbar)
(require 'ecb) ;;加载ecb
(require 'session) ;;加载session
(add-hook 'after-init-hook 'session-initialize) ;; 启动时初始化session
;(require 'doxymacs) ;; 启动doxymacs
;(add-hook 'c-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode
;(add-hook 'c++-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode
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

;;================== Weibo.emacs ===================
(add-to-list 'load-path "/home/tonghuix/.emacs.d/weibo.emacs/")
(require 'weibo)

;;=================== mu4e ===========================
(load-file "~/.mu4e.el")
(require 'mu4e)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
