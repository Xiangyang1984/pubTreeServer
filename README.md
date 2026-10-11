<div align="center">

# pubTreeServer

### An All-in-One Web Platform from Genomic Sequences to Publication-Ready, Annotated Phylogenomic Trees

**Automated phylogenomic inference · Interactive tree editing · 14 annotation types · Publication-ready export**

[**Online platform ↗**](https://mgs.microbialgenomic.cn/pubTreeServer) · [**Run pubAutoTree ↗**](https://mgs.microbialgenomic.cn/pubTreeServer/pubAutoTree/user_request) · [**Open TreeVisualizer ↗**](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer)

[**User guide ↗**](https://mgs.microbialgenomic.cn/pubTreeServer/usage) · [**Tree gallery ↗**](https://mgs.microbialgenomic.cn/pubTreeServer/tree_gallery) · [**Local installation ↗**](https://mgs.microbialgenomic.cn/pubTreeServer/local-install)

### [⬇ Download the pubTreeServer local deployment package](https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz)

</div>

---

## Overview

**pubTreeServer** is a web platform that connects **pubAutoTree**, an automated phylogenomic inference pipeline, with **TreeVisualizer**, an interactive system for visualization, annotation and figure customization. It supports a continuous workflow from genome input to annotated phylogenomic figures; researchers with a precomputed tree can start directly in TreeVisualizer.

> **Repository purpose:** This GitHub repository is the **project information, documentation and download portal**. The local software distribution is hosted externally at the official download URL above. The application archive is **not** stored in Git history; downloading or cloning this repository does not install pubTreeServer.

## Choose your workflow

| | Mode 1 — Genome input | Mode 2 — Pre-built tree input |
|---|---|---|
| **Input** | NCBI assembly accessions or FASTA genome assemblies | Newick tree file (`.nwk`) |
| **Workflow** | pubAutoTree → inferred phylogeny → TreeVisualizer | TreeVisualizer directly |
| **Start** | [Run pubAutoTree ↗](https://mgs.microbialgenomic.cn/pubTreeServer/pubAutoTree/user_request) | [Open TreeVisualizer ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer) |

<p align="center"><img alt="pubTreeServer integrated workflow: two input modes converge on tree visualization, 14 annotation types and figure export" src="docs/assets/pubTreeServer_workflow.png" width="760"></p>

## Core features

| Component | Capabilities |
|---|---|
| **pubAutoTree** | Phylogenomic inference from FASTA genomes or NCBI assembly accessions; multiple inference methods, with analysis-dependent quality control and recombination filtering. |
| **TreeVisualizer** | Rectangular, circular and unrooted tree layouts; interactive tree editing and real-time figure customization. |
| **Excel-based annotation** | A unified annotation spreadsheet, **14 supported annotation types**, global settings and column-specific controls. |
| **Tree gallery** | Ten online examples with views, editable copies and downloadable example data. |
| **Local deployment** | Precompiled web frontend and backend, bundled workflow scripts, and configurable local genomic database support. |

### Save and share configuration

The **Save Configuration** function saves the current visualization and annotation settings, including layout, tree state, annotation data, colors, legends, scale bar, edited tree position, and other interactive states. The saved URL can be shared with collaborators, enabling team members to review and refine the same configured figure.

### Publication-ready export

Export publication-ready figures in SVG, PDF, EPS, PS, PNG and JPEG formats.

### 14 supported annotation types

`label` · `leafnode` · `leafbranch` · `leafdashedbranch` · `clade` · `leafclade` · `binaryplot` · `heatmap` · `bar` · `stack` · `line` · `scatterplot` · `bubble` · `pie`

Read the [annotation type reference](docs/annotations.md) or the [official usage guide](https://mgs.microbialgenomic.cn/pubTreeServer/usage) for Excel format and configuration details.

## Download and local installation

**Canonical download (hosted outside GitHub):**

https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz

On Linux or macOS, download and unpack:

```bash
curl -fL --retry 3 -o pubTreeServer_local.tar.gz \
  https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz
tar -xzf pubTreeServer_local.tar.gz
cd pubTreeServer_local
```

Or use the included helper: `bash scripts/download_pubTreeServer.sh`. Download size may change with new builds. **Extraction alone is not sufficient for deployment:** install and configure Java 8, Redis, Node.js, the appropriate Perl/Python runtime and the phylogenetic analysis tools used by your workflow. Follow the [local installation summary](docs/installation.md) and [official deployment guide ↗](https://mgs.microbialgenomic.cn/pubTreeServer/local-install).

The inspected distribution contains `front-End/dist/`, `back-End/pubTreeServer.jar`, `main.pl`, `MGOAP.pl`, `bin/`, `subprogram/` and `db/`. It is primarily a **local deployment distribution**, not a standalone GitHub source checkout.

## Examples and documentation

| Resource | Description |
|---|---|
| [Usage guide ↗](https://mgs.microbialgenomic.cn/pubTreeServer/usage) | Inputs, operations, annotation table and export. |
| [Tree gallery ↗](https://mgs.microbialgenomic.cn/pubTreeServer/tree_gallery) | Ten interactive visualization and annotation examples. |
| [Example-data links](docs/gallery.md) | Direct `.nwk` downloads for Examples 01–10 and `.xlsx` for Examples 05–10. |
| [Local installation ↗](https://mgs.microbialgenomic.cn/pubTreeServer/local-install) | Authoritative dependency and deployment instructions. |
| [Quick start](docs/quick-start.md) | Which entry point to choose and what to do first. |
| [FAQ](docs/faq.md) | Common download, setup and repository questions. |

### Example gallery preview

| Example | Focus | Online example |
|---|---|---|
| **01** | Basic rectangular phylogeny | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=basic-rectangle) |
| **02** | Basic circular phylogeny | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=basic-circular) |
| **03** | Basic unrooted phylogeny | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=basic-unrooted) |
| **04** | Selected-element styling and interactive editing | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=interactive-editing) |
| **05** | Categorical annotation tracks | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=categorical-annotation) |
| **06** | Quantitative annotation tracks | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=quantitative-annotation) |
| **07** | All 14 annotation types with unrooted circular tracks | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=multidimensional-annotation) |
| **08** | Publication-ready annotated figure | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=publication-ready) |
| **09** | Large-tree visualization and editing | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=large-tree) |
| **10** | Save, reopen and continue editing | [View ↗](https://mgs.microbialgenomic.cn/pubTreeServer/TreeVisualizer?galleryExample=save-recover) |

[Browse all 10 examples and download their test data →](docs/gallery.md)

## Citation and contact

For citation guidance, see [CITATION.cff](CITATION.cff) and [docs/citation.md](docs/citation.md). Do not cite an unpublished paper as if it were published.

**Contact:** Dr. Xiangyang Li — [lixiangyang@fudan.edu.cn](mailto:lixiangyang@fudan.edu.cn) · [lixiangyang1984@hotmail.com](mailto:lixiangyang1984@hotmail.com)

**Lab website:** [Bacterial Genomic Data Mining & Bioinformatic Analysis](https://www.microbialgenomic.cn/)

**License:** This documentation portal does not add or imply a new license for the externally hosted software distribution. See [LICENSE_NOTICE.md](LICENSE_NOTICE.md).

---

<sub>Maintainer note: to publish this repository, upload the *contents* of the portal ZIP to the root of a public GitHub repository. See [GITHUB_UPLOAD_GUIDE_中文.md](GITHUB_UPLOAD_GUIDE_中文.md). An optional static GitHub Pages landing page is provided in <code>docs/index.html</code>.</sub>
