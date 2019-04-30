(defalias 'yes-or-no-p 'y-or-n-p)
(column-number-mode 1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq auto-mode-alist
      (append
       '(("\\.tut$" . text-mode)
	 ("\\.req$" . text-mode))
       auto-mode-alist))
(add-hook 'text-mode-hook (lambda () (setq indent-tabs-mode nil)))
(setq-default indent-tabs-mode nil)
(define-key text-mode-map (kbd "<f8>") 'delete-trailing-whitespace)
(global-set-key (kbd "<f7>") 'query-replace-regexp)

