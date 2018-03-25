# prototypes

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

# slots

# ** all objects have slots
v description := "a thing"
#==>  Object_0x7ff49d49a110:
#  description      = "a thing"

# assignment
v aDescription := "no error if key does not exist"
v noDescription = "will throw an exception if key does not exist"

# messaging

# ** all function calls are methods sent as messages to objects
# ** we then receive as output the results of the method call
v description
#==> a thing
v slotNames
#==> list(description)

# assignments

