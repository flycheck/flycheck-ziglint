;;; flycheck-ziglint.el --- Flycheck for ziglint  -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2025  Shen, Jen-Chieh

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Maintainer: Shen, Jen-Chieh <jcs090218@gmail.com>
;; URL: https://github.com/flycheck/flycheck-ziglint
;; Version: 0.1.0
;; Package-Requires: ((emacs "26.1") (flycheck "0.22") (zig-mode "0.0.8"))
;; Keywords: tools

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Flycheck for ziglint.
;;

;;; Code:

(require 'flycheck)

(flycheck-define-checker ziglint
  "Dart static analyzer using ziglint."
  :command ("ziglint")
  :error-patterns
  ((info line-start (file-name) ":" line ":" column ": " (message) line-end))
  :modes (zig-mode))

;;;###autoload
(defun flycheck-ziglint-setup ()
  "Setup flycheck-package."
  (interactive)
  (add-to-list 'flycheck-checkers 'ziglint))

(provide 'flycheck-ziglint)
;;; flycheck-ziglint.el ends here
