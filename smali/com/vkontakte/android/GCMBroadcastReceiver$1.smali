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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 42

    .prologue
    .line 45
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v26

    .line 46
    .local v26, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v31

    .line 48
    .local v31, "messageType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    .line 49
    .local v25, "extras":Landroid/os/Bundle;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 50
    .local v37, "sprefs":Landroid/content/SharedPreferences;
    const-string v2, "secret"

    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 51
    const-string v2, "sid"

    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 52
    const-string v2, "uid"

    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 53
    const-string v29, ""

    .line 54
    .local v29, "l":Ljava/lang/String;
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    const v3, 0x1a10c7

    if-eq v2, v3, :cond_0

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    const v3, 0x1887270

    if-eq v2, v3, :cond_0

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    const v3, 0xaa250e4

    if-ne v2, v3, :cond_1

    .line 55
    :cond_0
    const-string v2, "vk"

    const-string v3, "!!!onmessage!!!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {v25 .. v25}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v28

    .line 57
    .local v28, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 61
    const-string v2, "vk"

    const-string v3, "==============="

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v28    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v2, "push_counter"

    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 66
    .local v36, "pcount":I
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "push_counter"

    add-int/lit8 v4, v36, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 76
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v23, ""

    .line 77
    .local v23, "ckey":Ljava/lang/String;
    const-string v2, "collapse_key"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 79
    const-string v2, "update_stickers"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->updateInfo()V

    .line 411
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    .end local v23    # "ckey":Ljava/lang/String;
    .end local v25    # "extras":Landroid/os/Bundle;
    .end local v26    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v29    # "l":Ljava/lang/String;
    .end local v31    # "messageType":Ljava/lang/String;
    .end local v36    # "pcount":I
    .end local v37    # "sprefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_1
    return-void

    .line 57
    .restart local v25    # "extras":Landroid/os/Bundle;
    .restart local v26    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v28    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v29    # "l":Ljava/lang/String;
    .restart local v31    # "messageType":Ljava/lang/String;
    .restart local v37    # "sprefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 58
    .local v27, "k":Ljava/lang/String;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 84
    .end local v27    # "k":Ljava/lang/String;
    .end local v28    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "prefs":Landroid/content/SharedPreferences;
    .restart local v23    # "ckey":Ljava/lang/String;
    .restart local v36    # "pcount":I
    :cond_4
    const-string v2, "notifications"

    const/4 v3, 0x1

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 85
    const-string v2, "vk"

    const-string v3, "all notifications disabled"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 410
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    .end local v23    # "ckey":Ljava/lang/String;
    .end local v25    # "extras":Landroid/os/Bundle;
    .end local v26    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v29    # "l":Ljava/lang/String;
    .end local v31    # "messageType":Ljava/lang/String;
    .end local v36    # "pcount":I
    .end local v37    # "sprefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v41

    .local v41, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error processing GCM message"

    move-object/from16 v0, v41

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 88
    .end local v41    # "x":Ljava/lang/Exception;
    .restart local v7    # "prefs":Landroid/content/SharedPreferences;
    .restart local v23    # "ckey":Ljava/lang/String;
    .restart local v25    # "extras":Landroid/os/Bundle;
    .restart local v26    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v29    # "l":Ljava/lang/String;
    .restart local v31    # "messageType":Ljava/lang/String;
    .restart local v36    # "pcount":I
    .restart local v37    # "sprefs":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_1
    const-string v2, "dnd_end"

    const-wide/16 v3, 0x0

    invoke-interface {v7, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-lez v2, :cond_6

    .line 89
    const-string v2, "vk"

    const-string v3, "global dnd is active"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_6
    const-string v2, "friend"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 94
    const-string v2, "notifyTypes"

    const/4 v3, 0x0

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 95
    .local v24, "enabled":Ljava/lang/String;
    if-eqz v24, :cond_7

    const-string v2, ";"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "friends"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 96
    const-string v2, "vk"

    const-string v3, "friend notifications disabled"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "first_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "last_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 100
    .local v40, "username":Ljava/lang/String;
    const-string v2, "badge"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "cnt":I
    const-string v2, "uid"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 103
    .local v10, "uid":I
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vkontakte://profile/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v5, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_9

    .line 105
    new-instance v34, Landroid/app/Notification;

    const v2, 0x7f0201d9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f08016b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v34

    invoke-direct {v0, v2, v3, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 106
    .local v34, "ntf":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08016b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v4, v8, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 107
    move-object/from16 v0, v34

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, v34

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/NotificationManager;

    .line 109
    .local v38, "srv":Landroid/app/NotificationManager;
    const/16 v2, 0x1f5

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "cnt":I
    .end local v10    # "uid":I
    .end local v24    # "enabled":Ljava/lang/String;
    .end local v34    # "ntf":Landroid/app/Notification;
    .end local v38    # "srv":Landroid/app/NotificationManager;
    .end local v40    # "username":Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v2, "msg"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 156
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-eqz v2, :cond_a

    .line 157
    const-string v2, "vk"

    const-string v3, "LongPoll running, push message discarded"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "cnt":I
    .restart local v10    # "uid":I
    .restart local v24    # "enabled":Ljava/lang/String;
    .restart local v40    # "username":Ljava/lang/String;
    :cond_9
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v39, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v2, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Context;Landroid/content/Intent;ILandroid/content/SharedPreferences;)V

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto :goto_2

    .line 160
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "cnt":I
    .end local v10    # "uid":I
    .end local v24    # "enabled":Ljava/lang/String;
    .end local v39    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v40    # "username":Ljava/lang/String;
    :cond_a
    const-string v2, "notifyTypes"

    const/4 v3, 0x0

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 161
    .restart local v24    # "enabled":Ljava/lang/String;
    if-eqz v24, :cond_b

    const-string v2, ";"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "messages"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 162
    const-string v2, "vk"

    const-string v3, "message notifications disabled"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_b
    const-string v2, "badge"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 166
    .local v35, "num":I
    const-string v2, "msg_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 168
    .local v32, "mid":I
    sput v35, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 170
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V

    .line 171
    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/data/Messages;->getById(I)Lcom/vkontakte/android/Message;

    move-result-object v33

    .line 172
    .local v33, "msg":Lcom/vkontakte/android/Message;
    if-nez v33, :cond_c

    .line 173
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :\'("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    :cond_c
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/Message;->peer:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-object v2, v0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 177
    :cond_d
    move-object/from16 v0, v33

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v2, :cond_2

    .line 180
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v22, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v2, v0, v1, v3}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Lcom/vkontakte/android/Message;Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 217
    .end local v22    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "enabled":Ljava/lang/String;
    .end local v32    # "mid":I
    .end local v33    # "msg":Lcom/vkontakte/android/Message;
    .end local v35    # "num":I
    :cond_e
    const-string v2, "friend_found"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 218
    const-string v2, "notifyTypes"

    const/4 v3, 0x0

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 219
    .restart local v24    # "enabled":Ljava/lang/String;
    if-eqz v24, :cond_f

    const-string v2, ";"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "friends"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 220
    const-string v2, "vk"

    const-string v3, "friend notifications disabled"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    :cond_f
    const-string v2, "uid"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 235
    .restart local v10    # "uid":I
    const-string v2, "service"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 236
    .local v11, "service":Ljava/lang/String;
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .restart local v39    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v8, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v9, p0

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;ILjava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v39

    invoke-static {v0, v8}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 305
    .end local v10    # "uid":I
    .end local v11    # "service":Ljava/lang/String;
    .end local v24    # "enabled":Ljava/lang/String;
    .end local v39    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    const-string v2, "reply"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "comment"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "mention"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    :cond_11
    const-string v2, "notifyTypes"

    const/4 v3, 0x0

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 308
    .restart local v24    # "enabled":Ljava/lang/String;
    if-eqz v24, :cond_13

    const-string v2, ";"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v2, "mention"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "mentions"

    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 309
    const-string v2, "vk"

    const-string v3, "reply/mention notifications disabled"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 308
    :cond_12
    const-string v2, "replies"

    goto :goto_3

    .line 314
    :cond_13
    const-string v30, "vkontakte://vk.com/feed?section=notifications"

    .line 315
    .local v30, "link":Ljava/lang/String;
    const-string v2, "text"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->unwrapMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<br>"

    const-string v4, " / "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 316
    .local v20, "text":Ljava/lang/String;
    const-string v2, "from_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 317
    .restart local v10    # "uid":I
    const-string v2, "reply"

    const-string v3, "type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 318
    .local v17, "isReply":Z
    const-string v2, "mention"

    const-string v3, "type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 319
    .local v18, "isMention":Z
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .restart local v22    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "vkontakte://vk.com/feed?section=notifications"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    const-string v2, "place"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 324
    .local v16, "place":Ljava/lang/String;
    const-string v2, "reply_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "reply_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 325
    .local v19, "replyID":I
    :goto_4
    new-instance v12, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v13, p0

    move-object v15, v5

    move-object/from16 v21, v7

    invoke-direct/range {v12 .. v21}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 324
    .end local v19    # "replyID":I
    :cond_14
    const/16 v19, 0x0

    goto :goto_4
.end method
