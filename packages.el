;;; packages.el --- groovy Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar groovy-packages
  '(
    ;; package groovys go here
    groovy-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar groovy-excluded-packages '()
  "List of packages to exclude.")

(defun groovy/init-groovy-mode ()
  "Initialize groovy-mode"
  (use-package groovy-mode :config
    (evil-leader/set-key-for-mode 'groovy-mode "m b" 'groovy-send-buffer
      "m l" 'groovy-send-line
      "m d" 'groovy-send-definition
      "m r" 'groovy-send-region
      "m L" 'groovy-send-line-and-go
      "m D" 'groovy-send-definition-and-go
      "m R" 'groovy-send-region-and-go
     ))
  )

(defun groovy-send-line ()
  (interactive)
  (groovy-send-region (line-beginning-position) (line-end-position)))

(defun groovy-send-line-and-go ()
  (interactive)
  (groovy-send-line)
  (switch-to-groovy t))


(defun groovy-send-buffer ()
  (interactive)
  (groovy-send-region (point-min) (point-max)))
