/*
 * This class exhibits ABSTRACTION because it hides the inner
 * workings of the mouse object from the user. The user wouldn't
 * normally be able to see these things and would only be limited
 * to accessing the functions of the mouse.
 * 
 * Check Test Cases in void main()
 */
class Mouse {
  int currentDpi = 1000;
  int baseDpi = 1000;
  int secondDpi = 16000;
  bool switchState = false;

  leftClick() {
    print("User Left Clicked");
  }

  rightClick() {
    print("User Right Clicked");
  }

  scrollUp() {
    print("User Srolled Up");
  }

  scrollDown() {
    print("User Scrolled Down");
  }

  dpiSwitch() {
    if (switchState == false) {
      switchState = true;
      currentDpi = secondDpi;
    } else {
      switchState = false;
      currentDpi = baseDpi;
    }
    print("Current Mouse DPI: " + currentDpi.toString());
  }

  Mouse(
      {required this.currentDpi,
      required this.baseDpi,
      required this.secondDpi,
      required this.switchState});
}

//Inheritance and Polymorphism Parent Class
class Human {
  bool isLazy = false;

  void talk() {
    print('Blah blah blah blah...');
  }

  void work() {
    if (isLazy == true) {
      print('This human is too lazy to work');
    } else {
      print('This human is now working');
    }
  }
}

/*
 * This class exhibits INHERITANCE because the class FranceCarl extends the
 * class Human. Child class FranceCarl inherits the properties and methods
 * of the parent class Human and can make use of them.
 * 
 * Check Test Cases in void main()
 */
class FranceCarl extends Human {
  bool hasLover = true;

  void rap() {
    print('Ooh baby, never gonna leave you~');
  }
}

/*
 * This class exhibits POLYMORPHISM because it overrides the parent class'
 * methods and properties to make it unqiue to itself. Instead of child
 * class AnecitoLacson printing "Blah blah blah blah..." like the parent
 * class, it prints out "Visayas is not real." instead.
 * 
 * Check Test Cases in void main()
 */
class AnecitoLacson extends Human {
  @override
  bool isLazy = true;

  void talk() {
    print('Visayas is not real.');
  }
}

/*
 * This class exhibits ENCAPSULATON it protects the String inkedLine and
 * makes it private. Included in the class Notebook is a readline function
 * that allows you to see the contents of the private String inkedLine,
 * which you normally wouldn't be able to access outside of the class.
 * 
 * Note; Normally, you wouldn't be able to access the private String if
 * called outside the class. But because dartpad's privacy is on the
 * library level rather than the class level, it can read it.
 * 
 * Let's just pretend that it can't be accessed.
 * 
 * Check Test Cases in void main()
 */
class Notebook {
  String _inkedLine = "I wrote this text in Ink.";
  String nonInkedLine = "I wrote this text with a pencil.";

  void readLines() {
    print(_inkedLine);
    print(nonInkedLine);
  }
}

void main() {
  //Abstraction Sample Testing
  print("Abstraction Test Case\n");
  print("Mouse 1");

  Mouse userMouse1 = Mouse(
      baseDpi: 800, currentDpi: 800, secondDpi: 12000, switchState: false);
  userMouse1.leftClick();
  userMouse1.rightClick();
  userMouse1.scrollUp();
  userMouse1.scrollDown();
  userMouse1.dpiSwitch();

  print("\nMouse 2");

  Mouse userMouse2 = Mouse(
      baseDpi: 800, currentDpi: 12000, secondDpi: 12000, switchState: true);
  userMouse2.leftClick();
  userMouse2.rightClick();
  userMouse2.scrollUp();
  userMouse2.scrollDown();
  userMouse2.dpiSwitch();

  //Inheritance Sample Testing
  print("\n\nInheritance Test Case\n");

  FranceCarl france = FranceCarl();
  france.talk();
  france.work();
  print("France is lazy? " + france.isLazy.toString());
  france.rap();
  print("France has a lover? " + france.hasLover.toString());

  //Polymorphism Sample Testing
  print("\n\nPolymorphism Test Case\n");

  AnecitoLacson nicu = AnecitoLacson();
  nicu.talk();
  nicu.work();
  print("Nicu is lazy? " + nicu.isLazy.toString());

  //Encapsulation Sample Testing
  print("\n\nEncapsulation Test Case\n");
  Notebook notebook1 = Notebook();
  notebook1.readLines();

  print("");
  print(notebook1._inkedLine); //You can't access this normally.
  print(notebook1.nonInkedLine); //You can access this normally.
}
/*
 * This class exhibits ABSTRACTION because it hides the inner
 * workings of the mouse object from the user. The user wouldn't
 * normally be able to see these things and would only be limited
 * to accessing the functions of the mouse.
 * 
 * Check Test Cases in void main()
 */
