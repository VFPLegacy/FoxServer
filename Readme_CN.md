
![](https://github.com/VFPLegacy/FoxServer/raw/main/images/foxserver-logo.png)

## 用于构建使用 VFP 技术建立 Web 应用的简单灵活的开发库

|资源|网址|描述|
|---|---|---|
|运行库|[请参看 Manifest](https://github.com/VFPLegacy/MagicMenu/raw/master/native/fox-server.manifest)|FoxServe 运行时刻需要的所有文件
|MagicMenu|[下载](https://github.com/VFPLegacy/MagicMenu/raw/master/magicmenu.app)|项目管理器

# 目录

- [欢迎使用 FoxServer](#欢迎使用-foxserver)
- [激动人心的时刻已经到来!](#激动人心的时刻已经到来)
- [内置的强大功能](#内置的强大功能)
- [实用性](#实用性)
  * [Web 站点](#web-站点)
  * [API RESTful](#api-restful)
- [为什么要选择 FoxServer](#为什么要选择-foxserver)
  * [它为明确的目标而设计](#它为明确的目标而设计)
  * [简单](#简单)
  * [可编辑的宏](#可编辑的宏)
- [实现](#实现)
  * [MagicMenu(魔术菜单)](#magicmenu)
  * [多线程](#多线程)
  * [执行的效率和应用的广泛性](#执行的效率和应用的广泛性)
- [特性](#特性)
  * [语法](#语法)
  * [强大的实现能力](#强大的实现能力)
  * [简单](#简单)
  * [动态](#动态)
  * [内置功能](#内置功能)
- [示例](#示例)
- [支持和捐赠](#支持和捐赠)
- [许可协议](#许可协议)
- [贡献](#贡献)
- [特别鸣谢](#特别鸣谢)

# 欢迎使用 FoxServer
FoxServer 是一个用**C#**开发的网络服务器（译者注：类似于 IIS 或者 Apache），它通过*封装*来执行用**Visual FoxPro (VFP)**编写的逻辑代码。该项目的主要理念是允许开发人员使用 VFP 编写服务逻辑，并通过现代网络服务器将这些逻辑作为*web service*公开。

# 激动人心的时刻已经到来
每个 FoxServer 项目都包含一组宏（译者注：常量）。它用于简化代码的编写，并提高了代码的可阅读性。因为它是所有面向对象语法的抽象。

Visual FoxPro（VFP）程序员长期以来一直依赖于这种编程语言的强大和多功能性。现在，有了FoxServer，就没有必要放弃 VFP 去学习其他更现代的编程语言/方法。下面就是选择 FoxServer 的强有力理由：

**保护您的知识投资并延续 VFP 的技术生命：**

FoxServer允许您创建 Web 应用程序，而不用放弃您已经非常非常熟练的 Visual FoxPro 。对于在 VFP  技能方面投入大量时间和精力的程序员来说，FoxServer 是一种解决方案，它扩展了您最喜欢的语言的能力，而不强迫您切换到完全崭新的开发环境。

使用 FoxServer，您可以延续已掌握的 VFP 经验，直接进行 Web 开发。无需学习新的工具或彻底改变您的工作流程。这样可以让您在在最熟悉的 VFP IDE 里实现新的应用。

如果您打算学习更先进的新技术，FoxServer 为您提供一个平稳的过渡期，以便于让您开始慢慢习惯 Web 开发，在过渡期，你不用放弃多年在 VFP 中已经获取的宝贵经验。

简而言之，FoxServer 为您提供了使用  VFP 迈向 Web 开发的机会。无需放弃您在 VFP 中多年努力才获取的宝贵经验和成果。使用熟悉的 IDE ，在自己经验的基础上使用 FoxServer 拥抱新的 Web 时代！

# 内置的强大功能

FoxServer 不仅仅是一个 Web 服务器，它也是 VFP 开发人员的完整工具箱！在本节中，您将发现一组函数和实用程序，它们显着地促进了 Web 应用程序的开发而不会牺牲应用的健壮性或简单性。

  1. 简单的 JWT 令牌生成器和验证：

忘记您在开发 Web 应用程序过程中因为要实现其安全性的痛苦经历吧！ FoxServer 包括用于 JSON Web Token（JWT）令牌生成器和令牌验证的内置功能。现在，您可以简单高效地保护通信，而不必担心实现的复杂性。

2. JSON 请求的智能解析：

正文中携带的 JSON 信息请求由 FoxServer.dll 自动解析。这意味着您的数据将作为可供使用的对象传递到后端 （<project.dll>）。不再需要手动解析过程，FoxServer 可以毫不费力地完成。

3. 高级文件操作：

您是否需要在 JSON 响应中对文件进行编码和返回？FoxServer  在后端为您提供此功能，并使您在实现此任务时无忧无虑。文件操作简单、直接，并完全集成到您的工作流程中。

4. 响应的结构化和一致性：


FoxServer 为 JSON 响应设定了标准，确保每个响应都具有相同的预定义结构：
```javascript
  {
    "status": "success"|"error", 
    "data": null, 
    "message": "HTTP 客户端的一个自定消息"
  }
``` 
这会简化响应并提高整个项目的一致性。

# 实用性
FoxServer 以其实用性而著称，它是为开发人员提供了一个简化和加快在 Visual FoxPro （VFP） 中创建  Web  应用程序的过程的平台。

## Web 站点
使用 FoxServer 开发 Web 应用程序从未如此简单。这个强大的 Web 服务器不仅仅是一个 RESTful API facilitator（译者注：不太好翻译，可以理解为为 RESTful API 提供创建和支持的功能），因为它将自己展示为创建网页和交互式应用程序的完整盟友。以下解释了为什么使用 FoxServer 开发 Web 应用程序如此简单：

1. 预配置的 "Public" 目录：
每个 FoxServer 项目都带有一个名为 “public” 的文件夹，它是您的 Web 应用程序核心。在其中，您会找到必要的文件夹：“html” 用于存储 HTML 文件，“scripts” 用于存储 JavaScript 脚本，“styles” 用于存储 CSS样式表。它提供了一个有序的结构，您仅需在其中置入您的 Web 资源。

2. Index.html 和 404.html 文件：
FoxServer 在 “public” 文件夹中默认包含 “indexhtml” 和 “404html” 文件。前者可以充当您的 Web 应用程序的主页，而后者为未找到资源请求提供一个 404 错误页面。这种初始设置，已经为您的应用程序运行做好了充分的准备，你无需担心创建所需的基本页面。

3. VFP 开发环境已就绪：
FoxServer 与本地的 Visual FoxPro 开发环境无缝集成。无需学习新工具或更改常规工作流程。 public 文件夹成为自然选择，让您专注于开发 Web 应用程序而不会分心。

4. 快捷的部署 Web 应用：
基于预置 “public” 文件夹结构，部署您的 Web 应用程序将会非常的快速简便。FoxServer 旨在缩短开发周期并有效地促进 Web 项目的交付，无需复杂的配置或繁琐的调整。

5. Web 应用程序和 APIs 的灵活性：
FoxServer 提供无与伦比的灵活性。您可以使用它来开发交互式 Web 应用程序和 RESTful API 服务，所有这些都在同一个开发环境。这意味着您可以完全控制要创建的 Web 项目类型。

基于预置的 “public” 文件夹结构，FoxServer 简化并改变了 Web 应用程序开发过程。从初始设计到最终部署，FoxServer 为您提供了将想法转化为功能性 Web 体验的享受之旅。挖掘 FoxServer 的功能，它会将您的 Web 项目提升到一个新的水平！

## API RESTful
您不仅仅可以使用 FoxServer 进行 Web 开发，而且作为一个创建 RESTful API 的平台，它仍旧游刃有余。它拥有一系列旨在使 API 开发过程直观和高效的功能，FoxServer 定位为那些希望推动 Web 服务创建的理想选择。以下是使用 FoxServer 开发 RESTful API 的独特原因：

1.  JWT 令牌的内置函数：
FoxServer 通过内置的 JSON Web Token（JWT）生成器和验证功能简化了在 RESTful API 中实现身份验证和安全性的过程。使用它，您可以简单而有效地保证服务的安全性。

2. 一致的 JSON 响应结构：
FoxServer 为您的 RESTful API 设置了 JSON 响应的标准。通过一致的结构，{status: success|error, data: null, message: 消息内容}，响应的解释变得统一且易于管理，提高了所有服务的一致性。

3. JSON 的自动序列化：
FoxServer 可以自动处理 POST 和 PUT 请求中的 JSON 信息的序列化。这意味着您的数据在后端处理和准备使用时无需手动干预，这将加快开发和数据操作的速度。

4. 对文件进行编码的函数：
FoxServer 为您提供了内置函数以便于您对文件进行编码并使其与 JSON 响应兼容。当您需要通过 RESTful API 高效传输文件时，此功能至关重要。

5. 快捷的集成和部署：
与轻松的 Web 开发一样，FoxServer 可以轻松集成和部署您的 RESTful API。通过定义明确的文件夹结构，您的服务将可以快速轻松地部署。

6. 混合项目的灵活性：
FoxServer 使您能够灵活地在同一开发环境中开发交互式 Web 应用程序和 RESTful API 服务。您可以创建混合项目，根据您的特定需求将两个开发领域合二为一。

FoxServer 简化了 RESTful API 开发的方方面面，从安全性到响应结构再到文件操作。了解这些功能如何协同工作，将为您提供无忧的 Web 服务开发并获得强大的结果。使用 FoxServer 开发 RESTful API，能够体验极速的效率，并将您的能力提升至新的维度！

# 为什么要选择 FoxServer

## 它为明确的目标而设计
FoxServer 的构想是为了赋予 Visual FoxPro（VFP）开发人员在 Web 开发和创建 RESTful API 服务时与其他现代语言拥有相同的能力。其强大的架构和集成功能与提供完整和多功能解决方案的愿景相一致，为那些希望将其 VFP 技能提升到更高水平的人提供支持。

## 简单
FoxServer 足够简单！从与 VFP 本地开发环境的集成到预置的文件夹结构和“预置的强大功能”，FoxServer 使 RESTful API 和 Web 应用程序开发变得简单易用。其直观的方法允许开发人员专注于构建功能和业务逻辑，而不是处理繁琐的配置。使用 FoxServer，简单意味着更快，更高效的开发。

## 可编辑的宏
FoxServer 通过整合宏来提高代码可读性，使开发变得更加容易。这些预定义的宏简化了编写过程，使开发人员更容易理解代码，从而使他们能够专注于应用逻辑而不是语法细节。

# 实现

FoxServer 采用细致的方法实现，为 Visual FoxPro （VFP） 开发人员提供了一个强大而高效的 Web 和 API 服务开发平台。FoxServer 在以下方面脱颖而出：

1. 与 VFP 的原生集成：FoxServer 与原生 VFP 开发环境无缝集成，使开发人员能够平稳过渡到 Web 开发而无需学习新的工具或语言。

3. 高效利用资源：FoxServer 旨在最大限度地提高资源使用率，即使在硬件受限的环境中也能保证最佳性能。

4. 易于实施：FoxServer 清晰的预置结构简化了 Web 项目和 RESTful API 的实现。从初始配置到部署，FoxServer 旨在简化流程的每一步。

## MagicMenu
MagicMenu 是一个创新的工具，它丰富了 FoxServer 的开发体验，允许以简单高效的方式创建 Web 项目、Windows 服务和控制台应用程序。MagicMenu 的一些重要功能包括：
1. Web 项目：MagicMenu 通过自动生成基本项目结构来简化 Web 项目的创建，包括“public”文件夹中的“index.html”和“404.html”等基本文件。

2. 来自原生管理器的项目管理：MagicMenu 使从原生 VFP 项目管理器管理和构建项目变得容易，无需额外的工具。

3. 混合项目：MagicMenu 允许开发人员创建混合项目，将 Web 应用程序和 RESTful API 服务集成到单个开发环境中，从而提供多功能性和灵活性。

## 多线程
FoxServer 使用多线程来提高工作负载密集型环境中的性能和响应能力。因为多线程，FoxServer 允许：

1. 高效处理并发请求：FoxServer 的多线程允许同时处理多个请求，提高可扩展性并确保即使在高工作负载下的最佳性能。

2. 响应能力更强：通过并发操作，FoxServer可以快速响应请求，提升用户体验，确保高效服务。

## 执行的效率和应用的广泛性
FoxServer 旨在提供出色的性能，同时速度要求，可以满足广泛的应用需求。突出其速度的功能包括：

1. 代码优化：高效的部署和代码优化使 FoxServer 能够提供快速的性能，即使在速度至关重要的环境中也是如此。

2. 智能资源管理：FoxServer高效利用资源，在不影响系统稳定性的情况下确保快速性能。

3. 可扩展性：多线程架构和处理并发请求的能力使 FoxServer 具有可扩展性，使其可用于从小型到大型的各种应用程序。

FoxServer 提供全程服务，由MagicMenu等工具提供支持，采用多线程方法以快速响应，并具备处理各种 Web 应用程序和 RESTful API 服务所需的速度。在您的开发的每个方面你都可以发现 FoxServer 的性能和效率！

# 特性
FoxServer 凭借许多功能脱颖而出，这些功能使 Visual FoxPro （VFP） 中的 Web 和 API 服务开发成为一种强大而高效的享受之旅。

## 语法
FoxServer 所使用的语法与您对 VFP 的熟悉程度保持一致，它使开发人员能够利用他们现有的技能而不必学习一套新的规则。它确保过渡到 Web 和 RESTful  API服务开发的过程是平稳的，因为FoxServer使用一致和易于理解的语法。

## 强大的实现能力
FoxServer 实现考虑到了健壮性和性能。其强大的架构确保开发人员可以处理任何规模的项目，从简单的 Web 应用程序到复杂的 RESTful API 服务。FoxServer 利用 VFP 的力量提供了一个强大而多功能的平台。

## 简单
FoxServer 的基本特点就是简单易用。从与 VFP 本地开发环境的无缝集成到预置的文件夹结构和“一应俱全”的功能，FoxServer简化了开发过程。开发人员可以专注于应用程序逻辑，而不会被不必要的细节所困扰。

## 动态
FoxServer 本质是动态的，可以适应 Web 和 API 服务开发的不断变化的需求。您可以在单个开发环境中创建集成交互式 Web 应用程序和 RESTful API 服务的混合项目。适应不同类型的项目能力使 FoxServer 成为一种动态和多功能的选择。

## 内置功能
FoxServer 配备了一组内置功能，它可以简化常见任务。从生成和验证JWT令牌到操作文件和构造 JSON 响应，FoxServer 提供了必要的工具，消除了寻找其他解决方案的需要。

## 示例
FoxServer 通过清晰简洁的示例使理解和应用其功能变得容易。在[examples](https://githubcom/VFPLegacy/FoxServer/tree/main/examples)文件夹中，您将找到实际示例，其说明了功能如何使用、项目结构和最佳实践的方法。这些示例作为开发人员指南，加速了学习过程和项目实施过程。

# 支持和捐赠
如果您发现 FoxServer 对您的工作有用，并希望支持其开发和维护，请考虑通过 [PayPal](https://www.paypal.com/donate/?hosted_button_id=LXQYXFP77AD2G) 捐款或成为 [Patreon](www.patreon.com/IrwinRodriguez) 捐助人

# 许可协议

该项目在 MIT 许可下分发。有关详细信息，请参阅 LICENSE 文件。

# 贡献

欢迎贡献和改进模板！如果您有建议、改进或更正，请随时提出拉取请求！

# 特别鸣谢

本项目使用了以下第三方库，我想向他们的作者和维护者表示感谢：

- [wwDotNetBridge](https://github.com/RickStrahl/wwDotnetBridge): Visual FoxPro 和 .NET 之间实现互操作性的基本库。
- [WinSW](https://github.com/winsw/winsw): WinSW 是一种工具，允许您将任何应用程序作为 Windows 服务运行。
- [MagicMenu](https://github.com/VFPLegacy/MagicMenu): 它是 VFP 的本机工具，允许您创建特殊项目，例如控制台应用程序、Windows 服务、Web 应用程序等。
- [JSONFox](https://github.com/Irwin1985/JSONFox): JSONFox 是一个用于 VFP 的工具，允许您对 JSON 对象进行编码和解码以及其他功能。
- [FoxyPreviewer](https://www.foxypreviewer.com/): 将 FRX 报告打印为 PDF。

---

**免责声明**

软件是按原样提供的，不提供任何形式的保证，明示或暗示，包括但不限于适销性、特定用途的适用性和非侵权性的保证。在任何情况下，作者或版权持有人均不对任何索赔、损害或其他责任承担责任，无论是合同、侵权还是其他方面的行为，由此引起的或与之相关的软件或使用。或其他软件中的不当使用。
