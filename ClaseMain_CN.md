# Main 类文档

RESTFox Main 类是 Visual FoxPro 中 RESTful API 项目的基础。在本文档中，我们将探讨其属性并提供示例以了解其功能。

## Main 类属性

### `cHost`

- **描述**: `cHost` 属性定义了运行 API 的服务器的 IP 地址或域名。

- **示例**:
```foxpro
  cHost = "127.0.0.1"
```

### `nPort`

- **描述**: nPort 属性定义了 API 将侦听请求的端口号。

- **示例**:
```foxpro
  nPort = 8080
```

### `cAPIPath`
- **描述**: **cAPIPath** 属性定义了 API 的基本路径。该属性对于组织资源和端点非常重要。典型的 URL 由三部分组成：域、API 路径和 Endpoint(端点)。
  - **域**: 这是服务器的 IP 地址或域名，在 `cHost` 中定义。
  - **API 路径**: 这是 `cAPIPath` 的值， API 的基本路径。
  - **Endpoint(端点)**: 它代表 API 中的特定资源。

- **示例**:
```foxpro
  cAPIPath = "/api/v1"
```

在下面例子中，域是 "http://127.0.0.1"，API 路径是"/api/v1"，端口可以添加到控制器路径中。

## 使用示例
```foxpro
  * 创建 Main 类的实例
  oAPI = CREATEOBJECT("BaseController_6qg155ze5")
  
  * 设置服务器的 IP 地址或域名
  oAPI.cHost = "127.0.0.1"
  
  * 定义端口号
  oAPI.nPort = 8080
  
  * 建立应用程序接口基本路径
  oAPI.cAPIPath = "/api/v1"
```

在本例中，我们创建了一个 main 类实例，将 **`cHost`** 设置为 "127.0.0.1"，**`nPort`** 设置为 8080，**`cAPIPath`** 设置为"/api/v1"。该配置定义了 API 的可用位置，以及资源和 Endpoint(端点) 的 URL 结构。

请记住，域和 Endpoint(端点) 将添加到控制器的路径中。
