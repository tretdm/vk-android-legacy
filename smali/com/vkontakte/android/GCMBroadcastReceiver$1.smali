.class Lcom/vkontakte/android/GCMBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "GCMBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GCMBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GCMBroadcastReceiver;

.field private final synthetic val$_intent:Landroid/content/Intent;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->this$0:Lcom/vkontakte/android/GCMBroadcastReceiver;

    iput-object p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v14

    .line 39
    .local v14, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    invoke-virtual {v14, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v19

    .line 41
    .local v19, "messageType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 42
    .local v13, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 43
    .local v25, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "secret"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 44
    const-string v3, "sid"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 45
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/vkontakte/android/Global;->uid:I

    .line 46
    const-string v17, ""

    .line 47
    .local v17, "l":Ljava/lang/String;
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    const v4, 0x1a10c7

    if-ne v3, v4, :cond_0

    .line 48
    const-string v3, "vk"

    const-string v4, "!!!onmessage!!!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 50
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    const-string v3, "vk"

    const-string v4, "==============="

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v3, "push_counter"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 59
    .local v24, "pcount":I
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "push_counter"

    add-int/lit8 v5, v24, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 63
    const-string v3, "enableC2DM"

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    const-string v3, "vk"

    const-string v4, "push disabled but still received, WTF?!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    .line 256
    :cond_1
    :goto_1
    return-void

    .line 50
    .end local v24    # "pcount":I
    .restart local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 51
    .local v15, "k":Ljava/lang/String;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 69
    .end local v15    # "k":Ljava/lang/String;
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "pcount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->this$0:Lcom/vkontakte/android/GCMBroadcastReceiver;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/GCMBroadcastReceiver;->setResultCode(I)V

    .line 71
    const-string v11, ""

    .line 72
    .local v11, "ckey":Ljava/lang/String;
    const-string v3, "collapse_key"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 73
    const-string v3, "friend"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "first_name"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "last_name"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 75
    .local v29, "username":Ljava/lang/String;
    const-string v3, "badge"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 76
    .local v12, "cnt":I
    const-string v3, "uid"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 78
    .local v27, "uid":I
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vkontakte://profile/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    .local v6, "intent":Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_5

    .line 80
    new-instance v22, Landroid/app/Notification;

    const v3, 0x7f0201b3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v30, 0x7f060152

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, v22

    move-wide/from16 v1, v30

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 81
    .local v22, "ntf":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060152

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/16 v30, 0x0

    const/high16 v31, 0x8000000

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v5, v0, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 82
    move-object/from16 v0, v22

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v22

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/NotificationManager;

    .line 84
    .local v26, "srv":Landroid/app/NotificationManager;
    const/16 v3, 0x1f5

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 119
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v12    # "cnt":I
    .end local v22    # "ntf":Landroid/app/Notification;
    .end local v26    # "srv":Landroid/app/NotificationManager;
    .end local v27    # "uid":I
    .end local v29    # "username":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v3, "msg"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 120
    sget-boolean v3, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-eqz v3, :cond_6

    .line 121
    const-string v3, "vk"

    const-string v4, "LongPoll running, push message discarded"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v12    # "cnt":I
    .restart local v27    # "uid":I
    .restart local v29    # "username":Ljava/lang/String;
    :cond_5
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v28, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v6, v12}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Context;Landroid/content/Intent;I)V

    move-object/from16 v0, v28

    invoke-static {v0, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto :goto_2

    .line 124
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v12    # "cnt":I
    .end local v27    # "uid":I
    .end local v28    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "username":Ljava/lang/String;
    :cond_6
    const-string v3, "badge"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 125
    .local v23, "num":I
    const-string v3, "msg_id"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 127
    .local v20, "mid":I
    sput v23, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 129
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V

    .line 130
    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/cache/Cache;->getMessageByID(I)Lcom/vkontakte/android/Message;

    move-result-object v21

    .line 131
    .local v21, "msg":Lcom/vkontakte/android/Message;
    if-nez v21, :cond_7

    .line 132
    const-string v3, "vk"

    const-string v4, "WTF?!?!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 135
    :cond_7
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v3, :cond_1

    .line 138
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v10, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v3, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1, v4}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Lcom/vkontakte/android/Message;Landroid/content/Context;)V

    invoke-static {v10, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 180
    .end local v10    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "mid":I
    .end local v21    # "msg":Lcom/vkontakte/android/Message;
    .end local v23    # "num":I
    :cond_8
    const-string v3, "reply"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "comment"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vkontakte://vk.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "place"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 183
    .local v18, "link":Ljava/lang/String;
    const-string v3, "text"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->unwrapMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "text":Ljava/lang/String;
    const-string v3, "from_id"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 185
    .restart local v27    # "uid":I
    const-string v3, "reply"

    const-string v4, "type"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 186
    .local v8, "isReply":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .restart local v10    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    .restart local v6    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const-string v3, "vk"

    const-string v4, "Here!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "place"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "place":Ljava/lang/String;
    new-instance v3, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v10, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_1
.end method
