# ControllerHelper 类手册

ControllerHelper 类是 RESTFox 的基本组成部分，它提供了多种功能来协助在 Visual FoxPro 中开发 RESTful API。在本手册中，我们将探讨该类中可用的方法，并提供如何使用这些方法的示例。

## ControllerHelper 方法

### SetConnectionString(cConnectionString)

SetConnectionString 方法用于设置驱动程序中数据库操作所使用的数据库连接字符串。

例如:
```foxpro
oHelper.SetConnectionString("DRIVER={MariaDB ODBC 3.1 Driver};SERVER=localhost;USER=root;PASSWORD=1234;PORT=3309;DATABASE=mi_basededatos")
```

### OpenConnection()

OpenConnection 方法用于使用先前建立的连接字符串打开与数据库的连接。

例如：
```foxpro
  IF oHelper.OpenConnection()
     && "成功建立连接"
  ELSE
     && "打开连接时出错"
  ENDIF
```

### CloseConnection()

CloseConnection 方法用于关闭与数据库的连接。

例如：
```foxpro
  oHelper.CloseConnection()
  && "关闭连接"
```

### QueryToJSON()

QueryToJSON 方法用于执行 SQL 查询，并以 JSON 格式返回结果。

例如：
```foxpro
oHelper.cQuery = "SELECT * FROM productos"
cJsonResult = oHelper.QueryToJSON()
```

### ExecuteQuery()

ExecuteQuery 方法用于插入、更新或删除操作后，在数据库中执行该查询。

例如：
```foxpro
oHelper.cQuery = "INSERT INTO productos (nombre, precio) VALUES ('Producto1', 10.99)"
IF oHelper.ExecuteQuery()
   && "已成功插入数据"
ELSE
   && "插入记录出错"
ENDIF
```

### GetLastID()

GetLastID 方法用于在插入后获取最后插入表中的 ID。

例如：
```foxpro
  IF oHelper.ExecuteQuery()
     nLastID = oHelper.GetLastID()
     && "最后插入的 ID： " + TRANSFORM(nLastID)
  ELSE
     && "插入记录出错"
  ENDIF
```

### GetExceptionMessage(loException)

GetExceptionMessage 方法用于获取操作产生的异常信息。

例如：
```foxpro
  TRY
     // 产生异常的操作
  CATCH TO loEx
     cErrorMessage = oHelper.GetExceptionMessage(loEx)
     && "错误：" + cErrorMessage
  ENDTRY
```
这些是 ControllerHelper 类中最常用的一些方法。您可以用它们来管理数据库操作和处理控制器中的异常。
