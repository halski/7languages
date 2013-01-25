(defprotocol Compass
	(direction [c])
	(l [c])
	(r [c]))

(def directions [:N :E :S :W])

(defn turn 
	[base amount]
	(rem (+ base amount) (count directions) ))

(defrecord SimpleCompass [bearing]
	Compass
	(direction [_] (directions bearing))
	(l [_] (SimpleCompass. (turn bearing 3)))
	(r [_] (SimpleCompass. (turn bearing 1)))
	Object
	(toString [this] (str "[" (direction this) "]")))
