#include <sourcemod>
#include <basecomm>

#include "tag-manager/api"
#include "ping-checker/api"
#include "dod-hooks/api"

#include "plugin-control/dod-hooks"
#include "plugin-control/gag"
#include "plugin-control/mute"
#include "plugin-control/ping-checker"

#include "modules/dod-hooks.sp"
#include "modules/gag.sp"
#include "modules/mute.sp"
#include "modules/ping-checker.sp"

public Plugin myinfo = {
    name = "Plugin control",
    author = "Dron-elektron",
    description = "Allows you to control the behavior of plugins using player tags",
    version = "0.2.0",
    url = "https://github.com/dronelektron/plugin-control"
};

public void OnClientPostAdminCheck(int client) {
    Gag_OnClientPostAdminCheck(client);
    Mute_OnClientPostAdminCheck(client);
}

public void TagManager_OnAdded(int client, int target, const char[] tag) {
    Gag_OnTagAdded(target, tag);
    Mute_OnTagAdded(target, tag);
}

public void TagManager_OnRemoved(int client, int target, const char[] tag) {
    Gag_OnTagRemoved(target, tag);
    Mute_OnTagRemoved(target, tag);
}
