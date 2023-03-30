# NavTables-Always-Built
Checks if tranzit and die rise navcard tables are assembled at start of game. If not, assembles them for you. 

Meant to be used in combination with the "resetStats" Plutonium command to allow for easy replay of any BO2 easter eggs. If an unbuilt Nav Card Table is detected on game start you will recieve a "Nav-card Tables Built: Restart match to apply" message in the bottom left of the screen. You can either do a hard reset of the match, or use the "fast_restart" command to apply the changes. Once you have restarted the match you will find that the Nav Card table will be assembled.

Compiled with gsc-tool: https://github.com/xensik/gsc-tool#gsc-tool using the command "gsc-tool comp t6 Navtables-Always-Built.gsc"
