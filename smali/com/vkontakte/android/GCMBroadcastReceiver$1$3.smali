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

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$isReply:Z

.field private final synthetic val$place:Ljava/lang/String;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iput-object p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$place:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$isReply:Z

    iput-object p6, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$text:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 13
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
    .line 195
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 253
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 197
    .local v7, "user":Lcom/vkontakte/android/UserProfile;
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got user "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$intent:Landroid/content/Intent;

    const/high16 v11, 0x8000000

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 211
    .local v3, "pIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060206

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "shortTitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v8, v7, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v8, :cond_4

    const v8, 0x7f0601fe

    :goto_1
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "longTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 213
    .local v6, "type":I
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$place:Ljava/lang/String;

    const-string v9, "photo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    const/4 v6, 0x1

    .line 215
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060207

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v8, v7, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v8, :cond_5

    const v8, 0x7f060200

    :goto_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$place:Ljava/lang/String;

    const-string v9, "video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 219
    const/4 v6, 0x2

    .line 220
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060208

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v8, v7, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v8, :cond_6

    const v8, 0x7f060202

    :goto_3
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_2
    iget-boolean v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$isReply:Z

    if-eqz v8, :cond_3

    .line 224
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v8, v7, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v8, :cond_7

    const v8, 0x7f060204

    :goto_4
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060205

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    :cond_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_9

    .line 228
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 230
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 231
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 232
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 233
    iget-object v9, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v9}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 235
    const v9, 0x7f0201b2

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 236
    .local v0, "bldr":Landroid/app/Notification$Builder;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_8

    .line 237
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 239
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 241
    invoke-virtual {v8}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 249
    .end local v0    # "bldr":Landroid/app/Notification$Builder;
    .local v2, "ntf":Landroid/app/Notification;
    :goto_5
    iget v8, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v2, Landroid/app/Notification;->flags:I

    .line 250
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 252
    .local v5, "srv":Landroid/app/NotificationManager;
    const/16 v8, 0x1f6

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "longTitle":Ljava/lang/String;
    .end local v2    # "ntf":Landroid/app/Notification;
    .end local v5    # "srv":Landroid/app/NotificationManager;
    .end local v6    # "type":I
    :cond_4
    const v8, 0x7f0601fd

    goto/16 :goto_1

    .line 216
    .restart local v1    # "longTitle":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_5
    const v8, 0x7f0601ff

    goto/16 :goto_2

    .line 221
    :cond_6
    const v8, 0x7f060201

    goto/16 :goto_3

    .line 224
    :cond_7
    const v8, 0x7f060203

    goto/16 :goto_4

    .line 243
    .restart local v0    # "bldr":Landroid/app/Notification$Builder;
    :cond_8
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 245
    .restart local v2    # "ntf":Landroid/app/Notification;
    goto :goto_5

    .line 246
    .end local v0    # "bldr":Landroid/app/Notification$Builder;
    .end local v2    # "ntf":Landroid/app/Notification;
    :cond_9
    new-instance v2, Landroid/app/Notification;

    const v8, 0x7f0201b2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v2, v8, v1, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 247
    .restart local v2    # "ntf":Landroid/app/Notification;
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$3;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v8, v9, v10, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_5
.end method
