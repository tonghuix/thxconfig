(require 'mu4e)

;; default
(setq mu4e-maildir "~/muttMail")
(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
      '( ("/inbox"               . ?i)
         ("/[Gmail].Sent Mail"   . ?s)
         ("/[Gmail].Trash"       . ?t)
         ("/[Gmail].All Mail"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "getmail"
      mu4e-update-interval 600)  ;; update every 10 minutes

;; something about ourselves
(setq
 user-mail-address "tonghuix@gmail.com"
 user-full-name  "Tong Hui"
 message-signature
 (concat
  "Tong Hui\n"
  "Email: tonghuix@gmail.com\n"
  "\n"))

;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu

;;(require 'smtpmail)
;; (setq message-send-mail-function 'smtpmail-send-it
;;       starttls-use-gnutls t
;;       smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;       smtpmail-auth-credentials
;;       '(("smtp.gmail.com" 587 "renws1990@gmail.com" nil))
;;       smtpmail-default-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-service 587)

;; alternatively, for emacs-24 you can use:
;;(setq message-send-mail-function 'smtpmail-send-it
 ;;   smtpmail-stream-type 'starttls
 ;;   smtpmail-default-smtp-server "smtp.gmail.com"
 ;;   smtpmail-smtp-server "smtp.gmail.com"
 ;;   smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

;; Try to display images in mu4e
(setq
 mu4e-view-show-images t
 mu4e-view-image-max-width 800)

;; sending mail
(setq message-send-mail-function 'message-send-mail-with-sendmail
      sendmail-program "msmtp"
      user-full-name "Tong Hui")


(setq mu4e-confirm-quit nil
      mu4e-headers-date-format "%d/%b/%Y %H:%M" ; date format
      mu4e-html2text-command "html2text -utf8 -width 72"
      )

(add-hook 'message-send-hook
  (lambda ()
    (unless (yes-or-no-p "Sure you want to send this?")
      (signal 'quit nil))))
