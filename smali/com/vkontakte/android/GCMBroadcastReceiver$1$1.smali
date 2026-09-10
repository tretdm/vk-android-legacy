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

.field private final synthetic val$cnt:I

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iput-object p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$cnt:I

    .line 88
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
    .line 91
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    .line 114
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 93
    .local v7, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$intent:Landroid/content/Intent;

    const/high16 v11, 0x8000000

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 94
    .local v3, "pIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.vkontakte.android.ACCEPT_FRIEND"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intentAccept":Landroid/content/Intent;
    const-string v8, "uid"

    iget v9, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    const/4 v9, 0x1

    const/high16 v10, 0x50000000

    invoke-static {v8, v9, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 97
    .local v4, "pIntentAccept":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.vkontakte.android.DECLINE_FRIEND"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "intentDecline":Landroid/content/Intent;
    const-string v8, "uid"

    iget v9, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    const/4 v9, 0x2

    const/high16 v10, 0x50000000

    invoke-static {v8, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 100
    .local v5, "pIntentDecline":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v9, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 102
    iget-object v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060152

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 103
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 104
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

    .line 105
    const v9, 0x7f0201b3

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 106
    iget v9, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$cnt:I

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060152

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 108
    const v9, 0x7f0200e9

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 109
    const v9, 0x7f0200e5

    iget-object v10, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 110
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 111
    .local v2, "ntf":Landroid/app/Notification;
    iget v8, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v2, Landroid/app/Notification;->flags:I

    .line 112
    iget-object v8, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$1;->val$context:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 113
    .local v6, "srv":Landroid/app/NotificationManager;
    const/16 v8, 0x1f5

    invoke-virtual {v6, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
