#!/bin/bash

VERSION=$1


if [ -z "$VERSION" ] ; then
  echo "Kullanım: $0 <versiyon> "
  exit 1
fi

echo "Kurulum başlatılıyor..."
echo "Versiyon: $VERSION"


# Örnek indirme
URL="https://github.com/usersdot/utest/raw/refs/heads/master/ep_${VERSION}"
TARGET="ep_${VERSION}"

echo "Binary indiriliyor: $URL"
curl -L "$URL" -o "$TARGET"

chmod +x "$TARGET"

# Symlink oluştur
ln -sf "$TARGET" "ep"

echo "Kurulum tamamlandı!"