<cfoutput>

ssh -l root #rc.privateIP# -p 22 -o StrictHostKeyChecking=no 'sed -i "s/Defaults    requiretty/##Defaults    requiretty/g" /etc/sudoers; chmod +x /etc/rc.d/rc.local; reboot'

</cfoutput>