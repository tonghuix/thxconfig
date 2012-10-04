;;
;; use emacs-w3m in Mew
;;(require 'mew-w3m)
;;(setq mew-prog-html '(mew-mime-text/html-w3m nil nil))
;;(setq mew-mime-multipart-alternative-list '("Text/Html" "Text/Plan" ".*"))

(setq mew-use-cached-passwd t)

;; using fetch for PGP instead of wget
(setq mew-prog-pgpkey "fetch")
(setq mew-prog-pgpkey-arg '("-q" "-o" "-"))
(setq mew-summary-reply-with-citation-position 'body)
(setq mew-cite-fields '("Date:" "From:"))
(setq mew-cite-format "\n\nOn %s %s wrote:\n")
(add-hook 'mew-before-cite-hook 'mew-header-goto-body)
(add-hook 'mew-draft-mode-newdraft-hook 'mew-draft-insert-signature)
;签名档 请确认你写好了签名文件，不自动加分隔符
;; (setq mew-signature-file "~/Mail/signature")
;; (setq mew-signature-as-lastpart t)
;; (setq mew-signature-insert-last t)
;Spam
(setq mew-summary-form-mark-spam t)
(setq mew-use-cached-passwd t)
;GPG签名设置（非加密） 首先确认你有没有GPG ID。
;; (setq mew-pgp-ascii-suffix "84599A3C")
;; (setq mew-protect-privacy-always t)
;; (setq mew-protect-privacy-always-type 'pgp-signature)

;; w3m
(setq mew-prog-text/html         'mew-mime-text/html-w3m) ;; See w3m.el
(setq mew-prog-text/html-ext     "/usr/bin/firefox")

(setq mew-prog-text/xml         'mew-mime-text/html-w3m) ;; See w3m.el
(setq mew-prog-text/xml-ext     "/usr/bin/firefox")

(setq mew-prog-application/xml         'mew-mime-text/html-w3m)
(setq mew-prog-application/xml-ext     "/usr/bin/firefox")

(setq mew-prog-application/X-Dvi         "/usr/bin/xdvi")


;;
;; SSL/TLS
(setq mew-config-alist
 '(
    (default
       (proto "%")
       (name "Tony Hui")
       (user "tonghuix")
       (mail-domain "gmail.com")
       (imap-server "imap.gmail.com")
       (imap-user "tonghuix@gmail.com")
       (imap-auth t)
       (imap-ssl t)
       (imap-ssl-port 993)
       (imap-delete t)
       (imap-header-only t)
       (imap-inbox-folder "%Inbox")
       (imap-trash-folder "%Trash")
       (smtp-auth t)
       (smtp-ssl t)
       (smtp-ssl-port 465)
       ;;(stmp-auth-list("PLAIN" "LOGIN" "CRAM-MD5"))
       (smtp-user "tonghuix@gmail.com")
       (smtp-server "smtp.gmail.com")
       (setq mew-ssl-verify-level 0) ;;没有会导致验证失败
    )
  )
)
;;
;; Save password
(setq mew-use-cached-passwd t)