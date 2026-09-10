.class public Lcom/vkontakte/android/PlayerWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PlayerWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "awm"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    .line 27
    new-instance v25, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030070

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    .local v25, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v23, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v23, "playpause":Landroid/content/Intent;
    const-string v4, "PlayPause"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v4, "action"

    const/4 v5, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 33
    .local v20, "pendingPlaypause":Landroid/app/PendingIntent;
    const v4, 0x7f080170

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 35
    new-instance v16, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v16, "nextTrack":Landroid/content/Intent;
    const-string v4, "Next"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v4, "action"

    const/4 v5, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 39
    .local v19, "pendingNextTrack":Landroid/app/PendingIntent;
    const v4, 0x7f080171

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 41
    new-instance v24, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v24, "prevTrack":Landroid/content/Intent;
    const-string v4, "Prev"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v4, "action"

    const/4 v5, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 45
    .local v21, "pendingPrevTrack":Landroid/app/PendingIntent;
    const v4, 0x7f08016f

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    new-instance v26, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v26, "showPlayer":Landroid/content/Intent;
    const-string v4, "Show"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v4, "action"

    const/4 v5, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v4, "from_notify"

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 53
    .local v22, "pendingShowPlayer":Landroid/app/PendingIntent;
    new-instance v17, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/FragmentWrapperActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v17, "openApp":Landroid/content/Intent;
    const-string v4, "fdsafsafdsafs"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v4, "class"

    const-string v5, "AudioListFragment"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v4, "args"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 59
    .local v10, "appPending":Landroid/app/PendingIntent;
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 60
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v14

    .line 61
    .local v14, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v14, :cond_0

    .line 62
    const v4, 0x7f08016b

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 63
    const v4, 0x7f08016c

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 64
    const v4, 0x7f08016d

    iget-object v5, v14, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 65
    iget v4, v14, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v5, v14, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 66
    .local v12, "cover":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_2

    .line 67
    const/16 v4, 0xc8

    const/16 v5, 0xc8

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 68
    .local v13, "cv":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v11, "c":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .local v18, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 71
    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v12, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 72
    const v4, 0x7f080169

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v13}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 73
    iget v4, v14, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v5, v14, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(III)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    .local v2, "bl":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 75
    .local v3, "pixels":[I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 76
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v4, v3

    if-lt v15, v4, :cond_1

    .line 79
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 80
    const v4, 0x7f080168

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 86
    .end local v2    # "bl":Landroid/graphics/Bitmap;
    .end local v3    # "pixels":[I
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v12    # "cover":Landroid/graphics/Bitmap;
    .end local v13    # "cv":Landroid/graphics/Bitmap;
    .end local v15    # "i":I
    .end local v18    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_1
    const v4, 0x7f08016c

    const-string v5, "setSingleLine"

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 87
    const v5, 0x7f080170

    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f02010c

    :goto_2
    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 89
    const v4, 0x7f08016e

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    .end local v14    # "f":Lcom/vkontakte/android/AudioFile;
    :goto_3
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/vkontakte/android/PlayerWidget;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 102
    return-void

    .line 77
    .restart local v2    # "bl":Landroid/graphics/Bitmap;
    .restart local v3    # "pixels":[I
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v12    # "cover":Landroid/graphics/Bitmap;
    .restart local v13    # "cv":Landroid/graphics/Bitmap;
    .restart local v14    # "f":Lcom/vkontakte/android/AudioFile;
    .restart local v15    # "i":I
    .restart local v18    # "paint":Landroid/graphics/Paint;
    :cond_1
    aget v4, v3, v15

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x4d000000

    or-int/2addr v4, v5

    aput v4, v3, v15

    .line 76
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "bl":Landroid/graphics/Bitmap;
    .end local v3    # "pixels":[I
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "cv":Landroid/graphics/Bitmap;
    .end local v15    # "i":I
    .end local v18    # "paint":Landroid/graphics/Paint;
    :cond_2
    const v4, 0x7f080169

    const v5, 0x7f020089

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    const v4, 0x7f080168

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 87
    .end local v12    # "cover":Landroid/graphics/Bitmap;
    :cond_3
    const v4, 0x7f02010d

    goto :goto_2

    .line 93
    .end local v14    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_4
    const v4, 0x7f08016d

    const-string v5, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    const v4, 0x7f08016c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060211

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    const v4, 0x7f08016c

    const-string v5, "setSingleLine"

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 96
    const v4, 0x7f08016a

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 97
    const v4, 0x7f08016e

    const/16 v5, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 23
    invoke-static {p1, p2}, Lcom/vkontakte/android/PlayerWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 24
    return-void
.end method
