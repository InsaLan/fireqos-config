###Configuration QoS
##vpn
la config envoyer dans les vpn est dans `fireqos.conf`
DEVICE doit etre mis au nom de l'interface tunnel vpn
SPEED doit etre mis au débit maximum autorisé pour l'interface

##local
la config local est dans `fireqos_head.conf`
DEVICES est une liste séparé par des espaces des interfaces de sortie internet (pas les tunnels vpn)
SPEED est la bande passante total dispo pour tout le réseau

##list de vpn
la liste des vpn est dans `vpn_list`
Chaque ligne doit contenir un nom, '=' et une ip/un nom de domaine

###Lancement
Pour installer les dépendances sur les vpn et en local (avant évènement)
```bash
./all.sh install
./install.sh
```

Pour lancer la QoS sur les vpn et en local (en début d'évènement)
```bash
./all.sh push_cfg
./push_cfg.sh
```
