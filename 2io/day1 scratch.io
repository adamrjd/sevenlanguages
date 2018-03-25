# PROTOTYPES

# ** all new objects are clones of other objects or aliases/references to other objects
# ** this makes cloned objects "prototypes" of new objects
# ** a new object that is not a clone of an old object is just a reference to an existing object

v := Object clone
#==>  Object_0x7ff49d49a110:

a := v
#==>  Object_0x7ff49d49a110:

v
#==>  Object_0x7ff49d49a110:

# ** the root prototype is Object
# ** creating new objects is as easy as cloning an existing one

v := Object clone
#==>  Object_0x7ff49f0fa950:

v := Object clone
#==>  Object_0x7ff49d4464b0:

# SLOTS

# ** all objects have slots
v description := "a thing"
#==>  Object_0x7ff49d49a110:
#  description      = "a thing"

# ASSIGNMENT
v aDescription := "no error if key does not exist"
v noDescription = "will throw an exception if key does not exist"

# MESSAGING

# ** all function calls are methods sent as messages to objects
# ** we then receive as output the results of the method call
v description
#==> a thing
v slotNames
#==> list(description)

# INHERITANCE
Vehicle := Object clone
#  type             = "Vehicle"

Vehicle description := "something that takes you far away"
Vehicle
#  description      = "something that takes you far away"
#  type             = "Vehicle"

Car := Vehicle clone
Car
#  type             = "Vehicle"
Car slotNames
#==> list(type)
#** Io did not pass on Vehicle's slots
#** but it's still a vehicle and vehicle has a description slot so
Car description
#==> something that takes you far away

#** Io assumes a capital-case clone is a new Type, and thusly its name is its type
#** so naturally we can do this and find...
ferrari := Car clone
ferrari slotNames
#==> list()
ferrari type
#==> Car
#** ... that "ferrari" is not a type of Car, but an instance of the object Car with the type Car

#** this is a pretty simplistic and beautiful way to create a type by idiom rather than syntax

# METHODS
#** all methods are objects of type Block
method() type
#==> Block

#** blocks can be assigned to slots/objects to become objects that are callable by other objects
#** i.e. idiomatically and literally a method
a := method("is very cool")
a
#==> is very cool

Car drive := method("Vroom" println)
Car drive
#Vroom

#** this method defined on the prototype is immediately available on its inheritors
ferrari drive
#Vroom

# USEFUL METHODS
ferrari proto
#==>  Car_0x7fc378dc91d0:
#  drive            = method(...)
#  type             = "Car"

ferrari getSlot("type")


# NAMESPACES
#** "...are a honking great idea"
Lobby
#==>  Object_0x7fc378c1b1f0:
#  Car              = Car_0x7fc378dc91d0
#  Lobby            = Object_0x7fc378c1b1f0
#  Protos           = Object_0x7fc378c1b110
#  Vehicle          = Vehicle_0x7fc37ac04b50
#  _                = Object_0x7fc378c1b1f0
#  a                = method(...)
#  exit             = method(...)
#  ferrari          = Car_0x7fc37ae872e0
#  forward          = method(...)
#  set_             = method(...)

# TRUE, FALSE, NIL
#** they're all singletons
true clone
#==> true
nil clone
#==> nil

#** ... and we can create our own
Highlander := Object clone
Highlander clone := Highlander



# GROUND RULES
#• Every thing is an object.
#• Every interaction with an object is a message.
#• You don’t instantiate classes; you clone other objects called proto- types.
#• Objects remember their prototypes.
#• Objects have slots.
#• Slots contain objects, including method objects.
#• A message returns the value in a slot or invokes the method in a slot.
#• If an object can’t respond to a message, it sends that message to its prototype.