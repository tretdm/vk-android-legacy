.class public Lcom/vkontakte/android/C2DMReceiver;
.super Lcom/google/android/c2dm/C2DMBaseReceiver;
.source "C2DMReceiver.java"


# static fields
.field private static final ID_FRIEND_NOTIFICATION:I = 0x1f5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "vk.c2dm@gmail.com"

    invoke-direct {p0, v0}, Lcom/google/android/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C2DM error! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 37
    .local v10, "extras":Landroid/os/Bundle;
    const-string v2, "vk"

    const-string v3, "!!!onmessage!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 39
    .local v13, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    const-string v2, "vk"

    const-string v3, "==============="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 45
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "secret"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 46
    const-string v2, "sid"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 47
    const-string v2, "uid"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/C2DMReceiver;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 49
    const-string v2, "notifyRingtone"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "notifyRingtone"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    .line 53
    :cond_0
    const-string v2, "notifySound"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    .line 54
    const-string v2, "notifyVibrate"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    .line 55
    const-string v2, "notifyLED"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 57
    const-string v2, "collapse_key"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "ckey":Ljava/lang/String;
    const-string v2, "vkfriend"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "first_name"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "last_name"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 61
    .local v17, "username":Ljava/lang/String;
    const-string v2, "uid"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 62
    .local v6, "uid":I
    new-instance v14, Landroid/app/Notification;

    const v2, 0x7f020189

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/C2DMReceiver;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0901bb

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v3, v8, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v14, v2, v3, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 63
    .local v14, "ntf":Landroid/app/Notification;
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/LinkRedirActivity;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v11, "intent":Landroid/content/Intent;
    const-string v2, "friends"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "friends"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/C2DMReceiver;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/C2DMReceiver;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0901bb

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v3, v8, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const/high16 v18, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v8, v11, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v2, v3, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 67
    iget v2, v14, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 68
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 69
    .local v16, "srv":Landroid/app/NotificationManager;
    const/16 v2, 0x1f5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 72
    .end local v6    # "uid":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "ntf":Landroid/app/Notification;
    .end local v16    # "srv":Landroid/app/NotificationManager;
    .end local v17    # "username":Ljava/lang/String;
    :cond_1
    const-string v2, "vkmsg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-eqz v2, :cond_4

    .line 74
    const-string v2, "vk"

    const-string v3, "LongPoll running, push message discarded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    :goto_1
    return-void

    .line 39
    .end local v9    # "ckey":Ljava/lang/String;
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 40
    .local v12, "k":Ljava/lang/String;
    const-string v3, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " = "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 77
    .end local v12    # "k":Ljava/lang/String;
    .restart local v9    # "ckey":Ljava/lang/String;
    .restart local v15    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    const-string v2, "badge"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 78
    .local v5, "num":I
    const-string v2, "uid"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 79
    .restart local v6    # "uid":I
    const-string v2, "msg_id"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 80
    .local v4, "mid":I
    const-string v2, "text"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "text":Ljava/lang/String;
    new-instance v18, Lcom/vkontakte/android/api/GetMessageInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v4}, Lcom/vkontakte/android/api/GetMessageInfo;-><init>(II)V

    .line 87
    new-instance v2, Lcom/vkontakte/android/C2DMReceiver$1;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/C2DMReceiver$1;-><init>(Lcom/vkontakte/android/C2DMReceiver;IIILjava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/api/GetMessageInfo;->setCallback(Lcom/vkontakte/android/api/GetMessageInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 152
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    new-instance v2, Lcom/vkontakte/android/api/MessagesGetFull;

    invoke-direct {v2, v4}, Lcom/vkontakte/android/api/MessagesGetFull;-><init>(I)V

    .line 154
    new-instance v3, Lcom/vkontakte/android/C2DMReceiver$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/vkontakte/android/C2DMReceiver$2;-><init>(Lcom/vkontakte/android/C2DMReceiver;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/MessagesGetFull;->setCallback(Lcom/vkontakte/android/api/MessagesGetFull$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_1
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "vk"

    const-string v1, "C2DM Registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "c2dm_regID"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    new-instance v0, Lcom/vkontakte/android/api/C2DMRegisterDevice;

    invoke-direct {v0, p2}, Lcom/vkontakte/android/api/C2DMRegisterDevice;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->exec()Lcom/vkontakte/android/APIRequest;

    .line 192
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 196
    const-string v1, "vk"

    const-string v2, "C2DM Unregistered!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "c2dm_regID"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "oldToken":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Lcom/vkontakte/android/api/C2DMUnregisterDevice;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
