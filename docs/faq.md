# Frequently asked questions

[← Project home](../README.md)

### Why is the GitHub repository small?

GitHub is used as a project portal for documentation and links, while the application distribution is [hosted on the official site](https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz). This keeps build artifacts and database content out of the repository's commit history.

### Can I install pubTreeServer by cloning this repository?

No. The repository contains portal content only. Download the separate `.tar.gz` archive and follow the [official local installation guide](https://mgs.microbialgenomic.cn/pubTreeServer/local-install).

### Is the download a full development source tree?

The supplied local archive contains a compiled frontend (`dist`), backend JAR and analysis scripts. It is described here as a **local deployment distribution**, not as an independently verified complete development-source release.

### Does the local archive already contain every tool and the full NCBI database?

No. Some tools are bundled, but additional runtime/analysis dependencies and appropriate database content are required for particular analyses. See [installation](installation.md).

### Why are there two local addresses for frontend and backend?

The backend runs its API on the port set in `application.yml`; `npx serve -s dist` hosts the frontend, often on a different port. The frontend's `BASE_URL` targets the backend/API address and must match backend `app.domain-url`.

### What annotation types are supported?

There are **14** types, including `leafclade`, `leafdashedbranch` and `scatterplot`. See [annotation reference](annotations.md).

### How can I get example trees and annotation spreadsheets?

Use the [online gallery](https://mgs.microbialgenomic.cn/pubTreeServer/tree_gallery) or the [direct example-data table](gallery.md).

### Why is there no software license in this repository?

The project website describes pubTreeServer as free and open-source, but the inspected package did not establish an authoritative license text for the entire distribution. The portal does not invent one. The copyright holder can add a suitable explicit license separately.
