#!/bin/bash
  DOMAINS="web.whatsapp.com whatsapp.com whatsapp.net"

  for DOMAIN in $DOMAINS; do
        echo "Consultando DNS para: $DOMAIN"
        IPS=$(dig $DOMAIN +short | grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$')
        for IP in $IPS; do 
        echo " IP agregada al  fire: $IP"
        sudo nft add element inet filter whatsapp_ips { $IP }
    done
done



