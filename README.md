# Core PHP Blogging System

A robust and fully functional blogging platform developed using **Core PHP**. This system features a modern admin dashboard and a responsive frontend, offering seamless content management, real-time user interaction, and secure authentication.

---

## ✨ Features Overview

### 🛠️ Admin Dashboard

* **Secure Login System** with password hashing
* **Dynamic Dashboard** displaying active logged-in users
* **Post Management**
  * Create, edit, delete, and view posts
  * Perform bulk actions: publish, draft, delete, clone
  * Manage tags, categories, post status, and authorship
  * Track post views and comment counts
* **Comments Moderation**
  * Approve or unapprove user comments
  * Directly view the associated post for each comment
* **User Management**
  * Role-based access: `admin` and `subscriber`
* **Category Management** for organized content
* **Subscriber Overview**
* **Profile Settings** for user details and preferences

### 🌐 Frontend Interface

* Filter posts by **category** and **author**
* Full **search** functionality
* Post **commenting system** with live updates
* Interactive **like/dislike** feature
* **Custom pagination** for better UX
* **Contact Us** form
* Fully **responsive and mobile-friendly** layout

---

## 🛠️ Tech Stack

| Layer      | Technologies Used                 |
| ---------- | --------------------------------- |
| Language   | Core PHP (Object-Oriented)        |
| Frontend   | HTML, CSS, Bootstrap              |
| JavaScript | Vanilla JS, jQuery, AJAX          |

---

## 🚀 Installation & Setup

1. **Clone the Repository**

   ```bash
   git clone https://github.com/AlMamunFarhad/Core-php-blogging-system.git
   cd Core-php-blogging-system
   ```

2. **Import the Database**

   * Open `phpMyAdmin`
   * Create a new database (e.g., `blog_db`)
   * Import the `.sql` file from the project directory

3. **Configure Database Connection**

   * Open `includes/db.php`
   * Update with your local credentials:

     ```php
     define('DB_HOST', 'localhost');
     define('DB_USER', 'root');
     define('DB_PASS', '');
     define('DB_NAME', 'blog_db');
     ```

4. **Run the Project Locally**

   * Place the project folder in your XAMPP or MAMP `htdocs` or `www` directory
   * Launch your browser and visit:

     ```
     http://localhost/Core-php-blogging-system/
     ```

---

## 🧪 Admin Login Credentials

* **Username:** `Admin`
* **Password:** `password`

---

## 🤝 Contribution Guidelines

We welcome contributions! For significant updates, please open an issue to discuss your proposed changes before submitting a pull request.

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 🔗 GitHub Repository

👉 [Core-php-blogging-system](https://github.com/AlMamunFarhad/Core-php-blogging-system)

