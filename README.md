# Budget App - Budgetti

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
- [🛠 Built With](#built-with)
  - [Tech Stack](#tech-stack)
  - [Key Features](#key-features)
  - [Screenshots](#screenshots)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

## 📖 Budget App - Budgetti <a name="about-project"></a>

The **Budget App - Budgetti** is a comprehensive solution for managing personal finances, designed using Ruby on Rails with a PostgreSQL database. This fully functional application allows users to create categories, track transactions, and get an overview of their spending. An important feature of the app is its ability to associate transactions with categories, enabling users to understand their spending habits better. This promotes responsible financial management, which is a vital part of personal finance. The Budget App is not just an application, but a financial companion that enhances the budgeting experience by organizing and simplifying the process

## 🛠 Built With <a name="built-with"></a>

<details> <summary>Programming Language</summary> <ul> <li>Ruby 3.2.2</li> </ul> </details>

<details> <summary>Web Application Framework</summary> <ul> <li>Rails 7.1.2</li> </ul> </details>

<details> <summary>Database</summary> <ul> <li>PostgreSQL (pg gem)</li> </ul> </details>

<details> <summary>Web Server</summary> <ul> <li>Puma</li> </ul> </details>

<details> <summary>JavaScript Modules</summary> <ul> <li>ESM Import Maps (importmap-rails gem)</li> </ul> </details>

<details> <summary>UI Styling</summary> <ul> <li>Tailwind CSS (tailwindcss-rails gem)</li> </ul> </details>

<details> <summary>Hotwire</summary> <ul> <li>Turbo (turbo-rails gem)</li> <li>Stimulus (stimulus-rails gem)</li> </ul> </details>

<details> <summary>APIs</summary> <ul> <li>Jbuilder</li> </ul> </details>

<details> <summary>Performance Optimization</summary> <ul> <li>Bootsnap</li> </ul> </details>

<details> <summary>Testing</summary> <ul> <li>Debug</li> <li>Factory Bot (factory_bot_rails gem)</li> <li>RSpec (rspec-rails gem)</li> <li>Capybara</li> <li>Selenium Webdriver</li> </ul> </details>

<details> <summary>Code Quality</summary> <ul> <li>Rubocop</li> </ul> </details>

<details> <summary>Development Tools</summary> <ul> <li>Web Console (web-console gem)</li> </ul> </details>

<details> <summary>Pagination</summary> <ul> <li>Kaminari</li> </ul> </details>

<details> <summary>Authentication</summary> <ul> <li>Devise (devise gem)</li> </ul> </details>

<details> <summary>Authorization</summary> <ul> <li>CanCanCan (cancancan gem)</li> </ul> </details>

<!-- Features -->

### Key Feature <a name="key-features"></a>

- [x] **User Authentication:** Users can securely register and log in to the app using their email and password.
- [x] **Category Management:** Users can create and manage categories, each with a unique name and icon.
- [x] **Transaction Tracking:** Users can add transactions under each category, with details like name and amount.
- [x] **Budget Overview:** On the home page, users can see an overview of all categories along with the total amount of transactions under each category.
- [x] **Detailed Transaction View:** Users can view all transactions under a specific category, sorted by the most recent.
- [x] **Easy Navigation:** Users can easily navigate between different pages like home, transactions, add new category, and add new transaction.
- [x] **Test Coverage:** The app includes unit and integration tests to ensure it works as expected.
- [x] **Deployment:** The app is deployed and accessible online for users to use it anywhere, anytime.

<p align="right"><a href="#readme-top">👆</a></p>

### Screenshots <a name="key-features"></a>

<img src="screenshots/splash-screen.png" alt="public index without login" width="500"/>

### LIVE DEMO <a name="live-demo">

> [LIVE Link](https://budget-app-gsnk.onrender.com/)
> [Video demo](https://www.loom.com/share/d45038fec4da479a850a62cc4929b4e7?sid=442ca8e7-66da-458b-9421-e4dcabeede23)


<p align="right"><a href="#readme-top">👆</a></p>

<!-- Getting Started -->

## 💻 Getting Started <a name="getting-started"></a>

To get started with the project, follow the steps below.

### Prerequisites

To run this project, ensure you have the following installed:

- [Git](https://git-scm.com/)
- [Ruby](https://www.ruby-lang.org/en/)
- A code editor (e.g., [VsCode](https://code.visualstudio.com/))

### Setup

Clone the repository to your local machine:

```bash
git clone https://github.com/fmanimashaun/budget-app.git

cd budget-app

bundle install

npm install
```

## Database Setup

This application uses PostgreSQL as the database. Here are the steps to set it up:

1. Ensure PostgreSQL is installed on your machine and running.

2. Update the config/database.yml file with your PostgreSQL username and password in the default section.

3. Create the database:

```bash
rails db:create
```

4. Run migrations to set up the database schema:

```bash
rails db:migrate
```

### Usage

To run the program, you can use a Ruby interpreter. For example, to interact with the code, use the following:

1. Start the server

```bash
bin/dev
```

2. Access the Blog app in your web browser at `http://localhost:3000`.

<p align="right"><a href="#readme-top">👆</a></p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Fisayo Michael Animashaun**

- GitHub: [@fmanimashaun](https://github.com/fmanimashaun)
- Twitter: [@fmanimashaun](https://twitter.com/fmanimashaun)
- LinkedIn: [Fisayo Michael Animashaun ](https://linkedin.com/in/fmanimashaun)

<p align="right"><a href="#readme-top">👆</a></p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Responsive Design:** The app will designed to be responsive and works well on various devices and screen sizes.
- [ ] **Customizable Interface:** Users will be able to customize the interface with their preferred color scheme and font

<p align="right"><a href="#readme-top">👆</a></p>

<!-- Contributing -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the issues page.

[Issue Page](https://github.com/fmanimashaun/myblog/issues)

<p align="right"><a href="#readme-top">👆</a></p>

<!-- Show your support -->

## ⭐️ Show your support <a name="support"></a>

If you like this project leave a start for it.

<p align="right"><a href="#readme-top">👆</a></p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I'd like to thank Microverse for helping us in the journey to become a Fullstack developer.

- Special appreciation [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) for the Original design idea 

<p align="right"><a href="#readme-top">👆</a></p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right"><a href="#readme-top">👆</a></p>
