(global-set-key "\C-crerR" 'resource-manager-edit-resource-file)
(global-set-key "\C-crerP" 'resource-manager-edit-productivity-requirements)
(global-set-key "\C-crerI" 'resource-manager-iterate-resource-file)

(defvar resource-manager-state-dir "/var/lib/myfrdcsa/codebases/minor/resource-manager/data-git/states")
(defvar resource-manager-state-file (frdcsa-el-concat-dir (list resource-manager-state-dir "state.pl")))

(defun resource-manager-edit-resource-file (&optional arg)
 "Jump to the latest version of the log file"
 (interactive "P")
 (if (not arg)
  (ffap resource-manager-state-file)
  (dired resource-manager-state-dir))
 (end-of-buffer))

(defun resource-manager-edit-productivity-requirements ()
 ""
 (interactive)
 (ffap "/var/lib/myfrdcsa/codebases/minor/resource-manager/productivity_requirements.pl"))


(defun resource-manager-consumed-item ()
 ""
 (interactive)
 ;; FIXME: do a search of the inventory, and then list those items
 ;; that match
 (kmax-not-yet-implemented))

(defun resource-manager-iterate-resource-file (&optional arg)
 "Jump to the latest version of the log file"
 (interactive "P")
 (let* ((first (concat (kmax-timestamp) ".pl"))
	(new-file (frdcsa-el-concat-dir (list resource-manager-state-dir first))))
  (shell-command
   (concat
    "cp "
    (shell-quote-argument (file-'<REDACTED>'-links resource-manager-state-file))
    " "
    (shell-quote-argument new-file)
    "; rm "
    (shell-quote-argument resource-manager-state-file)
    "; cd " resource-manager-state-dir " && "
    "ln -s " (shell-quote-argument first) " " (shell-quote-argument resource-manager-state-file)))
  (ffap (file-'<REDACTED>'-links resource-manager-state-file))
  ;; FIXME: fix the today([YYYY-MM-DD]). statement
  ))
