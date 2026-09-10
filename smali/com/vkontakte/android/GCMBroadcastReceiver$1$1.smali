.class Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;
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

.field final synthetic val$cnt:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Intent;ILandroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iput-object p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$cnt:I

    iput-object p4, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$prefs:Landroid/content/SharedPreferences;

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
    .line 204
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_0

    .line 238
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 206
    .local v8, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$intent:Landroid/content/Intent;

    const/high16 v12, 0x8000000

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 207
    .local v4, "pIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.ACCEPT_FRIEND"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intentAccept":Landroid/content/Intent;
    const-string v9, "uid"

    iget v10, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/4 v10, 0x1

    const/high16 v11, 0x50000000

    invoke-static {v9, v10, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 210
    .local v5, "pIntentAccept":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.DECLINE_FRIEND"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "intentDecline":Landroid/content/Intent;
    const-string v9, "uid"

    iget v10, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const/4 v10, 0x2

    const/high16 v11, 0x50000000

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 213
    .local v6, "pIntentDecline":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v10, v10, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v10, v10, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v10}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x42800000    # 64.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f020159

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$cnt:I

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v11, v11, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0011

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 222
    .local v3, "ntfb":Landroid/app/Notification$Builder;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_1

    .line 223
    const v9, 0x7f020087

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v10, v10, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0101

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f020083

    iget-object v11, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v11, v11, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0102

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 226
    :cond_1
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 227
    .local v2, "ntf":Landroid/app/Notification;
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 228
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyRingtone"

    sget-object v11, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 229
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyRingtone"

    sget-object v11, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 231
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyVibrate"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v2, Landroid/app/Notification;->defaults:I

    .line 232
    :cond_3
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v10, "notifyLED"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 233
    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v2, Landroid/app/Notification;->defaults:I

    .line 234
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 236
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iget-object v9, v9, Lcom/vkontakte/android/GCMBroadcastReceiver$1;->val$context:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 237
    .local v7, "srv":Landroid/app/NotificationManager;
    const/16 v9, 0x1f5

    invoke-virtual {v7, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
