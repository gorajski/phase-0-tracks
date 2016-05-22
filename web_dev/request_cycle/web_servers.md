*What are some of the key design philosophies of the Linux operating system?*
- Each program should do one thing and do it well
- Make your design readable and thereby easily modifiable rather than efficient for the machine.  AKA portability over efficiency
	- Handle data in text streams rather than numerical representations
- Assume the user knows what they are doing; give them maximum capability and few safeguards against ruining the system.


*In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?*
A virtual private server is an emulated physical server that exists entirely within the memory system of another machine.  This machine may have several chunks of memory broken out into their own self-contained virtual private servers.  

*Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?*
Apparently, bugs and viruses share the system privileges of the application they attack, so if an application is run while in the root directory, an issue can bleed out into the overall system and crash it or cause security concerns.

It's also bad because a careless user mistake can cause damage to the root directory, which may trash your whole system.  If you break something as a non-administrative user, it can be recovered.  If something is broken as root, it may not be recoverable.