#!/bin/bash
# Принудительно выставляем платформу MikroTik cAP ax
echo 'CONFIG_TARGET_ipq60xx=y' > .config
echo 'CONFIG_TARGET_ipq60xx_generic=y' >> .config
echo 'CONFIG_TARGET_ipq60xx_generic_DEVICE_mikrotik_cap-ax=y' >> .config

# Добавляем LuCI
echo 'CONFIG_PACKAGE_luci=y' >> .config
echo 'CONFIG_PACKAGE_luci-ssl=y' >> .config
