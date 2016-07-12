### EXPECT

- [x] 🔉🕑 haojing代码中通用底层的组件化（如Lta，Mta，Redis等） @腾远
- [x] 🔊🕑 试水至少一款微服务基础服务，打磨整个流程 @腾远

### ACTUAL
1. 确立了composer在haojing中的主导地位（unittest、autoloader），并试图推行给Engineer
2. haojing部分代码重构（ErrorHandler、route Dispatcher、MData）
3. 建立推送服务，对接apnsHttp2/Jiauguang/Mipush，并完成对应的php组件，目前应用于lekongkong项目
4. haojing组件化尝试，目前有Logger（Mta、Lta）部分独立为组件
5. 试图将Auth认证部分组件化，目前结构代码完成，业务部分pending中...
6. 试图将Redis组件化，然而发现通用性并不强，还没有上线使用

### Q3 TODO
1. HaojingOrm独立为可复用的组件，并支持mysql transaction功能
2. cronjob/queue采用更优雅的解决方案，可能引入其他message queue，并适配现有结构形成组件
3. 协助进行php7的升级，处理现在include/thirdparty对外部代码的依赖

#### Extra
1. 重构Haojing Web框架，使其更加抽象化、优化调度算法、提供更优雅的路由配置方案、提供更优雅的Cookie/UA等获取工具
2. 重构unittest框架，向工程师推行unittest文化，并引入phpmd/phpcs等design pattern/code style工具
