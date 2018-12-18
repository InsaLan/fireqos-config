# Configuration QoS
## Configuration distante (sur les VPN)
La configuration envoyée sur les vpn est le fichier `fireqos.conf` :
- DEVICE est le nom de l'interface tunnel vpn (par exemple ```DEVICE=tun0```)
- SPEED est le débit maximum autorisé pour l'interface vpn (par exemple ```SPEED=70mbit```)

## Configuration locale (sur la Gateway)
La configuration locale est le fichier `fireqos_head.conf` :
- DEVICES est une liste séparé par des espaces des interfaces de **sorties internet**, et non les tunnels (par exemple ```DEVICES="bond0.150 bond0.151"```)
- SPEED est la bande passante disponible pour l'ensemble du réseau (par exemple ```SPEED=500mbit```)

## Liste des vpn
La liste des vpn est dans le fichier `vpn_list` :
Chaque ligne doit contenir un nom, '=' et une ip/un nom de domaine (par exemple ```vpn=monvpn.mondomaine.com```)

# Lancement
Afin d'installer les dépendances sur les vpn et en local (avant l'évènement) :
```bash
./all.sh install
./install.sh
```

Pour lancer la QoS sur les vpn et en local :
```bash
./all.sh push_cfg
./push_cfg.sh
```