class Mouse {
  int currentDpi = 1000;
  int baseDpi = 1000;
  int secondDpi = 16000;
  bool switchState = false;

  leftClick() {
    print("User Left Clicked");
  }

  rightClick() {
    print("User Right Clicked");
  }

  scrollUp() {
    print("User Srolled Up");
  }

  scrollDown() {
    print("User Scrolled Down");
  }

  dpiSwitch() {
    if (switchState == false) {
      switchState = true;
      currentDpi = secondDpi;
    } else {
      switchState = false;
      currentDpi = baseDpi;
    }
    print("Current Mouse DPI: " + currentDpi.toString());
  }

  Mouse(
      {required this.currentDpi,
      required this.baseDpi,
      required this.secondDpi,
      required this.switchState});
}

//Inheritance and Polymorphism Parent Class
class Human {
  bool isLazy = false;

  void talk() {
    print('Blah blah blah blah...');
  }

  void work() {
    if (isLazy == true) {
      print('This human is too lazy to work');
    } else {
      print('This human is now working');
    }
  }
}

/*
 * This class exhibits INHERITANCE because the class FranceCarl extends the
 * class Human. Child class FranceCarl inherits the properties and methods
 * of the parent class Human and can make use of them.
 * 
 * Check Test Cases in void main()
 */
class FranceCarl extends Human {
  bool hasLover = true;

  void rap() {
    print('Ooh baby, never gonna leave you~');
  }
}

/*
 * This class exhibits POLYMORPHISM because it overrides the parent class'
 * methods and properties to make it unqiue to itself. Instead of child
 * class AnecitoLacson printing "Blah blah blah blah..." like the parent
 * class, it prints out "Visayas is not real." instead.
 * 
 * Check Test Cases in void main()
 */
class AnecitoLacson extends Human {
  @override
  bool isLazy = true;

  void talk() {
    print('Visayas is not real.');
  }
}

/*
 * This class exhibits ENCAPSULATON it protects the String inkedLine and
 * makes it private. Included in the class Notebook is a readline function
 * that allows you to see the contents of the private String inkedLine,
 * which you normally wouldn't be able to access outside of the class.
 * 
 * Note; Normally, you wouldn't be able to access the private String if
 * called outside the class. But because dartpad's privacy is on the
 * library level rather than the class level, it can read it.
 * 
 * Let's just pretend that it can't be accessed.
 * 
 * Check Test Cases in void main()
 */
class Notebook {
  String _inkedLine = "I wrote this text in Ink.";
  String nonInkedLine = "I wrote this text with a pencil.";

  void readLines() {
    print(_inkedLine);
    print(nonInkedLine);
  }
}

void main() {
  //Abstraction Sample Testing
  print("Abstraction Test Case\n");
  print("Mouse 1");

  Mouse userMouse1 = Mouse(
      baseDpi: 800, currentDpi: 800, secondDpi: 12000, switchState: false);
  userMouse1.leftClick();
  userMouse1.rightClick();
  userMouse1.scrollUp();
  userMouse1.scrollDown();
  userMouse1.dpiSwitch();

  print("\nMouse 2");

  Mouse userMouse2 = Mouse(
      baseDpi: 800, currentDpi: 12000, secondDpi: 12000, switchState: true);
  userMouse2.leftClick();
  userMouse2.rightClick();
  userMouse2.scrollUp();
  userMouse2.scrollDown();
  userMouse2.dpiSwitch();

  //Inheritance Sample Testing
  print("\n\nInheritance Test Case\n");

  FranceCarl france = FranceCarl();
  france.talk();
  france.work();
  print("France is lazy? " + france.isLazy.toString());
  france.rap();
  print("France has a lover? " + france.hasLover.toString());

  //Polymorphism Sample Testing
  print("\n\nPolymorphism Test Case\n");

  AnecitoLacson nicu = AnecitoLacson();
  nicu.talk();
  nicu.work();
  print("Nicu is lazy? " + nicu.isLazy.toString());

  //Encapsulation Sample Testing
  print("\n\nEncapsulation Test Case\n");
  Notebook notebook1 = Notebook();
  notebook1.readLines();

  print("");
  print(notebook1._inkedLine); //You can't access this normally.
  print(notebook1.nonInkedLine); //You can access this normally.
}
