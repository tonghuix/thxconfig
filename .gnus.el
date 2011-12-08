;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;           Ray的 .gnus.el 文件
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
                                  (nnimap-address "imap.gmail.com")
                                  (nnimap-server-port 993)
                                  (nnimap-stream ssl)))
     ;;;;;;;;;;;;;;;;;;;;
     ;;   用户资料设定
     ;;;;;;;;;;;;;;;;;;;;
    (setq user-full-name "tonghuix")     ;;把Ray改成你自己名字
    (setq user-mail-address "tonghuix@gmail.org")     ;;用户电子邮件地址的配置,可以添个假的来避免垃圾邮件。
    (setq message-signature-file "~/newsfan.sig")     ;;签名文件

     ;;;;;;;;;;;;;;;;;;;;
     ;;   服务器的设定
     ;;;;;;;;;;;;;;;;;;;;
    (setq gnus-select-method '(nntp "news.cn99.com"))  ;;新帆
    (gnus-agentize)     ;;开启代理功能,为了能让gnus支持离线浏览,gnus 5.10.x会自动开启该功能。

     ;;;;;;;;;;;;;;;;;;;;
     ;;    自动换行
     ;;;;;;;;;;;;;;;;;;;;
    (add-hook 'message-mode-hook
        (lambda ()
            (setq fill-column 72);;这里的72是指等一行到了72个字符后开始换行
            (turn-on-auto-fill)))

     ;;;;;;;;;;;;;;;;;;;;
     ;;   各种发送设置
     ;;;;;;;;;;;;;;;;;;;;
    (setq gnus-posting-styles
        '((".*"
            (name "tonghuix")
            (address "tonghuix@gmail.net")
            (User-Agent "Emacs+gnus")
            (signature "Tonghuix\n A Embedded System Lover\n Love all!"))

    ;;;;;;;;;;;;;;;;;;;;;;;;
    ;;邮件发送方式的发送配置
    ;;;;;;;;;;;;;;;;;;;;;;;;
        ((message-mail-p)
             (name "tonghuix")
            (address "tonghuix@gmail.net")
            (User-Agent "Emacs+gnus")
            (signature "Tonghuix\n A Embedded System Lover\n Love all!")
        )

    ;;;;;;;;;;;;;;;;;;;;;;;;
    ;;发送到新帆的帖子的设定
    ;;;;;;;;;;;;;;;;;;;;;;;;
        (".*cn99.*"
           (name"Tonghuix")
            (address "tonghuix@gmail.net")
            (User-Agent "Emacs+gnus")
	    (signature "Tonghuix\n A Embedded System Lover\n Love all!")
        )
        ))

    ;;;;;;;;;;;;;;;;;;;;
    ;;   语言环境设定
    ;;;;;;;;;;;;;;;;;;;;
        (set-language-environment 'Chinese-GB)
        (setq gnus-default-charset 'chinese-iso-8bit
        gnus-group-name-charset-group-alist '((".*" . cn-gb-2312))
        gnus-summary-show-article-charset-alist
            '((1 . cn-gb-2312)
            (2 . gb18030)
            (3 . chinese-iso-8bit)
            (4 . gbk)
            (5 . big5)
            (6 . utf-8))
        gnus-newsgroup-ignored-charsets
        '(unknown-8bit x-unknown iso-8859-1))

     ;;;;;;;;;;;;;;;;;;;;
     ;;解决gb18030乱码
     ;;;;;;;;;;;;;;;;;;;;
     (setq gnus-newsgroup-ignored-charsets 
     '(unknown-8bit x-unknown gb18030))


    ;;;;;;;;;;;;;;;;;;;;
    ;;设定要显示的头信息
    ;;;;;;;;;;;;;;;;;;;;
        (setq gnus-visible-headers
            "^\\(^From:\\|^Subject:\\|^Date:\\|^Followup-To:
            \\|^X-Newsreader:\\|^User-Agent:\\|^X-Mailer:
            \\|Line:\\|Lines:\\|Content-Type:\\|NNTP-Posting-Host\\)")

    ;;;;;;;;;;;;;;;;;;;;
    ;;设定屏幕的分割比例
    ;;;;;;;;;;;;;;;;;;;;
    (gnus-add-configuration '(article (vertical 1.0
        (summary .40 point) (article 1.0))))

    ;;;;;;;;;;;;;;;;;;;;
    ;;自动显示图片
    ;;;;;;;;;;;;;;;;;;;;
    (auto-image-file-mode)
    (setq mm-inline-large-images t)
    (add-to-list 'mm-attachment-override-types "image/*")

    ;;;;;;;;;;;;;;;;;;;;
    ;;    杂  项
    ;;;;;;;;;;;;;;;;;;;;
        (setq gnus-confirm-mail-reply-to-news t
            message-kill-buffer-on-exit t
            message-elide-ellipsis "[...]\n"
        )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;           .gnus.el文件配置结束!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;本文严重抄袭了NewBlue的配置文件，并且拒付稿费！！谢谢！
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;