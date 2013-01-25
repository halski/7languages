(defprotocol Canine
	(bark [_] "do bark")
	(wag [_]  "do tail wag"))

(defprotocol Animal
	(eat [_] "do eat"))

(defrecord Rottweiler [name]
	Canine
	(bark [_] (println (str "Rottweiler " name ", barks!")))
	(wag [_] (println (str "Rottweiler " name ", wags!")))
	Animal
	(eat [_] (println (str "Rottweiler " name ", eats!"))))

