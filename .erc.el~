 (require 'tls)

(setq erc-default-coding-system '(utf-8 . utf-8))

(setq erc-nick "tonghuix"
      erc-user-full-name "tonghuix"
      erc-password "xxxxxx")

; M-x start-irc
 (defun start-irc ()
   "Connect to IRC."
   (interactive)
  ; (erc-tls :server "irc.oftc.net" :port 6697
   ;     :nick "ootput" :full-name "ootput")
   (erc-tls :server "irc.freenode.net" :port 6697
        :nick "tonghuix" :full-name "tonghuix"))

(erc-autojoin-mode t)              ;joining && autojoining
(setq erc-autojoin-channels-alist
      '(("freenode.net" "#ubuntu" "#ubuntu-cn" "#openbrd")))

(require 'erc-stamp)               ;时间戳
(erc-stamp-mode t)
(setq erc-timestamp-right-column 0)

(erc-log-mode t)                   ;聊天记录
(setq erc-log-channels-directory "~/logs/erc/"
      erc-save-buffer-on-part t
      erc-log-file-coding-system 'utf-8)

;; check channels
(erc-track-mode t)
(setq erc-track-exclude-server-buffer t ;Don't track server buffer
      erc-track-exclude-types '("JOIN" "KICK" "NICK" "PART" "QUIT" "MODE" "333" "353")
      erc-hide-list '("JOIN" "PART" "QUIT") ;don't show any of this
      erc-track-showcount t)                ;显示数目

(setq erc-header-line-uses-tabbar-p t) ;使用tabbar
(erc-ring-mode t)                      ;使用M-n和M-p浏览历史
;(erc-fill-mode nil)                    ;关闭autofill

;; Notify my when someone mentions my nick.——from emacswiki
(defun erc-global-notify (matched-type nick msg)
  (interactive)
  (when (eq matched-type 'current-nick)
    (shell-command
     (concat "notify-send -t 4000 -c \"im.received\" \""
             (car (split-string nick "!"))
             " mentioned your nick\" \""
             msg
             "\""))))
(add-hook 'erc-text-matched-hook 'erc-global-notify)

;; Don't track server buffer
(setq erc-track-exclude-server-buffer t)
;; Don't track join/quit
(setq erc-track-exclude-types '("NICK" "333" "353" "JOIN" "PART" "QUIT"))

;; Channel specific prompt
(setq erc-prompt (lambda ()
                   (if (and (boundp 'erc-default-recipients)
                            (erc-default-target))
                       (erc-propertize (concat (erc-default-target) ">")
                                       'read-only t
                                       'rear-nonsticky t
                                       'front-nonsticky t)
                     (erc-propertize (concat "ERC>")
                                     'read-only t
                                     'rear-nonsticky t
                                     'front-nonsticky t))))




