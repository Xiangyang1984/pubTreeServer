# Excel annotation: 14 supported types

[← Project home](../README.md) · [Official usage guide ↗](https://mgs.microbialgenomic.cn/pubTreeServer/usage)

TreeVisualizer reads a unified Excel annotation table, supports global settings and column-specific settings, and can combine categorical, quantitative and tree-attached annotations.

| Type | Main use |
|---|---|
| `label` | Leaf metadata marks and optional text labels. |
| `leafnode` | Coloring leaf-node symbols. |
| `leafbranch` | Coloring branches associated with leaves. |
| `leafdashedbranch` | Coloring aligned dashed leaf-branch extensions. |
| `clade` | Group/clade metadata with blocks and labels. |
| `leafclade` | Group leaf-label backgrounds and text by category with a merged group label. |
| `binaryplot` | Binary and presence/absence data. |
| `heatmap` | Continuous or discrete data mapped to colored cells. |
| `bar` | Numeric bars (one value per leaf for the column). |
| `stack` | Stacked multicomponent numeric bars. |
| `line` | Connected numeric values or trends. |
| `scatterplot` | Numeric scatter points with configurable shapes. |
| `bubble` | Bubbles with size or position encoding values. |
| `pie` | Multicomponent proportions displayed as pie charts. |

**Excel preparation:** In the official format the first column identifies the leaf (the example sheet uses `leafnode` / `leafnode_id`), the first row of each annotation column specifies its annotation type, the second row is the track title, and subsequent rows contain metadata matched to the leaf labels. Types are case-insensitive. Multicomponent formats have additional requirements documented in the official guide.

**Try all types together:** [Example 07 in TreeVisualizer ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=multidimensional-annotation) · [Download example07.nwk](https://www.microbialgenomic.cn/pubtreeserverData/tree_gallery_example_data/example07.nwk) · [Download example07.xlsx](https://www.microbialgenomic.cn/pubtreeserverData/tree_gallery_example_data/example07.xlsx).

Consult the live [Usage Guide ↗](https://mgs.microbialgenomic.cn/pubTreeServer/usage) for the exact current table format, supported values and detailed controls; these may evolve with the application.
