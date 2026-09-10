.class Lcom/vkontakte/android/AudioPlayerService$13;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->updateNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1360
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v10}, Lcom/vkontakte/android/AudioPlayerService;->access$3300(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1361
    new-instance v6, Landroid/content/Intent;

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-class v11, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1362
    .local v6, "playpause":Landroid/content/Intent;
    const-string v10, "PlayPauseN"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    const-string v10, "action"

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1364
    const-string v10, "from_notify"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1365
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1366
    .local v4, "pendingPlaypause":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-class v11, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1367
    .local v2, "next":Landroid/content/Intent;
    const-string v10, "NextN"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    const-string v10, "action"

    const/4 v11, 0x5

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1369
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    invoke-static {v10, v11, v2, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1370
    .local v3, "pendingNext":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-class v11, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1371
    .local v7, "prev":Landroid/content/Intent;
    const-string v10, "PrevN"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1372
    const-string v10, "action"

    const/4 v11, 0x6

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1373
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    invoke-static {v10, v11, v7, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1375
    .local v5, "pendingPrev":Landroid/app/PendingIntent;
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v10}, Lcom/vkontakte/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030014

    invoke-direct {v8, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1376
    .local v8, "views":Landroid/widget/RemoteViews;
    const v10, 0x7f080026

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v11}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1377
    const v10, 0x7f08005e

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v11}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1378
    const v10, 0x7f08005d

    const v11, 0x7f020007

    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1379
    const v11, 0x7f08005f

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v10}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_4

    const v10, 0x7f0200ae

    :goto_0
    invoke-virtual {v8, v11, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1380
    const v10, 0x7f08005f

    invoke-virtual {v8, v10, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1381
    const v10, 0x7f080060

    invoke-virtual {v8, v10, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1383
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "notification_bg"

    const-string v12, "drawable"

    const-string v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1384
    .local v0, "bgRes":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "notification_template_icon_bg"

    const-string v12, "drawable"

    const-string v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1385
    .local v1, "imgBgRes":I
    if-eqz v0, :cond_0

    .line 1386
    const v10, 0x7f08005c

    const-string v11, "setBackgroundResource"

    invoke-virtual {v8, v10, v11, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1390
    :cond_0
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v10}, Lcom/vkontakte/android/AudioPlayerService;->access$3400(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v10

    iput-object v8, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1391
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_2

    .line 1392
    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v10}, Lcom/vkontakte/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030015

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1393
    .local v9, "xviews":Landroid/widget/RemoteViews;
    const v10, 0x7f080026

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v11}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1394
    const v10, 0x7f08005e

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v11}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1395
    const v10, 0x7f08005d

    const v11, 0x7f020007

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1396
    const v11, 0x7f08005f

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v10}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x7f0200ae

    :goto_1
    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1397
    const v10, 0x7f08005f

    invoke-virtual {v9, v10, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1398
    const v10, 0x7f080060

    invoke-virtual {v9, v10, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1399
    const v10, 0x7f080062

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1400
    if-eqz v0, :cond_1

    .line 1401
    const v10, 0x7f08005c

    const-string v11, "setBackgroundResource"

    invoke-virtual {v9, v10, v11, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1404
    :cond_1
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v10}, Lcom/vkontakte/android/AudioPlayerService;->access$3400(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v10

    iput-object v9, v10, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1406
    .end local v9    # "xviews":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v10}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v10

    iget v10, v10, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v11}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v11

    iget v11, v11, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v12, 0x0

    new-instance v13, Lcom/vkontakte/android/AudioPlayerService$13$1;

    invoke-direct {v13, p0}, Lcom/vkontakte/android/AudioPlayerService$13$1;-><init>(Lcom/vkontakte/android/AudioPlayerService$13;)V

    invoke-static {v10, v11, v12, v13}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1430
    .end local v0    # "bgRes":I
    .end local v1    # "imgBgRes":I
    .end local v2    # "next":Landroid/content/Intent;
    .end local v3    # "pendingNext":Landroid/app/PendingIntent;
    .end local v4    # "pendingPlaypause":Landroid/app/PendingIntent;
    .end local v5    # "pendingPrev":Landroid/app/PendingIntent;
    .end local v6    # "playpause":Landroid/content/Intent;
    .end local v7    # "prev":Landroid/content/Intent;
    .end local v8    # "views":Landroid/widget/RemoteViews;
    :cond_3
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/16 v11, 0x12c

    iget-object v12, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v12}, Lcom/vkontakte/android/AudioPlayerService;->access$3400(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 1431
    return-void

    .line 1379
    .restart local v2    # "next":Landroid/content/Intent;
    .restart local v3    # "pendingNext":Landroid/app/PendingIntent;
    .restart local v4    # "pendingPlaypause":Landroid/app/PendingIntent;
    .restart local v5    # "pendingPrev":Landroid/app/PendingIntent;
    .restart local v6    # "playpause":Landroid/content/Intent;
    .restart local v7    # "prev":Landroid/content/Intent;
    .restart local v8    # "views":Landroid/widget/RemoteViews;
    :cond_4
    const v10, 0x7f0200af

    goto/16 :goto_0

    .line 1396
    .restart local v0    # "bgRes":I
    .restart local v1    # "imgBgRes":I
    .restart local v9    # "xviews":Landroid/widget/RemoteViews;
    :cond_5
    const v10, 0x7f0200af

    goto :goto_1
.end method
