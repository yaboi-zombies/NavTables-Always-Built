#include maps\mp\_utility;
#include maps\mp\_visionset_mgr;
#include maps\mp\_music;
#include maps\mp\zombies\_zm_audio;
#include maps\mp\animscripts\zm_combat;
#include maps\mp\animscripts\zm_utility;
#include maps\mp\animscripts\utility;
#include maps\mp\animscripts\shared;
#include common_scripts\utility;
#include maps\mp\gametypes_zm\_hud_util;
#include maps\mp\zombies\_zm;
#include maps\mp\zombies\_zm_stats;
#include maps\mp\zombies\_zm_utility;
#include maps\mp\zombies\_zm_weapons;
#include maps\mp\gametypes_zm\_hud_message;
#include maps\mp\gametypes_zm\_gv_actions;
#include maps\mp\gametypes_zm\_weapons;


init()
{
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
		
    }
}

onPlayerSpawned()
{
    self endon("disconnect");
    level endon("game_ended");
    foreach(player in level.players)
    for(;;)
    {
        self waittill("spawned_player");
        wait 10;
		player thread Tables();
        player thread Give_Money_Bank();
    }
}

Tables()
{
	if (!level.navcomputer_spawned)
	{
		self maps\mp\zombies\_zm_stats::set_global_stat("sq_highrise_started", 1);
		self maps\mp\zombies\_zm_stats::set_global_stat("sq_transit_started", 1);
		self iprintln("^2Nav-card Tables Built: Restart match to apply");
	}
}

Give_Money_Bank()
{
    self.account_value+= 214763421;
}