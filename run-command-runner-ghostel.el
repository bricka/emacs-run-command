;;; run-command-runner-ghostel.el --- Run commands with ghostel -*- lexical-binding: t -*-

;; Copyright (C) 2026 Alex Figl-Brick

;; Author: Alex Figl-Brick <alex@alexbrick.me>
;; URL: https://github.com/bricka/emacs-run-command

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Runner for `run-command' based on ghostel.

;;; Code:

(require 'run-command-core)

(declare-function ghostel-exec "ext:ghostel")
(defvar ghostel-compile-buffer-name)

(defun run-command-runner-ghostel (command-line buffer-base-name output-buffer)
  "Command runner based on `ghostel-mode'.

Executes COMMAND-LINE in buffer OUTPUT-BUFFER.  Name the process BUFFER-BASE-NAME."
  (require 'ghostel)
  (require 'ghostel-compile)
  (let ((ghostel-compile-buffer-name (buffer-name output-buffer)))
    (ghostel-compile command-line)))

;;;; Meta

(provide 'run-command-runner-ghostel)

;;; run-command-runner-ghostel.el ends here
