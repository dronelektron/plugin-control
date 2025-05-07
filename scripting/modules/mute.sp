void Mute_OnClientPostAdminCheck(int client) {
    bool muted = TagManager_Check(client, TAG_MUTE);

    BaseComm_SetClientMute(client, muted);
}

void Mute_OnTagAdded(int client, const char[] tag) {
    if (strcmp(tag, TAG_MUTE) == 0) {
        BaseComm_SetClientMute(client, true);
    }
}

void Mute_OnTagRemoved(int client, const char[] tag) {
    if (strcmp(tag, TAG_MUTE) == 0) {
        BaseComm_SetClientMute(client, false);
    }
}
