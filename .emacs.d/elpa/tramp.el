(require 'tramp)

(setq tramp-default-method "ssh")
(tramp-set-completion-function "ssh"
 '((tramp-parse-sconfig "~/.ssh/config")))
(add-to-list 'tramp-default-proxies-alist
             '(nil "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
             '("localhost" nil nil))
(add-to-list 'tramp-default-proxies-alist
             '((regexp-quote (system-name)) nil nil))
(add-to-list 'backup-directory-alist
             (cons tramp-file-name-regexp nil))
(setq tramp-auto-save-directory "/tmp")
