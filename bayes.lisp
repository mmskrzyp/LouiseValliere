;;; Naive Bayesian classification of spoken phrases and stuff

(in-package :alice)

(defun remove-short-words (words)
  (remove-if (lambda (el)
               (< (length el) 3))
             words))

(defun split-sentence-to-words (sentence)
  (remove-short-words (remove-duplicates (split-sequence:split-sequence #\Space sentence)
                                         :test #'string=)))


(defun learn-association (sentence association)
  "Classify each word encountered in SENTENCE as being associated with ASSOCIATION."
  nil
  ;; TODO
)

(defun unlearn-association (sentence association)
  "Undo the effects of calling LEARN-ASSOCIATION on SENTENCE and ASSOCIATION."
  nil
  ;; TODO
)


(defun save-classifications ()
  "Dump Alice's brain to a file."
  nil
)

(defun load-classifications ()
  "Reload Alice's brain from a file."
  nil
)
