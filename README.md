# SprityBird

This project is a small clone of Flappy Bird for iOS using the SpriteKit framework. This particular fork is an example of a basic iOS [Skillz](http://skillz.com/) integration.

![spritybird](http://i.imgur.com/T5cZrCP.gif)

## Skillz example instructions

This project is setup to work with the latest version of the Skillz iOS SDK, which can be found at [https://skillz.com/developer/downloads](https://skillz.com/developer/downloads).

Once the SDK is downloaded, the Skillz embedded framework will need to be added to the project. 

The Installation for this project was divided into 3 major steps: [Installing the Skillz framework](https://github.com/skillz/SprityBird/commit/4a1606817bc206405839b032e6a0543a327ef668),[Implementing Core Skillz](https://github.com/skillz/SprityBird/commit/0dc6b03fa25561491077488ca5caa47266fc90ff), and [Implementing Skillz Fairness](https://github.com/skillz/SprityBird/commit/c0cbc391d38f2815f750867f45fcac8022d953c2).

### Skillz example instructions <br />
Step 1: This [commit](https://github.com/skillz/SprityBird/commit/4a1606817bc206405839b032e6a0543a327ef668) completed the [Installing the Skillz framework](https://cdn.skillz.com/doc/developer/ios_native/integrate_skillz_sdk/install_skillz_via_xcode) step of the Skillz Integration. 

* This step adds the framework to the project and configures the project to link with the Skillz framework.<br /><br />

Step 2: This [commit](https://github.com/skillz/SprityBird/commit/0dc6b03fa25561491077488ca5caa47266fc90ff) completed the [Implementing Core Skillz](https://cdn.skillz.com/doc/developer/ios_native/integrate_skillz_sdk/implement_the_app_delegate) step of the Skillz Integration. 

* This step integrates the Skillz platform with the project and will add multiplayer tournaments using the Skillz API.<br /><br />

Step 3: This [commit](https://github.com/skillz/SprityBird/commit/c0cbc391d38f2815f750867f45fcac8022d953c2) completed the [Implementing Skillz Fairness](https://cdn.skillz.com/doc/developer/ios_native/integrate_skillz_sdk/reimplement_random_number_generation_rng_for_fairness) step of the Skillz Integration. 

* This step ensures that the players' games are fair by implementing a consistent random number generation.<br /><br />

For additional SDK installation details refer to the [Skillz documentation](https://cdn.skillz.com/doc/developer/).

Visit our website to learn more about [Skillz!](http://corp.skillz.com/)