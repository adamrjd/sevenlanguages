// Find:
// • Some Io example problems
// • An Io community that will answer questions 
// • A style guide with Io idioms
// Answer:
// 1) Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.
// 2) Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.
// 3) How can you tell what slots a prototype supports?
// 4) What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
// Do:
// 5) Run an Io program from a file.
// 6) Execute the code in a slot given its name.

#1)
// strongly typed
1+1
#==> 2
1+"one"
#   Exception: argument 0 to method '+' must be a Number, not a 'Sequence'

#2)
0 and true
#==> true
"" and true
#==> true
nil and true
#==> false

#3)
// not quite right but i like this approach idk
// doesn't address the fact that we could have a different namespace?
Object showSlots := method(obj,
	_ := obj clone
	slots := list()
	while(_ proto != Lobby,
		_ slotNames foreach(s, _ append(s));
		_ = obj proto
	);
)

#4)
// = is used when the key already exists; it overrides a value
// := is used to override or define a value for a given key
// ::= is identical to := ... i think ... but idiomatically is used for slots


#5) 
// $ echo '"hello world" println' > hello.io
// $ io hello.io

#6)
a := method(2 * x)
x := 5
obj := Object clone
obj m := a
m a()
#==> 10