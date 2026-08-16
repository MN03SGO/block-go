#!/bin/bash
CONTENIDO=$(sudo nft list set inet filter whatsapp_ips)
if echo "$CONTENIDO" | grep -q "elements"; then
    echo "bloqueado"
else
    echo "desbloqueado"
fi






