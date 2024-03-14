class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('Generic animal sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('Woof!');
  }
}

// Step 2: Implement an interface
abstract class Moveable {
  void move();
}

class Cat extends Animal implements Moveable {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('Meow!');
  }

  @override
  void move() {
    print('Cat is walking');
  }
}

// Step 4: Initialize an instance of a class with data from a file
class AnimalLoader {
  static Animal loadAnimalFromFile(String fileName) {
    // Simulating loading data from a file
    // Here, we'll just return a hardcoded animal
    return Dog('Rex');
  }
}

// Step 5: Demonstrate the use of a loop
void printAnimalSounds(Animal animal, int times) {
  for (int i = 0; i < times; i++) {
    animal.makeSound();
  }
}

void main() {
  // Step 3: Override an inherited method
  Animal dog = Dog('Buddy');
  Animal cat = Cat('Whiskers');

  dog.makeSound(); // Outputs: Woof!
  cat.makeSound(); // Outputs: Meow!

  // Demonstrating interface implementation
  (cat as Moveable).move(); // Outputs: Cat is walking

  // Initializing instance from file (hardcoded)
  Animal loadedAnimal = AnimalLoader.loadAnimalFromFile('somefile.txt');
  print(loadedAnimal.name); // Outputs: Rex

  // Demonstrating loop
  printAnimalSounds(cat, 3); // Outputs: Meow! Meow! Meow!
}
