public Action PingChecker_OnClient(int client) {
    bool ignore = TagManager_Check(client, TAG_NO_PING_CHECK);

    return ignore ? Plugin_Stop : Plugin_Continue;
}
