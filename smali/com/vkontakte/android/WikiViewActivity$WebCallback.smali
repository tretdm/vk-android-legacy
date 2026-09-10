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
    .line 450
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/WikiViewActivity$1;

    .prologue
    .line 450
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
    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$1000(Lcom/vkontakte/android/WikiViewActivity;IIZ)V

    .line 471
    return-void
.end method

.method public openPhotos([Ljava/lang/String;I)V
    .locals 15
    .param p1, "urls"    # [Ljava/lang/String;
    .param p2, "pos"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 475
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v12, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    move-object/from16 v7, p1

    .local v7, "arr$":[Ljava/lang/String;
    array-length v10, v7

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v14, v7, v8

    .line 477
    .local v14, "url":Ljava/lang/String;
    new-instance v11, Lcom/vkontakte/android/Photo;

    invoke-direct {v11}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 478
    .local v11, "p":Lcom/vkontakte/android/Photo;
    new-instance v9, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v9}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 479
    .local v9, "im":Lcom/vkontakte/android/Photo$Image;
    const/16 v1, 0x78

    iput-char v1, v9, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 480
    const-string v1, "\\|"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 481
    .local v13, "ss":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v13, v1

    iput-object v1, v9, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 482
    iget-object v1, v11, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 485
    .end local v9    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v11    # "p":Lcom/vkontakte/android/Photo;
    .end local v13    # "ss":[Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "list"

    invoke-virtual {v2, v1, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 487
    const-string v1, "position"

    move/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    const-string v1, "PhotoViewerFragment"

    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 489
    return-void
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
    .line 454
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p1

    if-ge v8, v1, :cond_0

    .line 456
    new-instance v1, Lcom/vkontakte/android/AudioFile;

    aget v2, p2, v8

    aget v3, p1, v8

    aget-object v4, p3, v8

    aget-object v5, p4, v8

    aget v6, p6, v8

    aget-object v7, p5, v8

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 458
    :cond_0
    new-instance v9, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v1, "list_al"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 461
    const-string v1, "position"

    move/from16 v0, p7

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1, v9}, Lcom/vkontakte/android/WikiViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 463
    new-instance v10, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v10, "intent2":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1, v10}, Lcom/vkontakte/android/WikiViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 466
    return-void
.end method
