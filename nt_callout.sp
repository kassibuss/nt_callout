#include <sourcemod>
#include <sdktools>

#include <neotokyo>

#pragma semicolon 1
#pragma newdecls required


public Plugin myinfo = {
    name        = "NT Callouts",
    author      = "kinoko",
    description = "Adds a panel to the players screen which shows the callout of the current location of the player",
    version     = PLUGIN_VERSION,
    url         = "https://github.com/kassibuss/nt_callout"
}

public void OnPluginStart()
{
  new Float:vec[3]
	g_hCvar_TogglePanel=CreateConvar("sm_togglepanel", Cmd_TogglePanel)
	}
		for (int client = 1; client <= MaxClients; ++client)
	{
		if (!IsClientInGame(client) || IsFakeClient(client))
		{
			continue;
		}


	AutoExecConfig();

  cookiesEnabled = (GetExtensionFileStatus("clientprefs.ext") == 1);
	
	if (cookiesEnabled) {
	//TO DO
	} 

  public OnClientCookiesCached(client)
{
	if (IsClientInGame(client)) {
		ClientIngameAndCookiesCached(client);
	}
}

public OnClientPutInServer(client)
{
	if (cookiesEnabled && AreClientCookiesCached(client)) {
		ClientIngameAndCookiesCached(client);
	}
}

public OnClientConnected(client)
{
	enabledForClient[client] = true;
}

	public void OnPlayerSpawn
{
	
    Panel panel = new Panel();
    panel.DrawItem("foo");
    panel.Send((int client = 1; client <= MaxClients; client++), Handler, MENU_TIME_FOREVER /* need to change the MENU_TIME possibly? */);

    delete panel; 
}

public int Handler(Menu menu, MenuAction action, int param1, int param2)
{
    return 0;
}

/* Getting the players location*/
GetClientAbsOrigin(client, Float:vec)

/* Checking the players location so we can update the callout in the panel*/
/* Need to replace this code with proper one*/
float pos[3];
pos[0]; 
pos[1]; 
pos[2];

  if GetClientAbsOrigin(client, Float:vec) > Float:MaxS
    {
        continue;
    }
    if Float:MinS > GetClientAbsOrigin(client, Float:vec)
    {    
        continue;
    }
        {
    PrintToPanel(%s);
        }





