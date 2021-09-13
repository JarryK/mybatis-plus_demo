# mybatis-plus_demo
## 一个简单的springboot + mybatis-plus自动生成CRUD代码学习demo
### 使用方法
#### 1、更改文件application-dev.yml 配置为你的数据库配置
```yml
  datasource:
    url: jdbc:mysql://127.0.0.1:3306/synthesize?useUnicode=true&characterEncoding=utf8&useSSL=true&autoReconnect=true&nullCatalogMeansCurrent=false
    username: syn
    password: syn_123456
```
#### 2、更改文件utils文件夹下的CodeGenerator.java文件配置为你的数据库配置，并运行
```java
        dsc.setUrl("jdbc:mysql://localhost:3306/synthesize?useUnicode=true&useSSL=false&characterEncoding=utf8");
        // dsc.setSchemaName("public");
        dsc.setDriverName("com.mysql.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("root");
```
#### 3、控制台输入输入表名称
![Snipaste_2021-09-13_14-39-19.png](http://tc.lihail.cn/Snipaste_2021-09-13_14-39-19.png)

#### 完成上述操作后控制台成功输出(不用创建文件夹，没有文件夹会自动创建)
![Snipaste_2021-09-13_14-42-48.png](http://tc.lihail.cn/Snipaste_2021-09-13_14-42-48.png)

### 测试
#### 提供了基本的crud测试接口样例
