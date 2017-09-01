#COMANDI DA RICETTARE
(DA ubuntu:latest)
--INSTALLAZIONE--
# apt-get update
# apt-get install deluged deluge-web deluge-console -y

--CONFIGURAZIONE DELUGED PER ACCETTARE CONNESSIONI DA CLIENT
eseguire deluged e poi killarlo per creare la struttura dei files di configurazione
# deluged
(ctrl+C)
comando per abilitare un utente al collegamento tramite client
# echo "alice:MyC0mpL3xPass:10" >> ~/.config/deluge/auth
editare il file core.conf (deluged must not be running) in the config and change allow_remote from false to true

--CONFIGURAZIONE/ESECUZIONE CLIENT--
esegue il webserver per la GUI in background
# deluge-web -f
accedere a http://IP-HOST:8112/ password: deluge
