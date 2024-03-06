<a name="readme-top"></a>
<div align="center">

  ![Project Banner](readme_assets/readme_banner.png#gh-dark-mode-only)
  ![Project Banner](readme_assets/readme_banner-light.png#gh-light-mode-only)

  <h1>Quizzify App</h1>
  
  <p>
    An Quizzify App that tests your general knowledge.
  </p>

  
<!-- Badges -->
<p>
  <a href="https://github.com/ladunjexa/quizzify-app/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/ladunjexa/quizzify-app" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/ladunjexa/quizzify-app" alt="last update" />
  </a>
  <a href="https://github.com/ladunjexa/quizzify-app/network/members">
    <img src="https://img.shields.io/github/forks/ladunjexa/quizzify-app" alt="forks" />
  </a>
  <a href="https://github.com/ladunjexa/quizzify-app/stargazers">
    <img src="https://img.shields.io/github/stars/ladunjexa/quizzify-app" alt="stars" />
  </a>
  <a href="https://github.com/ladunjexa/quizzify-app/issues/">
    <img src="https://img.shields.io/github/issues/ladunjexa/quizzify-app" alt="open issues" />
  </a>
  <a href="https://github.com/ladunjexa/quizzify-app/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/ladunjexa/quizzify-app.svg" alt="license" />
  </a>
</p>
   
 <h4>
    <a href="https://github.com/ladunjexa/quizzify-app/">View Demo</a>
  <span> · </span>
    <a href="https://github.com/ladunjexa/quizzify-app">Documentation</a>
  <span> · </span>
    <a href="https://github.com/ladunjexa/quizzify-app/issues/">Report Bug</a>
  <span> · </span>
    <a href="https://github.com/ladunjexa/quizzify-app/issues/">Request Feature</a>
  </h4>
</div>

<br />

<!-- Table of Contents -->
<details>

<summary>

# :notebook_with_decorative_cover: Table of Contents

</summary>

- [About the Project](#star2-about-the-project)
  * [Folder Structure](#bangbang-folder-structure)
  * [Tech Stack](#space_invader-tech-stack)
- [Getting Started](#toolbox-getting-started)
  * [Installation](#gear-installation)
  * [Run Locally](#running-run-locally)
- [Contributing](#wave-contributing)
- [License](#warning-license)
- [Contact](#handshake-contact)
- [Acknowledgements](#gem-acknowledgements)

</details>  

<!-- About the Project -->
## :star2: About the Project

<div align="center"> 
  <img src="readme_assets/during_the_quiz.png" height="auto" width="30%" />
  <img src="readme_assets/finish_quiz.png" height="auto" width="30%" />
</div>
<br />
Quizzify App is an simple and intuitive mobile quiz application that contains 13 choice questions about facts - After each answer, will be added to the check bar at the bottom of the application an Icon marked with `V` (Correct) or `X` (Wrong).


<!-- Folder Structure -->
### :bangbang: Folder Structure

Here is the code folder structure.
```
quizzify-app/
|- android
|- ios
|- lib/
  |-- question.dart
  |-- quiz_brain.dart
```

Now, lets dive into the lib folder which has the main code for the application.

#### lib

`question.dart` - This code implementing the `Question` class, a template used to create question object with text and answer properties.

`quiz_brain.dart` - This code implementing the `QuizBrain` class, where our questions pool is located as a list of objects of type `Question`.
Necessary methods nd conditions necessary for the functioning of the quiz, such as resetting, passing a question, retrieving a question, etc.

<!-- TechStack -->
### :space_invader: Tech Stack

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Android Studio](https://img.shields.io/badge/Android%20Studio-3DDC84.svg?style=for-the-badge&logo=android-studio&logoColor=white)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Getting Started -->
## 	:toolbox: Getting Started

<!-- Installation -->
### :gear: Installation

#### Step 1:
Download or clone this repo by using the link below:

```bash
 https://github.com/ladunjexa/quizzify-app
```

#### Step 2:

Go to project root and execute the following command in console to get the required dependencies:

```bash
  flutter pub get
```

<!-- Run Locally -->
### :running: Run Locally

Clone the project

```bash
  git clone https://github.com/ladunjexa/quizzify-app
```

Go to the project directory

```bash
  cd quizzify-app
```

Install dependencies

```bash
  flutter pub get
```

Start the application

```bash
  flutter run
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Contributing -->
## :wave: Contributing

<a href="https://github.com/ladunjexa/quizzify-app/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=ladunjexa/quizzify-app" />
</a>


Contributions are always welcome!

See [`contributing.md`](https://contributing.md/) for ways to get started.

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- License -->
## :warning: License

Distributed under the MIT License. See [LICENSE.txt](https://github.com/ladunjexa/quizzify-app/blob/main/LICENSE) for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Contact -->
## :handshake: Contact

Liron Abutbul - [@lironabutbul6](https://twitter.com/lironabutbul6) - [@ladunjexa](https://t.me/ladunjexa)

Project Link: [https://github.com/ladunjexa/quizzify-app](https://github.com/ladunjexa/quizzify-app)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Acknowledgments -->
## :gem: Acknowledgements

This section used to mention useful resources and libraries that used in Quizzify App project.

 - [rFlutter Alert](https://pub.dev/packages/rflutter_alert/)
 - #FlutterBrew

<p align="right">(<a href="#readme-top">back to top</a>)</p>
