#!/bin/bash
# Удаляем упоминание helloworld, если оно там было
sed -i '/helloworld/d' feeds.conf.default

# Добавляем только qfirehose (чистые исходники)
echo 'src-git qfirehose https://github.com/miz-ar/openwrt-qfirehose.git' >> feeds.conf.default
