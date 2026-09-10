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

.field final synthetic val$_intent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->this$0:Lcom/vkontakte/android/GCMBroadcastReceiver;

    iput-object p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 50

    .prologue
    .line 47
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v20

    .line 48
    .local v20, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v29

    .line 50
    .local v29, "messageType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$_intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    .line 51
    .local v19, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v39

    .line 52
    .local v39, "sprefs":Landroid/content/SharedPreferences;
    const-string v3, "secret"

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 53
    const-string v3, "sid"

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 54
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/vkontakte/android/Global;->uid:I

    .line 55
    const-string v27, ""

    .line 56
    .local v27, "l":Ljava/lang/String;
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    const v4, 0x1a10c7

    if-eq v3, v4, :cond_0

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    const v4, 0x1887270

    if-eq v3, v4, :cond_0

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    const v4, 0xaa250e4

    if-ne v3, v4, :cond_2

    .line 57
    :cond_0
    const-string v3, "vk"

    const-string v4, "!!!onmessage!!!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v26

    .line 59
    .local v26, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 60
    .local v25, "k":Ljava/lang/String;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v47, " = "

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 63
    .end local v25    # "k":Ljava/lang/String;
    :cond_1
    const-string v3, "vk"

    const-string v4, "==============="

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v26    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "push_counter"

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v35

    .line 68
    .local v35, "pcount":I
    invoke-interface/range {v39 .. v39}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "push_counter"

    add-int/lit8 v47, v35, 0x1

    move/from16 v0, v47

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 78
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v15, ""

    .line 79
    .local v15, "ckey":Ljava/lang/String;
    const-string v3, "collapse_key"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 81
    const-string v3, "update_stickers"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->updateInfo()V

    .line 494
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "ckey":Ljava/lang/String;
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v20    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v27    # "l":Ljava/lang/String;
    .end local v29    # "messageType":Ljava/lang/String;
    .end local v35    # "pcount":I
    .end local v39    # "sprefs":Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    return-void

    .line 86
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    .restart local v15    # "ckey":Ljava/lang/String;
    .restart local v19    # "extras":Landroid/os/Bundle;
    .restart local v20    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v27    # "l":Ljava/lang/String;
    .restart local v29    # "messageType":Ljava/lang/String;
    .restart local v35    # "pcount":I
    .restart local v39    # "sprefs":Landroid/content/SharedPreferences;
    :cond_4
    const-string v3, "sdk_open"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    const-string v3, "app_icon"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 88
    .local v23, "iconUrl":Ljava/lang/String;
    const-string v3, "platform_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 89
    .local v37, "pkg":Ljava/lang/String;
    const-string v3, "app_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 90
    .local v24, "id":Ljava/lang/String;
    const-string v3, "app_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "appName":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 92
    .local v22, "icon":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vkontakte://app/?pkg="

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v47, "&id="

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v5, "intent":Landroid/content/Intent;
    const-string v3, "com.vkontakte.android"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v47, 0x10000000

    move/from16 v0, v47

    invoke-static {v3, v4, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 95
    .local v17, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020157

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v47, 0x7f0d010c

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v47, 0x7f0d010d

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v13, v48, v49

    move/from16 v0, v47

    move-object/from16 v1, v48

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v33

    .line 103
    .local v33, "ntf":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/NotificationManager;

    .line 104
    .local v30, "mgr":Landroid/app/NotificationManager;
    move-object/from16 v0, v33

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v33

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 105
    move-object/from16 v0, v33

    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v33

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 106
    const/16 v3, 0x1f9

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 493
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v13    # "appName":Ljava/lang/String;
    .end local v15    # "ckey":Ljava/lang/String;
    .end local v17    # "contentIntent":Landroid/app/PendingIntent;
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v20    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v22    # "icon":Landroid/graphics/Bitmap;
    .end local v23    # "iconUrl":Ljava/lang/String;
    .end local v24    # "id":Ljava/lang/String;
    .end local v27    # "l":Ljava/lang/String;
    .end local v29    # "messageType":Ljava/lang/String;
    .end local v30    # "mgr":Landroid/app/NotificationManager;
    .end local v33    # "ntf":Landroid/app/Notification;
    .end local v35    # "pcount":I
    .end local v37    # "pkg":Ljava/lang/String;
    .end local v39    # "sprefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v46

    .local v46, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error processing GCM message"

    move-object/from16 v0, v46

    invoke-static {v3, v4, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 110
    .end local v46    # "x":Ljava/lang/Exception;
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    .restart local v15    # "ckey":Ljava/lang/String;
    .restart local v19    # "extras":Landroid/os/Bundle;
    .restart local v20    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v27    # "l":Ljava/lang/String;
    .restart local v29    # "messageType":Ljava/lang/String;
    .restart local v35    # "pcount":I
    .restart local v39    # "sprefs":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_1
    const-string v3, "notifications"

    const/4 v4, 0x1

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 111
    const-string v3, "vk"

    const-string v4, "all notifications disabled"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 114
    :cond_6
    const-string v3, "dnd_end"

    const-wide/16 v47, 0x0

    move-wide/from16 v0, v47

    invoke-interface {v11, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v47

    cmp-long v3, v3, v47

    if-lez v3, :cond_7

    .line 115
    const-string v3, "vk"

    const-string v4, "global dnd is active"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    :cond_7
    const-string v3, "request"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "invite"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 120
    :cond_8
    const-string v3, "notifyTypes"

    const/4 v4, 0x0

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 121
    .local v18, "enabled":Ljava/lang/String;
    if-eqz v18, :cond_9

    const-string v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "games"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 122
    const-string v3, "vk"

    const-string v4, "games notifications disabled"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :cond_9
    const-string v3, "from_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 126
    .local v41, "uid":I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v45

    .line 127
    .local v45, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/vkontakte/android/UserProfile;

    .line 129
    .local v43, "user":Lcom/vkontakte/android/UserProfile;
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v5, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v3, "fdsafdsafdsafdasfdsafasfdfdsaf"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v3, "vkontakte://vk.com/apps?from_notification=1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    const/high16 v3, 0x10000000

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const-string v3, "request"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v43

    iget-boolean v3, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v3, :cond_d

    const v3, 0x7f0d011a

    :goto_2
    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-string v49, "app_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v47

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, "text":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 145
    .local v36, "photo":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/16 v47, 0x0

    const/high16 v48, 0x10000000

    move/from16 v0, v47

    move/from16 v1, v48

    invoke-static {v4, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v47, " "

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    if-eqz v36, :cond_f

    .end local v36    # "photo":Landroid/graphics/Bitmap;
    :goto_4
    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v47, 0x42800000    # 64.0f

    invoke-static/range {v47 .. v47}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v47

    const/16 v48, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020154

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 153
    .local v14, "bldr":Landroid/app/Notification$Builder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_10

    .line 154
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v14}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v33

    .line 162
    .restart local v33    # "ntf":Landroid/app/Notification;
    :goto_5
    move-object/from16 v0, v33

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v33

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 163
    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 164
    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 166
    :cond_a
    const-string v3, "notifyVibrate"

    const/4 v4, 0x1

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, v33

    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v33

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 167
    :cond_b
    const-string v3, "notifyLED"

    const/4 v4, 0x1

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 168
    move-object/from16 v0, v33

    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, v33

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 169
    move-object/from16 v0, v33

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v33

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 171
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/NotificationManager;

    .line 173
    .local v40, "srv":Landroid/app/NotificationManager;
    const/16 v3, 0x1f8

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 175
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v47, "com.vkontakte.android.games.RELOAD_REQUESTS"

    move-object/from16 v0, v47

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v47, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, v47

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 138
    .end local v10    # "text":Ljava/lang/String;
    .end local v14    # "bldr":Landroid/app/Notification$Builder;
    .end local v33    # "ntf":Landroid/app/Notification;
    .end local v40    # "srv":Landroid/app/NotificationManager;
    :cond_d
    const v3, 0x7f0d011b

    goto/16 :goto_2

    .line 140
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0119

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-string v49, "app_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v47

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/String;
    goto/16 :goto_3

    .line 145
    .restart local v36    # "photo":Landroid/graphics/Bitmap;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v47, 0x7f0201ec

    move/from16 v0, v47

    invoke-static {v4, v0}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v36

    goto/16 :goto_4

    .line 160
    .end local v36    # "photo":Landroid/graphics/Bitmap;
    .restart local v14    # "bldr":Landroid/app/Notification$Builder;
    :cond_10
    invoke-virtual {v14}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v33

    .restart local v33    # "ntf":Landroid/app/Notification;
    goto/16 :goto_5

    .line 181
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v14    # "bldr":Landroid/app/Notification$Builder;
    .end local v18    # "enabled":Ljava/lang/String;
    .end local v33    # "ntf":Landroid/app/Notification;
    .end local v41    # "uid":I
    .end local v43    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v45    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_11
    const-string v3, "friend"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 182
    const-string v3, "notifyTypes"

    const/4 v4, 0x0

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 183
    .restart local v18    # "enabled":Ljava/lang/String;
    if-eqz v18, :cond_12

    const-string v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "friends"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 184
    const-string v3, "vk"

    const-string v4, "friend notifications disabled"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 187
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "last_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 188
    .local v44, "username":Ljava/lang/String;
    const-string v3, "badge"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 189
    .local v16, "cnt":I
    const-string v3, "uid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 191
    .restart local v41    # "uid":I
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vkontakte://profile/"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .restart local v5    # "intent":Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_14

    .line 193
    new-instance v33, Landroid/app/Notification;

    const v3, 0x7f020159

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v47, " "

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7f0d0011

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v47

    move-object/from16 v0, v33

    move-wide/from16 v1, v47

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 194
    .restart local v33    # "ntf":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v47, 0x7f0d0011

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const/high16 v49, 0x8000000

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v47

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    move-object/from16 v2, v47

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 195
    move-object/from16 v0, v33

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v33

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/NotificationManager;

    .line 197
    .restart local v40    # "srv":Landroid/app/NotificationManager;
    const/16 v3, 0x1f5

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 243
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v16    # "cnt":I
    .end local v18    # "enabled":Ljava/lang/String;
    .end local v33    # "ntf":Landroid/app/Notification;
    .end local v40    # "srv":Landroid/app/NotificationManager;
    .end local v41    # "uid":I
    .end local v44    # "username":Ljava/lang/String;
    :cond_13
    :goto_6
    const-string v3, "msg"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 244
    sget-boolean v3, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-eqz v3, :cond_15

    .line 245
    const-string v3, "vk"

    const-string v4, "LongPoll running, push message discarded"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v16    # "cnt":I
    .restart local v18    # "enabled":Ljava/lang/String;
    .restart local v41    # "uid":I
    .restart local v44    # "username":Ljava/lang/String;
    :cond_14
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v42, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v3, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v3, v0, v5, v1, v11}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Intent;ILandroid/content/SharedPreferences;)V

    move-object/from16 v0, v42

    invoke-static {v0, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto :goto_6

    .line 248
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v16    # "cnt":I
    .end local v18    # "enabled":Ljava/lang/String;
    .end local v41    # "uid":I
    .end local v42    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v44    # "username":Ljava/lang/String;
    :cond_15
    const-string v3, "notifyTypes"

    const/4 v4, 0x0

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 249
    .restart local v18    # "enabled":Ljava/lang/String;
    if-eqz v18, :cond_16

    const-string v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "messages"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 250
    const-string v3, "vk"

    const-string v4, "message notifications disabled"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :cond_16
    const-string v3, "badge"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 254
    .local v34, "num":I
    const-string v3, "msg_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 256
    .local v31, "mid":I
    sput v34, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 258
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V

    .line 259
    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/data/Messages;->getById(I)Lcom/vkontakte/android/Message;

    move-result-object v32

    .line 260
    .local v32, "msg":Lcom/vkontakte/android/Message;
    if-nez v32, :cond_17

    .line 261
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Error getting message "

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v47, " :\'("

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 264
    :cond_17
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->peer:I

    const v4, 0x77359400

    if-ge v3, v4, :cond_18

    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-object v3, v0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 265
    :cond_18
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v3, :cond_3

    .line 268
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v12, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v3, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Lcom/vkontakte/android/Message;)V

    invoke-static {v12, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 305
    .end local v12    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "enabled":Ljava/lang/String;
    .end local v31    # "mid":I
    .end local v32    # "msg":Lcom/vkontakte/android/Message;
    .end local v34    # "num":I
    :cond_19
    const-string v3, "friend_found"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 306
    const-string v3, "notifyTypes"

    const/4 v4, 0x0

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 307
    .restart local v18    # "enabled":Ljava/lang/String;
    if-eqz v18, :cond_1a

    const-string v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "friends"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 308
    const-string v3, "vk"

    const-string v4, "friend notifications disabled"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 322
    :cond_1a
    const-string v3, "uid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 323
    .restart local v41    # "uid":I
    const-string v3, "service"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 324
    .local v38, "service":Ljava/lang/String;
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .restart local v42    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v3, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v38

    invoke-direct {v3, v0, v1, v2, v11}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;ILjava/lang/String;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v42

    invoke-static {v0, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 393
    .end local v18    # "enabled":Ljava/lang/String;
    .end local v38    # "service":Ljava/lang/String;
    .end local v41    # "uid":I
    .end local v42    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1b
    const-string v3, "reply"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "comment"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "mention"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    :cond_1c
    const-string v3, "notifyTypes"

    const/4 v4, 0x0

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 396
    .restart local v18    # "enabled":Ljava/lang/String;
    if-eqz v18, :cond_1e

    const-string v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v3, "mention"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "mentions"

    :goto_7
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 397
    const-string v3, "vk"

    const-string v4, "reply/mention notifications disabled"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    :cond_1d
    const-string v3, "replies"

    goto :goto_7

    .line 402
    :cond_1e
    const-string v28, "vkontakte://vk.com/feed?section=notifications"

    .line 403
    .local v28, "link":Ljava/lang/String;
    const-string v3, "text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->unwrapMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<br>"

    const-string v47, " / "

    move-object/from16 v0, v47

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 404
    .restart local v10    # "text":Ljava/lang/String;
    const-string v3, "from_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 405
    .restart local v41    # "uid":I
    const-string v3, "reply"

    const-string v4, "type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 406
    .local v7, "isReply":Z
    const-string v3, "mention"

    const-string v4, "type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 407
    .local v8, "isMention":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .restart local v12    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "vkontakte://vk.com/feed?section=notifications"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    const-string v3, "place"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "place":Ljava/lang/String;
    const-string v3, "reply_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "reply_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 413
    .local v9, "replyID":I
    :goto_8
    new-instance v3, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Landroid/content/SharedPreferences;)V

    invoke-static {v12, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 412
    .end local v9    # "replyID":I
    :cond_1f
    const/4 v9, 0x0

    goto :goto_8
.end method
