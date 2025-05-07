static int g_client;

public Action Player_OnJoinTeam(int client, int& team) {
    g_client = client;

    return Plugin_Continue;
}

public Action GameRules_OnTeamStacked(int newTeam, int currentTeam, bool& stacked) {
    if (TagManager_Check(g_client, TAG_NO_TEAM_BALANCE)) {
        stacked = false;

        return Plugin_Stop;
    }

    return Plugin_Continue;
}

public Action GameRules_OnCanPlayerJoinClass(int client, int class, bool& canJoin) {
    if (TagManager_Check(client, TAG_NO_CLASS_LIMIT)) {
        canJoin = true;

        return Plugin_Stop;
    }

    return Plugin_Continue;
}
