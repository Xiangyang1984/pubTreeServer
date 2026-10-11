# pubTreeServer GitHub 门户：直接上传操作指南

**本压缩包已经生成了 GitHub 仓库首页 `README.md`、全部 Markdown 文档、14 种注释说明、10 个范例数据链接、下载脚本、Citation 元信息和可选的 GitHub Pages 页面。** 不包含 85 MB 的软件安装包。

## 一、创建 GitHub 仓库

1. 打开 https://github.com/new 并登录。
2. 仓库名填写 `pubTreeServer`（推荐），可选简短描述：`An all-in-one platform for phylogenomic inference, interactive tree visualization, and annotation.`
3. Visibility 选择 **Public**。
4. 不要勾选自动创建 README、`.gitignore` 或 License（这些部分已经在门户目录中处理，LICENSE 尚待权利人确定）。
5. 点击 **Create repository**。

## 二、直接网页上传所有文件

1. **先解压** `pubTreeServer_GitHub_Portal.zip`。
2. 打开解压后的 `pubTreeServer_GitHub_Portal` 文件夹，**把里面所有文件和文件夹上传到仓库根目录**，不要把父文件夹整体套进仓库。
3. GitHub 仓库页面选择 **uploading an existing file** 或 **Add file → Upload files**，拖入文件。
4. **特别注意：** 网页拖放对隐藏文件/隐藏目录以及子目录的支持受操作系统、浏览器和上传方式影响，`.gitignore` 和 `.github/` 一定要检查是否成功出现；若未出现，使用下面的 `git` 方式最可靠。
5. Commit message 可填写：`Add pubTreeServer official project portal`；提交后首页会自动渲染 `README.md`。

### 更推荐的方式：用 Git 一次性提交（保留隐藏文件和目录）

在**解压后的门户目录内**运行：

```bash
cd /path/to/pubTreeServer_GitHub_Portal
git init
git branch -M main
git add -A
git commit -m "Add pubTreeServer project portal"
git remote add origin https://github.com/YOUR-ACCOUNT/pubTreeServer.git
git push -u origin main
```

**只需要替换** `YOUR-ACCOUNT` 为你实际的 GitHub 用户名或组织名。如果创建仓库时已有初始 README 提交，应先将远端与本地历史合并，避免直接推送失败。

## 三、首页应该出现什么内容

- pubTreeServer 英文项目介绍与下载入口；
- pubAutoTree / TreeVisualizer 两种入口；
- 14 种注释类型及工作流程图（已将旧图的“13 Types”修正为“14 Types”）；
- 帮助文档、Tree Gallery、Local Install 官方链接；
- 10 个范例及其 NWK / Excel 下载说明；
- 统一的外部安装包下载地址：<https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz>。

**请勿上传**原来的 `pubTreeServer_local.tar.gz` 到该仓库，下载按钮会自动转到你的服务器。

## 四、可选：启用 GitHub Pages 独立静态门户

仓库 `docs/index.html` 和 `docs/style.css` 已经准备好，作为 README 以外的独立、响应式项目官网页面，不需要 Node、Vue 或部署服务器。

1. 在 GitHub 仓库打开 **Settings → Pages**。
2. **Build and deployment** 中选 **Deploy from a branch**。
3. 选择 `main` 分支和 `/docs` 目录，点击 **Save**。
4. 等待 GitHub Pages 部署后，GitHub 会展示对应页面地址，通常形如 `https://YOUR-ACCOUNT.github.io/pubTreeServer/`。最终域名以 GitHub 实际提示为准。

不启用 Pages 也不影响 GitHub 仓库首页：**README 自动生效**。

## 五、创建 GitHub Release（可选）

在仓库中打开 **Releases → Draft a new release**，自行选择版本标签、发布日期和更新内容，并在正文中放置外部下载链接。不需要向 GitHub Release 上传 85 MB 包。**不要直接使用未核实的版本号、DOI、论文引用或 LICENSE。**

## 六、发布前注意

- 本门户不会上传开发源码。当前 `.tar.gz` 是**本地部署发行包**，包含预编译前端、后端 JAR 和分析脚本。
- 服务器上的实际 `.tar.gz` 必须一直可访问；未来替换成新版时，URL 可以保持不变，或者更新 README 和下载脚本。
- 主页图来自压缩包中的 `pubTreeServer_flow`，仅修正注释数量为 14，并生成适合 GitHub 的白底 PNG；没有修改软件安装包。
- `CITATION.cff` 只填写已在官方主页公开的联系人和项目网址。将来论文正式发表后再补充 DOI / 引文 / 全部作者。
- 没有擅自为软件指定 MIT 或其他许可证，详情见 `LICENSE_NOTICE.md`。
