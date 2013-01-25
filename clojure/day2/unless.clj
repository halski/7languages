; Broken unless
; (defn unless [test body] (if (not test) body))

(defmacro unless-if [test body] 
	(list 'if (list 'not test) body ))

(defmacro unless [test body]
	(list 'if test nil (list 'do body)))



