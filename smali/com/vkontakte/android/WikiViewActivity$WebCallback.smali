.class Lcom/vkontakte/android/WikiViewActivity$WebCallback;
.super Ljava/lang/Object;
.source "WikiViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/WikiViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/WikiViewActivity;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$WebCallback;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WikiViewActivity$WebCallback;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    return-void
.end method


# virtual methods
.method public openPage(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$1(Lcom/vkontakte/android/WikiViewActivity;IIZ)V

    .line 474
    return-void
.end method

.method public openPhotos([Ljava/lang/String;I)V
    .locals 11
    .param p1, "urls"    # [Ljava/lang/String;
    .param p2, "pos"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 478
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    array-length v3, p1

    move v0, v2

    :goto_0
    if-lt v0, v3, :cond_0

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "list"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 490
    const-string v0, "position"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    const-string v0, "PhotoViewerFragment"

    iget-object v2, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v3, 0x1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 492
    return-void

    .line 479
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    aget-object v10, p1, v0

    .line 480
    .local v10, "url":Ljava/lang/String;
    new-instance v7, Lcom/vkontakte/android/Photo;

    invoke-direct {v7}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 481
    .local v7, "p":Lcom/vkontakte/android/Photo;
    new-instance v6, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v6}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 482
    .local v6, "im":Lcom/vkontakte/android/Photo$Image;
    const/16 v5, 0x78

    iput-char v5, v6, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 483
    const-string v5, "\\|"

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, "ss":[Ljava/lang/String;
    aget-object v5, v9, v2

    iput-object v5, v6, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 485
    iget-object v5, v7, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playAudio([I[I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)V
    .locals 12
    .param p1, "oid"    # [I
    .param p2, "aid"    # [I
    .param p3, "artist"    # [Ljava/lang/String;
    .param p4, "title"    # [Ljava/lang/String;
    .param p5, "url"    # [Ljava/lang/String;
    .param p6, "duration"    # [I
    .param p7, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 457
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p1

    if-lt v8, v1, :cond_0

    .line 461
    new-instance v9, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    const-string v1, "list_al"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 464
    const-string v1, "position"

    move/from16 v0, p7

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1, v9}, Lcom/vkontakte/android/WikiViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 466
    new-instance v10, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .local v10, "intent2":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1, v10}, Lcom/vkontakte/android/WikiViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 469
    return-void

    .line 459
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intent2":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/vkontakte/android/AudioFile;

    aget v2, p2, v8

    aget v3, p1, v8

    aget-object v4, p3, v8

    aget-object v5, p4, v8

    aget v6, p6, v8

    aget-object v7, p5, v8

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
