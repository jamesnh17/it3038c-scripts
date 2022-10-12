***Purpose***:

	I've been trying to grow my network/sysadmin skills and needed safe environments to do this with.
	I started building vm's for different 'everyday' computing needs & on occassion their internet capabilities
	seem to break. After troubleshooting many times and finally finding an answer, I wanted to create a quick 
	response for whenever this issue happens. I plan on updating this to loop and re-check the connection once
	the network adapter/dhcp has been reset.

***Explanation***:

-Script is meant to check for a network connnection by using netcat with google
-Netcat was chosen since many admins block ping/icmp
-You must have sudo/admin priviliges in order to run the code which will reset the adapter
-Using terminal, simply call 'project1.sh' from whatever directory you save it to, and follow the prompts

***Disclosure***:

I'm a scripting noob, use at your own risk. Should an issue arise, blame Putin.
