.class public Lcom/vkontakte/android/PlayerWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PlayerWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 15
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f030050

    invoke-direct {v12, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 17
    .local v12, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v10, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v10, "playpause":Landroid/content/Intent;
    const-string v14, "PlayPause"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v14, "action"

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v10, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 21
    .local v7, "pendingPlaypause":Landroid/app/PendingIntent;
    const v14, 0x7f06017a

    invoke-virtual {v12, v14, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 23
    new-instance v4, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v4, "nextTrack":Landroid/content/Intent;
    const-string v14, "Next"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v14, "action"

    const/4 v15, 0x5

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v4, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 27
    .local v6, "pendingNextTrack":Landroid/app/PendingIntent;
    const v14, 0x7f06017b

    invoke-virtual {v12, v14, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 29
    new-instance v11, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v11, "prevTrack":Landroid/content/Intent;
    const-string v14, "Prev"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v14, "action"

    const/4 v15, 0x6

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v11, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 33
    .local v8, "pendingPrevTrack":Landroid/app/PendingIntent;
    const v14, 0x7f060179

    invoke-virtual {v12, v14, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 35
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v13, "showPlayer":Landroid/content/Intent;
    const-string v14, "Show"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v14, "action"

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string v14, "from_notify"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v13, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 40
    .local v9, "pendingShowPlayer":Landroid/app/PendingIntent;
    const v14, 0x7f06017c

    invoke-virtual {v12, v14, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 42
    new-instance v5, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/AudioListActivity;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v5, "openApp":Landroid/content/Intent;
    const-string v14, "inTab"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 45
    .local v2, "appPending":Landroid/app/PendingIntent;
    const v14, 0x7f06017f

    invoke-virtual {v12, v14, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v14, :cond_2

    .line 48
    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v14}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    .line 49
    .local v3, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v3, :cond_0

    .line 50
    const v14, 0x7f06017d

    iget-object v15, v3, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 51
    const v14, 0x7f06017e

    iget-object v15, v3, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 53
    :cond_0
    const v15, 0x7f06017a

    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v14}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x7f0201c9

    :goto_0
    invoke-virtual {v12, v15, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 54
    const v14, 0x7f06017f

    const/16 v15, 0x8

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 56
    const v14, 0x7f06017c

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 57
    const v14, 0x7f06017a

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 58
    const v14, 0x7f06017b

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 59
    const v14, 0x7f060179

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 68
    .end local v3    # "f":Lcom/vkontakte/android/AudioFile;
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 69
    return-void

    .line 53
    .restart local v3    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_1
    const v14, 0x7f0201ca

    goto :goto_0

    .line 61
    .end local v3    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const v14, 0x7f06017f

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 62
    const v14, 0x7f06017c

    const/16 v15, 0x8

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 63
    const v14, 0x7f06017a

    const/16 v15, 0x8

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    const v14, 0x7f06017b

    const/16 v15, 0x8

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    const v14, 0x7f060179

    const/16 v15, 0x8

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method
