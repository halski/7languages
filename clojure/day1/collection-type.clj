(def collectionSymbolMap {clojure.lang.PersistentArrayMap :map, clojure.lang.PersistentList :list, clojure.lang.PersistentVector :vector})

(defn collection-type [coll]
	(collectionSymbolMap (class coll)))

