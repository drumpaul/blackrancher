# blackrancher
My blackbox Rancher machine

INSTALLAZIONE RANCHEROS MACHINE

- avvia un'istanza di RancherOS da ISO o macchina preinstallata e acquisire i permessi di root
$ sudo -i

- Scarica e fornisci i permessi di esecuzione allo script per abilitare l'uso del comando "git"
# wget https://raw.githubusercontent.com/drumpaul/blackrancher/master/clone_blackrancher.sh -O clone_blackrancher.sh
# chmod +x clone_blackrancher.sh

- Esegui git_clone_blackrancher.sh per clonare il progetto "blackrancher"
# ./git_clone_blackrancher.sh

- entra nella cartella del progetto ed edita il file cloud-config.yml e modificarlo come opportuno
# cd blackrancher
# vi cloud-config.yml

- dopo aver terminato le modifiche al file cloud-config.yml verificarne la coerenza
#ros config validate < cloud-config.yml

- individuare il disco su cui installare il sistema operativo RancherOS
# fdisk -l
