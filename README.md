# Day-10-100DaysOfSwift
Day 10 of 100 Days of Swift.

# Day 10

## Learnt the following:

## Classes and Inheritence:

### 1. Classes 
  - Should be marked with class keyword
  - create your own `init` initializer mandatory
  - `self.propertyName` referring to current instance property
  
### 2. Inheritence
  - Create a Main Parent Class - Super class
  - Create a new class (subclass) and inherit from the super class
  - All the main classe's properties and methods are inherited
  - `class classname: SuperClass`
  - The subclass can have its own initializer or call the super class initializer via `super.init()`

### 3. Overriding Methods
  - new implementations of existing parent class methods - usually prefixed by override

### 4. Final Classes
  - Classes which are prefixed final can stop subclasses which cannot inherit properties from super class
  - use final class as it is

### 5. Copying
  - When a class is copied to another variable - it points to same object in memory
  - When a struct is copied on other hand to another variable - both are different and it points to different object in memory.
  - class is a refrence type
  - struct is a value type

### 6. Deinitializers
  - To clean up when object is destoryed
  - structs dont have deinit

### 7. Mutability
  - When class is created constant using let then can change variable properties
  
