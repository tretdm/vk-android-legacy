.class Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;
.super Ljava/lang/Object;
.source "GCMBroadcastReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GCMBroadcastReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$prefs:Landroid/content/SharedPreferences;

.field private final synthetic val$service:Ljava/lang/String;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;ILjava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iput p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$uid:I

    iput-object p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$prefs:Landroid/content/SharedPreferences;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_0

    .line 301
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "vkontakte://profile/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    .local v1, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    .line 244
    .local v10, "user":Lcom/vkontakte/android/UserProfile;
    const/4 v7, 0x0

    .line 245
    .local v7, "serviceStr":I
    const-string v11, "email"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 246
    const v7, 0x7f0802a9

    .line 260
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    iget-boolean v11, v10, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_8

    const v11, 0x7f0802a8

    :goto_2
    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v15, v10, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v15, v14, v12

    const/4 v15, 0x1

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_3
    aput-object v12, v14, v15

    invoke-virtual {v13, v11, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "text":Ljava/lang/String;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-ge v11, v12, :cond_b

    .line 263
    new-instance v3, Landroid/app/Notification;

    const v11, 0x7f0201d9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v3, v11, v9, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 264
    .local v3, "ntf":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    iget-boolean v11, v10, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_a

    const v11, 0x7f0802a6

    :goto_4
    invoke-virtual {v13, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    invoke-static {v13, v14, v1, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v3, v12, v11, v9, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 265
    iget v11, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v3, Landroid/app/Notification;->flags:I

    .line 266
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 267
    .local v8, "srv":Landroid/app/NotificationManager;
    const/16 v11, 0x1f7

    invoke-virtual {v8, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 247
    .end local v3    # "ntf":Landroid/app/Notification;
    .end local v8    # "srv":Landroid/app/NotificationManager;
    .end local v9    # "text":Ljava/lang/String;
    :cond_2
    const-string v11, "phone"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 248
    const v7, 0x7f0802aa

    .line 249
    goto :goto_1

    :cond_3
    const-string v11, "twitter"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 250
    const v7, 0x7f0802ab

    .line 251
    goto/16 :goto_1

    :cond_4
    const-string v11, "facebook"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 252
    const v7, 0x7f0802ac

    .line 253
    goto/16 :goto_1

    :cond_5
    const-string v11, "odnoklassniki"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 254
    const v7, 0x7f0802ad

    .line 255
    goto/16 :goto_1

    :cond_6
    const-string v11, "instagram"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 256
    const v7, 0x7f0802ae

    .line 257
    goto/16 :goto_1

    :cond_7
    const-string v11, "google"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 258
    const v7, 0x7f0802af

    goto/16 :goto_1

    .line 260
    :cond_8
    const v11, 0x7f0802a7

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$service:Ljava/lang/String;

    goto/16 :goto_3

    .line 264
    .restart local v3    # "ntf":Landroid/app/Notification;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_a
    const v11, 0x7f0802a5

    goto/16 :goto_4

    .line 269
    .end local v3    # "ntf":Landroid/app/Notification;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v11, v12, v1, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 270
    .local v5, "pIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.vkontakte.android.ACCEPT_FRIEND"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v2, "intentAccept":Landroid/content/Intent;
    const-string v11, "uid"

    iget v12, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v11, "notifyId"

    const/16 v12, 0x1f7

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    const/4 v12, 0x1

    const/high16 v13, 0x50000000

    invoke-static {v11, v12, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 274
    .local v6, "pIntentAccept":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-direct {v12, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    iget-boolean v11, v10, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_f

    const v11, 0x7f0802a6

    :goto_5
    invoke-virtual {v13, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 276
    invoke-virtual {v11, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 277
    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 278
    iget-object v12, v10, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v12}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/high16 v13, 0x42800000    # 64.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    const/high16 v14, 0x42800000    # 64.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 279
    const v12, 0x7f0201d9

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 280
    invoke-virtual {v11, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 282
    .local v4, "ntfb":Landroid/app/Notification$Builder;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_10

    .line 283
    const v11, 0x7f0200ee

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080092

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 284
    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v11, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 288
    .restart local v3    # "ntf":Landroid/app/Notification;
    :goto_6
    iget v11, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v3, Landroid/app/Notification;->flags:I

    .line 289
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$prefs:Landroid/content/SharedPreferences;

    const-string v12, "notifyRingtone"

    sget-object v13, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_c

    .line 290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$prefs:Landroid/content/SharedPreferences;

    const-string v12, "notifyRingtone"

    sget-object v13, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 292
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$prefs:Landroid/content/SharedPreferences;

    const-string v12, "notifyVibrate"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d

    iget v11, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v3, Landroid/app/Notification;->defaults:I

    .line 293
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$prefs:Landroid/content/SharedPreferences;

    const-string v12, "notifyLED"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 294
    iget v11, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v3, Landroid/app/Notification;->defaults:I

    .line 295
    iget v11, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x1

    iput v11, v3, Landroid/app/Notification;->flags:I

    .line 298
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 299
    .restart local v8    # "srv":Landroid/app/NotificationManager;
    const/16 v11, 0x1f7

    invoke-virtual {v8, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 275
    .end local v3    # "ntf":Landroid/app/Notification;
    .end local v4    # "ntfb":Landroid/app/Notification$Builder;
    .end local v8    # "srv":Landroid/app/NotificationManager;
    :cond_f
    const v11, 0x7f0802a5

    goto/16 :goto_5

    .line 286
    .restart local v4    # "ntfb":Landroid/app/Notification$Builder;
    :cond_10
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "ntf":Landroid/app/Notification;
    goto :goto_6
.end method
