# Local installation and deployment

[← Project home](../README.md) · [Official installation instructions ↗](https://mgs.microbialgenomic.cn/pubTreeServer/local-install)

**Canonical resource:** This page is a concise guide based on the supplied local deployment archive and the deployment instructions embedded in its frontend. The [live official installation page](https://mgs.microbialgenomic.cn/pubTreeServer/local-install) remains authoritative for software versions, additional dependencies and tool-specific configurations.

## 1. Download and inspect the distribution

```bash
curl -fL --retry 3 -o pubTreeServer_local.tar.gz \
  https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz
tar -tzf pubTreeServer_local.tar.gz > /dev/null
tar -xzf pubTreeServer_local.tar.gz
cd pubTreeServer_local
```

The inspected archive includes:

```text
pubTreeServer_local/
├── main.pl
├── MGOAP.pl
├── back-End/
│   ├── application.yml
│   └── pubTreeServer.jar
├── front-End/
│   └── dist/             # precompiled frontend + config.json
├── bin/                  # pubAutoTree, genome retrieval, NCBI updater
├── subprogram/
├── db/                   # packaged local database/index content
├── log_dir/
├── temp/
└── upload_dir/
```

## 2. Backend installation & configuration

Install **Java 8**, **Redis**, and a thread-enabled **Perl** runtime with **BioPerl**, plus **Python 3**, **Pillow**, **Inkscape**, and relevant archive/system utilities. The backend needs Redis running before startup. The official site gives example Conda commands and details for mail/figure export dependencies.

Edit `back-End/application.yml`:

```yaml
server:
  port: 8080
app:
  base-path: /absolute/path/to/pubTreeServer_local
  domain-url: http://localhost:8080
```

The existing file also contains Spring/Redis, retention and official gallery settings; **do not replace the entire file with the snippet above**. Edit only the intended values. The `base-path` must point to the directory containing `main.pl`, `MGOAP.pl`, `bin/`, `subprogram/` and `db/`. Prefer a directory path without spaces or shell metacharacters.

Ensure the backend process has write access to `upload_dir/`, `temp/`, `log_dir/`, `temp_fileNumCheck/`, and any other job directories specified by the deployment guide. From `pubTreeServer_local/back-End/`, start:

```bash
java -jar pubTreeServer.jar
```

## 3. Frontend installation & configuration

Install a Node.js LTS release compatible with `serve`. The supplied `dist` directory is already compiled; **no Vue rebuild is needed** for this package.

Edit `front-End/dist/config.json`:

```json
{
  "BASE_URL": "http://localhost:8080",
  "API_PATH": "/api"
}
```

`BASE_URL` must match `app.domain-url` in the backend `application.yml`. This is the **backend/API address**, not necessarily the browser URL/port of the separately served frontend.

From `pubTreeServer_local/front-End/`, start:

```bash
npx serve -s dist
```

Open the frontend URL and port displayed by the `serve` command, appending `/pubTreeServer` if needed (for example, `http://localhost:<frontend-port>/pubTreeServer`). The actual port is assigned at runtime unless explicitly configured; do not assume it equals the backend port.

## 4. pubAutoTree dependencies

Depending on the selected pipeline branch, the official instructions cover **Prodigal, Prokka, Roary, OrthoFinder, MUSCLE, SNP-sites, trimAl, RAxML-NG, GTDB-Tk v2, IQ-TREE, skani, BLAST+**, and additional bundled tools. The local genome retrieval/quality branch also uses **BioPerl, CheckM 1.x and QUAST**.

Configure executable paths and runtime environments in:

```text
bin/pubAutoTree/program_paths.conf
bin/localObtain_genome/tool_configure.txt
```

From the project root, the archive's dependency checker may be run with:

```bash
perl bin/pubAutoTree/scripts/tools/check_program_paths.pl
```

The checker can report optional branches; confirm prerequisites for the operations you intend to run. Test a small job before production use.

## 5. Local genomic database (optional for FASTA-only input)

For NCBI accession-based retrieval, the platform expects an index at `db/sum.tab` and `.gbff.gz` genome files under `db/data/`. The local database updater lives in `bin/UpdateNcbiDateset/`; its dependencies and configuration are documented in Section 4 of the official installation page. **The local archive is not a substitute for downloading/maintaining a complete local NCBI bacterial and archaeal database.**

The updater's settings are in:

```text
bin/UpdateNcbiDateset/tool_configure.txt
```

The updater requires additional tools (including `wget`, `Array::Utils`, and optionally Aspera). Some mirrors/paths may need reconfiguration for your environment.

## Troubleshooting checklist

- `java -version` reports the intended Java 8 runtime.
- Redis is available at the address configured for the backend.
- `front-End/dist/config.json` → `BASE_URL` exactly matches `back-End/application.yml` → `app.domain-url`.
- `app.base-path` points to the extracted archive's root and is writable where needed.
- The backend's runtime environment can find the correct Perl/Python and analysis executables; activating Conda in a different terminal does not configure an already-running service.
- Required phylogenomic tools are available for the selected method.
- Browser access uses the frontend URL provided by `serve`, which may have a different port from the backend.

For complete command examples and current prerequisites, read [Local Install ↗](https://mgs.microbialgenomic.cn/pubTreeServer/local-install).
