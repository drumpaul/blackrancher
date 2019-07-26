# blackrancher
My blackbox Rancher machine
(requisiti almeno 2GB RAM)

INSTALLAZIONE RANCHEROS MACHINE

- avvia un'istanza di RancherOS da ISO e acquisire i permessi di root
$ sudo -i

- Scarica e fornisci i permessi di esecuzione allo script per clonare tutti gli script necessari all'installazione
# wget https://raw.githubusercontent.com/drumpaul/blackrancher/master/clone.sh -O clone.sh
(https://raw.githubusercontent.com/drumpaul/blackrancher/master/clone.sh)
# chmod +x clone.sh

- Esegui git_clone_blackrancher.sh per clonare il progetto "blackrancher"
# ./clone.sh

- entra nella cartella del progetto ed edita il file cloud-config.yml e modificarlo come opportuno
# cd blackrancher
# sudo vi cloud-config.yml

- recuperare il macaddress della scheda di rete della macchina host e aggiornare il file cloud-config.yml

- dopo aver terminato le modifiche al file cloud-config.yml verificarne la coerenza
# sudo ros config validate < cloud-config.yml

- individuare il disco su cui installare il sistema operativo RancherOS
# fdisk -l

- infine lanciare il comando di installazione (ad es. device /dev/sda)
# sudo ros install -f -c cloud-config.yml --append "rancher.password=rancher" -d /dev/sda
