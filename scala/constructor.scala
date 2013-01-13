class Person(first_name: String) {
	println("OUTER CONSTR")
	def this(first_name: String, last_name: String){
		this(first_name)
		println("INNER CONSTR")
	}
	def talk() = println("HI")
}

val bob = new Person("Bob")
val bobTate = new Person("Bob", "Tate")
