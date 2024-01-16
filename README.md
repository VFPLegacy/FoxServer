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
  * [Wep Application](#web-application)
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
  * [Examples](#examples)
  * [Support And Donations](#support-and-donations)
  * [License](#licence)

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

## Licencia

Este proyecto se distribuye bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.

## Uso con MagicMenu

Puedes utilizar la herramienta MagicMenu para simplificar el proceso de creación de servicios web utilizando esta plantilla. MagicMenu automatiza la descarga y uso de estas mismas plantillas, permitiéndote concentrarte en el desarrollo de tu aplicación.
  
Para obtener más información sobre MagicMenu, visita el repositorio: [MagicMenu en GitHub](https://github.com/VFPLegacy/MagicMenu).

## Documentación
[ControllerHelper](ControllerHelper.md)

## Contribuciones

¡Siéntete libre de contribuir y mejorar esta plantilla! Si tienes sugerencias, mejoras o correcciones, ¡no dudes en hacer un pull request!

## Agradecimientos

Este proyecto utiliza las siguiente librerías de terceros, y quiero expresar mi agradecimiento a los autores y mantenedores de las mismas:

- [wwDotNetBridge](https://github.com/RickStrahl/wwDotnetBridge): Una librería esencial para la interoperabilidad entre Visual FoxPro y .NET.
- [WinSW](https://github.com/winsw/winsw): WinSW es una herramienta que permite ejecutar cualquier aplicación como un servicio de Windows.
- [MagicMenu](https://github.com/VFPLegacy/MagicMenu): Es una herramienta nativa para VFP que permite crear proyectos especiales como Aplicación de Consola, Servicio de Windows, Aplicaciones Web, entre otros.
- [JSONFox](https://github.com/Irwin1985/JSONFox): JSONFox es una herramienta para VFP que permite codificar y decodificar objetos JSON entre otras funciones.
- [FoxyPreviewer](https://www.foxypreviewer.com/): Imprimir reportes FRX a PDF.

---

**SIN GARANTÍA**

EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O IMPLÍCITA, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD, IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O TITULARES DE DERECHOS DE AUTOR SERÁN RESPONSABLES DE NINGÚN RECLAMO, DAÑO U OTRA RESPONSABILIDAD, YA SEA EN UNA ACCIÓN CONTRACTUAL, AGRAVIO O DE OTRA MANERA, QUE SURJA DE, FUERA DE O EN RELACIÓN CON EL SOFTWARE O EL USO U OTRAS NEGOCIOS EN EL SOFTWARE.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5NDI2NTcyNDMsLTEyNzgzMzUwMzAsLT
IxMTgxMjM1NTYsNjI4NjIwNDY3LDczNDE2MzkyMywtMTg1MDYw
Mjg4MywtNzkwMTA2NTI0XX0=
-->