                                     
;;***************************************************************************************
;; Desc锛甈聘otongbin's .emacs-muse.el
;;
;; 锛�2008.10.30
;;***************************************************************************************


;;**************************************
;; Muse config
;;
;;**************************************

;;(load-file "~/myemacs/.emacs-muse.el")

;; muse install directory
(add-to-list 'load-path "/usr/share/emacs/site-lisp/muse-el")

;; Load authoring mode
(require 'muse-mode)

;; Load publishing mode 
(require 'muse-html)
(require 'muse-wiki)
(require 'muse-latex)
(require 'muse-texinfo)
(require 'muse-context)
(require 'muse-docbook)


;; create a Muse project
(require 'muse-project)
(setq muse-project-alist
	 '(("note"                                     ;; project name
	   ("~/note/work" :default "index")             ;; source muse location
	   (:base "pdf"  :path "~/note/pdf")
	   (:base "html" :path "~/note/pub"))         ;; project publish path location
	  ; (:base "context" :path"~/note/slide")
;	   (:base "docbook" :path"~/note/pub")

	  )
)
	 
(muse-derive-style "ut" "html"
		   :style-sheet 'ut-style-sheet)

(setq ut-style-sheet
	  "<style type=\"text/css\">
body
{
    background: white;
    margin: 0.5in;
    font-family: arial,helvetica,sans-serif;
}

h1.title
{
    font-size: 250%;
    font-style: normal;
    font-weight: bold;
    color: black;
}

h2.subtitle
{
    font-size: 150%;
    font-style: italic;
    color: black;
}

h2.title
{
    font-size: 150%;
    font-style: normal;
    font-weight: bold;
    color: black;
}

h3.title
{
    font-size: 125%;
    font-style: normal;
    font-weight: bold;
    color: black;
}

h4.title
{
    font-size: 100%;
    font-style: normal;
    font-weight: bold;
    color: black;
}

em
{
    font-weight: bold;
    font-style: normal;
}

.toc b
{
    font-size: 125%;
    font-style: normal;
    font-weight: bold;
    color: black;
}

p,li,ul,ol,dd,dt
{
    font-style: normal;
    font-weight: normal;
    color: black;
}

tt,pre
{
    font-family: courier new,courier,fixed;
}

.command, .screen, .programlisting
{
    font-family: courier new,courier,fixed;
    font-style: normal;
    font-weight: normal;
}

.filename
{
    font-family: arial,helvetica,sans-serif;
    font-style: italic;
}

a
{
    color: blue;
    text-decoration: underline;
}    

a:hover 
{
    background: rgb(75%,75%,100%);
    color: blue;
    text-decoration: underline;
}

a:visited 
{
    color: purple;
    text-decoration: underline;
}

img
{
    border: none;
}

.figure, .example, .table
{
    margin: 0.125in 0.5in;
}

.table table
{
    border-width: 1px;
    border-style: solid;
    border-color: black;
    border-spacing: 0;
    background: rgb(240,240,240);
}

.table td
{
    border: none;
    border-right: 1px black solid;
    border-bottom: 1px black solid;
    padding: 2px;
}

.table th
{
    background: rgb(180,180,180);
    border: none;
    border-right: 1px black solid;
    border-bottom: 1px black solid;
    padding: 2px;
}

.table p.title, .figure p.title, .example p.title
{
    text-align: left !important;
    font-size: 100% !important;
}

.author
{
    font-size: 100%;
    font-style: italic;
    font-weight: normal;
    color: black;
}

.sidebar 
{
    border-top: dotted 1px black;
    border-left: dotted 1px black;
    border-right: solid 2px black;
    border-bottom: solid 2px black;
    background: rgb(240,220,170);
    padding: 0 0.12in;
    margin: 0.5in;
}

.note .programlisting, .note .screen, 
.tip .programlisting, .tip .screen, 
.warning .programlisting, .warning .screen, 
.sidebar .programlisting, .sidebar .screen
{
    border: none;
    background: none;
}

.sidebar p.title
{
    text-align: center;
    font-size: 125%;
}

.note
{
    border: 1px solid black;
    background: rgb(252,246,220) url('images/note.png') no-repeat;
    margin: 0.12in 0;
    padding-left:55px; padding-right:55px; padding-top:0; padding-bottom:0
}

.tip
{
    border: 1px solid black;
    background: rgb(224,244,255) url('images/tip.png') no-repeat;
    margin: 0.12in 0;
    padding-left:55px; padding-right:55px; padding-top:0; padding-bottom:0
}

.warning
{
    border: 1px solid black;
    background: rgb(255,210,210) url('images/warning.png') no-repeat;
    margin: 0.12in 0;
    padding-left:55px; padding-right:55px; padding-top:0; padding-bottom:0
}

.programlisting, .screen
{
    font-size: 90%;
    color: black;
    margin: 1em 0.5in;
    padding: 0.5em;
    background: rgb(240,240,240);
    border-top: black dotted 1px;
    border-left: black dotted 1px;
    border-right: black solid 2px;
    border-bottom: black solid 2px;
}

.navheader, .navfooter
{
    border: black solid 1px;
    background: rgb(180,180,200);
}

.navheader hr, .navfooter hr
{
    display: none;
}
.akaedu	{ text-align:center;font-size:14px;padding:10px }
</style>")


;; Muse projects
;(require 'muse-project)
 
;(setq muse-project-alist
;      `(("proj1"
;          ("~/muse/proj1/" :default "index")
;         (:base "pdf" :path "~/publicsh/proj1/pdf)
;          (:base "xhtml" :path "~/publish/proj1/"))
;        ("proj2"
;          ("~/muse/proj2/" :default "index")
;         (:base "style2" :path "~/publish/proj2/")))) 

(setq muse-file-extension nil
	 muse-mode-auto-p t)
