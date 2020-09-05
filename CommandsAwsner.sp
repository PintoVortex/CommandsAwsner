// []
// Pinto#0001 on discord for help and more
// https://github.com/PintoVortex?tab=repositories
// PINTO @VortexServices
// https://github.com/PintoVortex?tab=repositories
// Pinto#0001 on discord for help and more
// []

#include <sourcemod>
#include <sdktools> 
#include <cstrike>
#include <multicolors>
#pragma newdecls required 

 
public Plugin myinfo =
{
    name = "PrintChatCommands",
    author = "Pinto",
    description = "Aswner to commands.",
    version = "1.0.0",
    url = "" // Donate if you can - paypal [] cmpinto@sapo.pt
};
 
 
public void OnPluginStart()
{
    RegConsoleCmd("sm_group", Cmd_Group);
    RegConsoleCmd("sm_discord", Cmd_Discord);
    RegConsoleCmd("sm_founder", Cmd_Founder);
    LoadTranslations("pinto_commands.phrases");
}
 
public Action Cmd_Group(int client, int args)
{
    CPrintToChat(client, "%t", "Group");
}   
public Action Cmd_Discord(int client, int args)
{
	PrintToChat(client, " ");
    PrintToChat(client, "%t", "Discord");
    PrintToChat(client, " ");
}
public Action Cmd_Founder(int client, int args)
{
    PrintToChat(client, " ");
    PrintToChat(client, "%t", "Founder");
    PrintToChat(client, " ");
} 

