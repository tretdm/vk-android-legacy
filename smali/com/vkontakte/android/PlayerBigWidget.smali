.class public Lcom/vkontakte/android/PlayerBigWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PlayerBigWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "awm"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    .line 24
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const v22, 0x7f03008a

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 26
    .local v17, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v15, Landroid/content/Intent;

    const-class v21, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v15, "playpause":Landroid/content/Intent;
    const-string v21, "PlayPause"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v21, "action"

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 31
    .local v10, "pendingPlaypause":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    const-class v21, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v7, "nextTrack":Landroid/content/Intent;
    const-string v21, "Next"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v21, "action"

    const/16 v22, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 36
    .local v9, "pendingNextTrack":Landroid/app/PendingIntent;
    new-instance v16, Landroid/content/Intent;

    const-class v21, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v16, "prevTrack":Landroid/content/Intent;
    const-string v21, "Prev"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v21, "action"

    const/16 v22, 0x6

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 41
    .local v11, "pendingPrevTrack":Landroid/app/PendingIntent;
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v20, "shuffle":Landroid/content/Intent;
    const-string v21, "Shuffle"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v21, "action"

    const/16 v22, 0xa

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 46
    .local v14, "pendingShuffle":Landroid/app/PendingIntent;
    new-instance v18, Landroid/content/Intent;

    const-class v21, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v18, "repeat":Landroid/content/Intent;
    const-string v21, "Repeat"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v21, "action"

    const/16 v22, 0x9

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 51
    .local v12, "pendingRepeat":Landroid/app/PendingIntent;
    new-instance v19, Landroid/content/Intent;

    const-class v21, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v19, "showPlayer":Landroid/content/Intent;
    const-string v21, "Show"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v21, "action"

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v21, "from_notify"

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 57
    .local v13, "pendingShowPlayer":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-class v21, Lcom/vkontakte/android/FragmentWrapperActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v8, "openApp":Landroid/content/Intent;
    const-string v21, "fdsafsafdsafs"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v21, "class"

    const-string v22, "AudioListFragment"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v21, "args"

    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 61
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 63
    .local v4, "appPending":Landroid/app/PendingIntent;
    sget-object v21, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v21, :cond_5

    sget-object v21, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 64
    sget-object v21, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    .line 65
    .local v6, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v6, :cond_0

    .line 66
    const v21, 0x7f0801d6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 67
    const v21, 0x7f0801d7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 68
    const v21, 0x7f0801d5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 69
    const v21, 0x7f0801db

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    const v21, 0x7f0801dc

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 71
    const v21, 0x7f0801dd

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    const v21, 0x7f0801d2

    iget-object v0, v6, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    const v21, 0x7f0801d3

    iget-object v0, v6, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 74
    iget v0, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    move/from16 v21, v0

    iget v0, v6, Lcom/vkontakte/android/AudioFile;->oid:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 75
    .local v5, "cover":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 76
    const v21, 0x7f0801cf

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 77
    const v21, 0x7f0801cf

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 78
    const v21, 0x7f0801d9

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 85
    .end local v5    # "cover":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    const v21, 0x7f0801d2

    const-string v22, "setSingleLine"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 86
    const v22, 0x7f0801d6

    sget-object v21, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_2

    const v21, 0x7f0200b7

    :goto_1
    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 87
    const v22, 0x7f0801db

    sget-object v21, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v21

    if-eqz v21, :cond_3

    const v21, 0x7f02009c

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 88
    const v22, 0x7f0801dc

    sget-object v21, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v21

    if-eqz v21, :cond_4

    const v21, 0x7f02009a

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 91
    const v21, 0x7f0801de

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 93
    const v21, 0x7f0801d6

    const-string v22, "setBackgroundResource"

    const v23, 0x7f020077

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 94
    const v21, 0x7f0801d7

    const-string v22, "setBackgroundResource"

    const v23, 0x7f020077

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 95
    const v21, 0x7f0801d5

    const-string v22, "setBackgroundResource"

    const v23, 0x7f020077

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 96
    const v21, 0x7f0801db

    const-string v22, "setBackgroundResource"

    const v23, 0x7f020077

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 97
    const v21, 0x7f0801dc

    const-string v22, "setBackgroundResource"

    const v23, 0x7f020077

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 114
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :goto_4
    new-instance v21, Landroid/content/ComponentName;

    const-class v22, Lcom/vkontakte/android/PlayerBigWidget;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 115
    return-void

    .line 81
    .restart local v5    # "cover":Landroid/graphics/Bitmap;
    .restart local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_1
    const v21, 0x7f0801cf

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    const v21, 0x7f0801d9

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 86
    .end local v5    # "cover":Landroid/graphics/Bitmap;
    :cond_2
    const v21, 0x7f0200b8

    goto/16 :goto_1

    .line 87
    :cond_3
    const v21, 0x7f02009d

    goto/16 :goto_2

    .line 88
    :cond_4
    const v21, 0x7f02009b

    goto/16 :goto_3

    .line 100
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_5
    const v21, 0x7f0801dd

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 101
    const v21, 0x7f0801d3

    const-string v22, ""

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    const v21, 0x7f0801d2

    const-string v22, ""

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    const v21, 0x7f0801d6

    const-string v22, "setBackgroundColor"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 104
    const v21, 0x7f0801d7

    const-string v22, "setBackgroundColor"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 105
    const v21, 0x7f0801d5

    const-string v22, "setBackgroundColor"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 106
    const v21, 0x7f0801db

    const-string v22, "setBackgroundColor"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 107
    const v21, 0x7f0801dc

    const-string v22, "setBackgroundColor"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 108
    const v21, 0x7f0801cf

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    const v21, 0x7f0801d9

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    const v21, 0x7f0801de

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/vkontakte/android/PlayerBigWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 21
    return-void
.end method
