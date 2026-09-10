.class Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;
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

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isMention:Z

.field final synthetic val$isReply:Z

.field final synthetic val$place:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$replyID:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iput-object p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$place:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$isReply:Z

    iput-boolean p5, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$isMention:Z

    iput p6, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$replyID:I

    iput-object p7, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$text:Ljava/lang/String;

    iput-object p8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 14
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
    .line 416
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 490
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 418
    .local v8, "user":Lcom/vkontakte/android/UserProfile;
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$intent:Landroid/content/Intent;

    const/high16 v12, 0x8000000

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 432
    .local v3, "pIntent":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d007e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "shortTitle":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-boolean v9, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v9, :cond_8

    const v9, 0x7f0d007c

    :goto_1
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "longTitle":Ljava/lang/String;
    const/4 v7, 0x0

    .line 434
    .local v7, "type":I
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$place:Ljava/lang/String;

    const-string v10, "photo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 435
    const/4 v7, 0x1

    .line 436
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d007b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 437
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-boolean v9, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v9, :cond_9

    const v9, 0x7f0d0079

    :goto_2
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$place:Ljava/lang/String;

    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 440
    const/4 v7, 0x2

    .line 441
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0081

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 442
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-boolean v9, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v9, :cond_a

    const v9, 0x7f0d007f

    :goto_3
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 444
    :cond_2
    iget-boolean v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$isReply:Z

    if-eqz v9, :cond_3

    .line 445
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-boolean v9, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v9, :cond_b

    const v9, 0x7f0d025d

    :goto_4
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 446
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d025f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 448
    :cond_3
    iget-boolean v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$isMention:Z

    if-eqz v9, :cond_4

    .line 449
    iget v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$replyID:I

    if-eqz v9, :cond_d

    .line 450
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-boolean v9, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v9, :cond_c

    const v9, 0x7f0d017a

    :goto_5
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 451
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d017f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 460
    :cond_4
    :goto_6
    iget-object v9, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v9}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 461
    .local v4, "photo":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v10, v10, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    if-eqz v4, :cond_10

    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :goto_7
    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v4, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f020158

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 469
    .local v0, "bldr":Landroid/app/Notification$Builder;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_11

    .line 470
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 478
    .local v2, "ntf":Landroid/app/Notification;
    :goto_8
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 479
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyRingtone"

    sget-object v11, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 480
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyRingtone"

    sget-object v11, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 482
    :cond_5
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyVibrate"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v2, Landroid/app/Notification;->defaults:I

    .line 483
    :cond_6
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyLED"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 484
    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v2, Landroid/app/Notification;->defaults:I

    .line 485
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 487
    :cond_7
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 489
    .local v6, "srv":Landroid/app/NotificationManager;
    const/16 v9, 0x1f6

    invoke-virtual {v6, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 432
    .end local v0    # "bldr":Landroid/app/Notification$Builder;
    .end local v1    # "longTitle":Ljava/lang/String;
    .end local v2    # "ntf":Landroid/app/Notification;
    .end local v6    # "srv":Landroid/app/NotificationManager;
    .end local v7    # "type":I
    :cond_8
    const v9, 0x7f0d007d

    goto/16 :goto_1

    .line 437
    .restart local v1    # "longTitle":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_9
    const v9, 0x7f0d007a

    goto/16 :goto_2

    .line 442
    :cond_a
    const v9, 0x7f0d0080

    goto/16 :goto_3

    .line 445
    :cond_b
    const v9, 0x7f0d025e

    goto/16 :goto_4

    .line 450
    :cond_c
    const v9, 0x7f0d017b

    goto/16 :goto_5

    .line 453
    :cond_d
    iget v9, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    if-gez v9, :cond_e

    .line 454
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d017c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 457
    :goto_9
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d017f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 456
    :cond_e
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-boolean v9, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v9, :cond_f

    const v9, 0x7f0d017d

    :goto_a
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_f
    const v9, 0x7f0d017e

    goto :goto_a

    .line 461
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_10
    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$4;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v10, v10, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0201ec

    invoke-static {v10, v11}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_7

    .line 476
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    .restart local v0    # "bldr":Landroid/app/Notification$Builder;
    :cond_11
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .restart local v2    # "ntf":Landroid/app/Notification;
    goto/16 :goto_8
.end method
