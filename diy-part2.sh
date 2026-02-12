#!/bin/bash

# 1. Создаем папку в будущем образе OpenWrt
# Папка files в корне сборки — это способ добавить свои файлы в прошивку
mkdir -p files/usr/bin

# 2. Скачиваем скомпилированный QFirehose специально для ARM64 (твой cAP ax)
# Мы берем версию aarch64, так как armv7 у тебя не запустится
wget -O files/usr/bin/qfirehose https://github.com/ich777/qfirehose/releases/latest/download/qfirehose-aarch64

# 3. Даем файлу права на исполнение
chmod +x files/usr/bin/qfirehose
