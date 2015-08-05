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
  (use-package groovy-mode)
  )


;; For each package, define a function groovy/init-<package-groovy>
;;
;; (defun groovy/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
