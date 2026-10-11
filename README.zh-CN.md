# pubTreeServer（中文简介）

**pubTreeServer** 将自动化系统发育基因组学分析工具 **pubAutoTree** 与交互式进化树可视化、注释及作图工具 **TreeVisualizer** 集成在统一平台中。支持从基因组序列直接生成进化树，也支持上传已有的 Newick 树进入 TreeVisualizer。

- 在线主页：[pubTreeServer](https://mgs.microbialgenomic.cn/pubTreeServer)
- 自动推树：[pubAutoTree](https://mgs.microbialgenomic.cn/pubTreeServer/pubAutoTree/user_request)
- 可视化和注释：[TreeVisualizer](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer)
- 官方帮助文档：[Usage Guide](https://mgs.microbialgenomic.cn/pubTreeServer/usage)
- 10 个演示范例：[Tree Gallery](https://mgs.microbialgenomic.cn/pubTreeServer/tree_gallery)
- 官方本地部署：[Local Installation](https://mgs.microbialgenomic.cn/pubTreeServer/local-install)
- **软件压缩包下载：** [pubTreeServer_local.tar.gz](https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz)

## 核心功能

1. **pubAutoTree：** 支持上传 FASTA 格式基因组，或提供 NCBI assembly accession 列表进行自动系统发育推断。
2. **TreeVisualizer：** 支持矩形、环形和无根布局，交互编辑树的分支、节点和文字等元素。
3. **14 种注释：** `label`、`leafnode`、`leafbranch`、`leafdashedbranch`、`clade`、`leafclade`、`binaryplot`、`heatmap`、`bar`、`stack`、`line`、`scatterplot`、`bubble`、`pie`。
4. **Excel 统一注释：** 一张 Excel 表导入注释，通过全局设置和列级设置控制显示效果。
5. **论文级导出：** SVG、PDF、EPS、PS、PNG、JPEG。

## 本地部署包下载

```bash
curl -fL --retry 3 -o pubTreeServer_local.tar.gz https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz
tar -xzf pubTreeServer_local.tar.gz
cd pubTreeServer_local
```

本仓库**仅是 GitHub 软件门户**，不上传约 85 MB 的应用压缩包，也不代替部署依赖安装。请以[官方本地部署文档](https://mgs.microbialgenomic.cn/pubTreeServer/local-install)为准。仓库自带的 [部署简要说明](docs/installation.md)、[图库数据下载清单](docs/gallery.md) 和 [GitHub 上传指南](GITHUB_UPLOAD_GUIDE_中文.md) 供快速参考。

> 说明：压缩包包含预编译前后端与分析脚本，不应把“本地部署包”误称为包含全部开发源码的 GitHub 仓库；代码许可必须由软件权利人另行确认。
