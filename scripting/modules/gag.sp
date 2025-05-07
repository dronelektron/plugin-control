void Gag_OnClientPostAdminCheck(int client) {
    bool gagged = TagManager_Check(client, TAG_GAG);

    BaseComm_SetClientGag(client, gagged);
}

void Gag_OnTagAdded(int client, const char[] tag) {
    if (strcmp(tag, TAG_GAG) == 0) {
        BaseComm_SetClientGag(client, true);
    }
}

void Gag_OnTagRemoved(int client, const char[] tag) {
    if (strcmp(tag, TAG_GAG) == 0) {
        BaseComm_SetClientGag(client, false);
    }
}
