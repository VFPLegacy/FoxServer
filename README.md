![FoxServer](https://github.com/VFPLegacy/FoxServer/raw/main/images/foxserver-logo.png)
# FoxServer

## Simple and flexible library for building VFP based Web Applications

|Resource|Location|Description|
|---|---|---|
|Runtimes|[See Manifest](https://github.com/VFPLegacy/MagicMenu/raw/master/native/fox-server.manifest)|All runtimes needed by FoxServer
|MagicMenu|[Download](https://github.com/VFPLegacy/MagicMenu/raw/master/magicmenu.app)|The Project Manager

# Contents

- [Welcome to FoxServer](#welcome-to-foxserver)
- [Get Excited!](#get-excited)
- [Batteries Included](#batteries-included)
- [Practical](#practical)
  * [Web Site](#web-site)
  * [API RESTful](#api-rest-ful)
- [Why FoxServer?](#why-foxserver)
  * [Designed For a Clear Goal](#designed-for-a-clear-goal)
  * [Simple](#simple)
  * [Uses Macros For Redability](#uses-macros-for-redability)
- [Implementation](#implementation)
  * [MagicMenu](#magicmenu)
  * [Multi-threaded](#multi-threaded)
  * [Fast Enough For Many Applications](#fast-enough-for-many-applications)
- [Features](#features)
  * [Syntax](#syntax)
  * [Powerful Implementation](#powerful-implementation)
  * [Simple](#simple)
  * [Dynamic](#dynamic)
  * [Builtins](#builtins)
- [Examples](#examples)
- [Support And Donations](#support-and-donations)
- [License](#license)
- [Contributions](#contributions)
- [Special Thanks](#special-thanks)

# Welcome to FoxServer
FoxServer is a web server implementation developed in **C#** that acts as a container to execute logical code written in **Visual FoxPro (VFP)** through a *Wrapper*. The main idea behind this project is to allow developers to write their service logic using VFP and expose this logic as *web service* through a modern web server.

# Get Excited

Each FoxServer project comes with a set of macros that simplify writing code and improve readability, this way the code becomes more idiomatic since the macros abstract all the syntax of object-oriented programming.

Visual FoxPro (VFP) programmers have long relied on the strength and versatility of this programming language. Now, with FoxServer, there is no need to abandon that tradition to embrace modernity. Here's a compelling reason to choose FoxServer over other, more modern technologies:

**Preserve your Investment in Knowledge:**

FoxServer allows you to create web applications without giving up the richness and familiarity of Visual FoxPro. For programmers who have invested time and effort honing their VFP skills, FoxServer is the solution that extends the capabilities of your favorite language without forcing you to switch to a completely new environment.

With FoxServer, you can capitalize on the experience you already have in VFP and apply it directly to web development. There's no need to learn a new set of tools or radically change your workflow. Stay consistent in your skills, making the most of what you already know.

Instead of starting from scratch with newer technologies, FoxServer offers you a smooth transition, allowing you to adapt to the demands of web development without sacrificing the foundation you've built over the years in Visual FoxPro.

In short, FoxServer gives you the opportunity to move towards web development without abandoning the richness and convenience that VFP offers. Preserve your investment in knowledge and get the most out of your experience with a solution that respects and extends the tradition of Visual FoxPro. FoxServer: Modernity without losing your roots!

# Batteries Included

FoxServer is not just a web server, it's a complete toolbox for VFP developers! In this section, you will discover a set of functions and utilities that significantly facilitate the development of web applications without sacrificing robustness or simplicity.

  1. Simplified JWT Token Generation and Validation:

Forget the complexities of implementing security in your web applications. FoxServer includes built-in functions for JSON Web Token (JWT) token generation and validation. Now, you can secure your communications simply and efficiently, without worrying about the complexity of implementation.

2. Intelligent Parsing of JSON Requests:

Requests that carry JSON information in their body are automatically parsed by FoxServer.dll. This means that your data arrives at the backend (<project.dll>) as objects ready to be used. No more manual parsing processes, FoxServer takes care of the integration effortlessly.

3. Advanced File Manipulation:

Do you need to encode and return files in your JSON responses? FoxServer offers you functions in the backend to make this task hassle-free. File manipulation is easy, direct and fully integrated into your workflow.

4. Structured and Consistent Responses:

FoxServer sets a standard for JSON responses, ensuring that each response has the same predefined structure. 
```javascript
  {
    "status": "success"|"error", 
    "data": null, 
    "message": "a custom message for the HTTP client"
  }
``` 
simplifies response interpretation and improves consistency across your project.

# Practical
FoxServer stands out for its practicality, offering developers a platform that simplifies and speeds up the process of creating web applications in Visual FoxPro (VFP).

## Web Site
Developing web applications has never been easier than with FoxServer. This powerful web server goes beyond being just a RESTful API facilitator, as it presents itself as a complete ally for the creation of web pages and interactive applications. Here we explain why developing web applications with FoxServer is so simple:

1. Preconfigured "Public" Folder:
Each FoxServer project comes with a folder called "public" that acts as the core of your web application. Inside, you'll find the essential folders: "html" for your HTML files, "scripts" for your JavaScript scripts, and "styles" for your CSS style sheets. This provides an orderly structure ready to receive your web resources.

2. Index.html and 404.html files:
FoxServer includes the "index.html" and "404.html" files as standard within the "public" folder. The former acts as the home page of your web application, while the latter handles requests to unfound resources. With this initial setup, your app is ready to go without having to worry about creating basic pages.

3. VFP Developer Ready Approach:
FoxServer integrates seamlessly with the native Visual FoxPro development environment. There's no need to learn new tools or change your usual workflows. The "public" folder becomes a natural fit, allowing you to focus on developing your web application without unnecessary distractions.

4. Quick and Easy Deployment:
Thanks to the pre-designed "public" folder structure, deploying your web application is quick and easy. Without complicated configurations or tedious adjustments, FoxServer is designed to speed up the development cycle and facilitate the delivery of web projects efficiently.

5. Flexibility for Web Applications and APIs:
FoxServer offers unparalleled flexibility. You can use it to develop both interactive web applications and RESTful API services, all from the same development environment. This means that you have complete control over the type of web projects you want to create.

With the preconfigured "public" folder structure, FoxServer not only simplifies but transforms the web application development process. From initial design to final deployment, FoxServer gives you the tools you need to turn your ideas into functional web experiences. Discover the ease of development with FoxServer and take your web projects to the next level!


## API RESTful
FoxServer is not only your ally for web development, but it stands out as an exceptional platform for creating RESTful APIs. With a host of features designed to make the API development process intuitive and efficient, FoxServer is positioned as the ideal choice for those looking to power the creation of web services. Here's why developing RESTful APIs with FoxServer is an experience like no other:

1. Built-in Functions for JWT Tokens:
FoxServer simplifies implementing authentication and security in your RESTful APIs with built-in functions for JSON Web Token (JWT) generation and validation. With this functionality, you can guarantee the security of your services in a simple and effective way.

2. Consistent JSON Response Structure:
FoxServer sets a standard for JSON responses in your RESTful APIs. With a consistent structure, {"status": "success"|"error", "data": null, "message": "a message"}, the interpretation of responses becomes uniform and easy to manage, improving consistency in all your service.

3. Automatic Serialization of JSON Information:
The serialization of the JSON information that arrives through the body of the request (POST and PUT) is handled automatically by FoxServer. This means your data is processed and prepared for use in the backend without the need for manual intervention, speeding up development and data manipulation.

4. Functions to Encode Files:
FoxServer provides you with built-in functions to encode files and make them compatible with JSON responses. This feature is essential when you need to transfer files efficiently through your RESTful APIs.

5. Ease of Integration and Deployment:
Just like in web development, FoxServer makes it easy to integrate and deploy your RESTful APIs. With a well-defined folder structure, your services will be ready to be deployed quickly and easily.

6. Flexibility for Mixed Projects:
FoxServer gives you the flexibility to develop both interactive web applications and RESTful API services from the same development environment. You can create mixed projects that integrate both areas of development according to your specific needs.

In short, FoxServer simplifies every aspect of RESTful API development, from security to response structure to file manipulation. Discover how these features work together to give you a hassle-free web services development experience with powerful results. Develop RESTful APIs with FoxServer and experience a new dimension of efficiency and power!

# Why FoxServer

## Designed For a Clear Goal
FoxServer was conceived with a clear purpose in mind: to empower Visual FoxPro (VFP) developers in the world of web development and creating RESTful API services. Its robust architecture and integrated features align with the vision of providing a complete and versatile solution for those looking to take their VFP skills to the next level.

## Simple
Simplicity is the key to FoxServer. From integration with VFP's native development environment to preconfigured folder structure and "batteries included" features, FoxServer makes RESTful API and web application development accessible and hassle-free. Its intuitive approach allows developers to focus on building functionality and business logic instead of dealing with tedious configuration. With FoxServer, simplicity means faster, more efficient development.

## Uses Macros For Redability
FoxServer makes development even easier by incorporating macros that improve code readability. These predefined macros simplify writing and make the code more understandable for developers, allowing them to focus on application logic rather than syntactic details.

# Implementation
## MagicMenu
## Multi-threaded
## Fast Enough For Many Applications

# Features
## Syntax
## Powerful Implementation
## Simple
## Dynamic
## Builtins
## Examples

# Support And Donations
If you find MagicMenu useful for your work and would like to support its development and maintenance, please consider making a donation through [PayPal](https://www.paypal.com/donate/?hosted_button_id=LXQYXFP77AD2G) or becoming a patron on [Patreon](www.patreon.com/IrwinRodriguez).

# License

This project is distributed under the MIT License. See the LICENSE file for more details.

# Contributions

Feel free to contribute and improve this template! If you have suggestions, improvements or corrections, don't hesitate to make a pull request!

# Special Thanks

This project uses the following third-party libraries, and I want to express my gratitude to their authors and maintainers:

- [wwDotNetBridge](https://github.com/RickStrahl/wwDotnetBridge): An essential library for interoperability between Visual FoxPro and .NET.
- [WinSW](https://github.com/winsw/winsw): WinSW is a tool that allows you to run any application as a Windows service.
- [MagicMenu](https://github.com/VFPLegacy/MagicMenu): It is a native tool for VFP that allows you to create special projects such as Console Application, Windows Service, Web Applications, among others.
- [JSONFox](https://github.com/Irwin1985/JSONFox): JSONFox is a tool for VFP that allows you to encode and decode JSON objects among other functions.
- [FoxyPreviewer](https://www.foxypreviewer.com/): Print FRX reports to PDF.

---

**NO WARRANTY**

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE. OR OTHER DEALINGS IN THE SOFTWARE.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTkzNzc5ODczMywtNjA5MTk2NDM1LDIxMD
YyNjk1NjAsLTEwMTY5MzY4OTUsMjA4ODQyMDQ2MCwtMTMzNDMy
NDUyMSw3Nzc2MzU5NDIsMzA4MzI0MDk3LC0xMjc4MzM1MDMwLC
0yMTE4MTIzNTU2LDYyODYyMDQ2Nyw3MzQxNjM5MjMsLTE4NTA2
MDI4ODMsLTc5MDEwNjUyNF19
-->