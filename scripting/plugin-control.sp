#include <sourcemod>

#include "tag-manager/api"
#include "ping-checker/api"

public Plugin myinfo = {
    name = "Plugin control",
    author = "Dron-elektron",
    description = "Allows you to control the behavior of plugins",
    version = "0.1.0",
    url = "https://github.com/dronelektron/plugin-control"
};

public Action PingChecker_OnClient(int client) {
    bool ignore = TagManager_IsClientHasTag(client, "no-ping-check");

    return ignore ? Plugin_Stop : Plugin_Continue;
}
