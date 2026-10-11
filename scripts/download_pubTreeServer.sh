#!/usr/bin/env bash
# Download the official externally-hosted local distribution (Linux / macOS).
set -Eeuo pipefail

URL='https://www.microbialgenomic.cn/pubtreeserverData/pubTreeServer_local.tar.gz'
DEST_DIR="${1:-.}"
mkdir -p "$DEST_DIR"
DEST_DIR="$(cd "$DEST_DIR" && pwd)"
ARCHIVE="$DEST_DIR/pubTreeServer_local.tar.gz"
PART="$ARCHIVE.part"

if [[ -s "$ARCHIVE" ]] && tar -tzf "$ARCHIVE" >/dev/null 2>&1; then
  echo "[SKIP] Valid archive already exists: $ARCHIVE"
else
  if command -v curl >/dev/null 2>&1; then
    echo "[INFO] Downloading from: $URL"
    # A partial file can be resumed when the server supports HTTP ranges.
    if ! curl --fail --location --retry 3 --connect-timeout 20 --continue-at - \
      --output "$PART" "$URL"; then
      echo '[WARN] Resume failed; retrying a full download.' >&2
      rm -f "$PART"
      curl --fail --location --retry 3 --connect-timeout 20 \
        --output "$PART" "$URL"
    fi
  elif command -v wget >/dev/null 2>&1; then
    echo "[INFO] Downloading from: $URL"
    wget --continue --tries=3 --timeout=30 -O "$PART" "$URL"
  else
    echo '[ERROR] Install curl or wget first.' >&2
    exit 1
  fi

  echo '[INFO] Testing archive integrity...'
  if ! tar -tzf "$PART" >/dev/null 2>&1; then
    echo '[ERROR] Download failed integrity check; keeping .part file for inspection.' >&2
    exit 1
  fi
  mv -f "$PART" "$ARCHIVE"
fi

echo "[OK] Archive: $ARCHIVE"
echo "[NEXT] tar -xzf \"$ARCHIVE\" -C \"$DEST_DIR\""
echo '       Then follow: https://mgs.microbialgenomic.cn/pubTreeServer/local-install'
