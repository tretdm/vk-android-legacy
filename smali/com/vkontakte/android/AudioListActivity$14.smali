.class Lcom/vkontakte/android/AudioListActivity$14;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;

.field private final synthetic val$playPos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iput p2, p0, Lcom/vkontakte/android/AudioListActivity$14;->val$playPos:I

    .line 435
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioListActivity$14;)Lcom/vkontakte/android/AudioListActivity;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    new-instance v1, Lcom/vkontakte/android/AudioListActivity$14$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioListActivity$14$2;-><init>(Lcom/vkontakte/android/AudioListActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 438
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 439
    .local v7, "a":Lorg/json/JSONArray;
    if-nez v7, :cond_2

    .line 440
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/vkontakte/android/AudioFile;

    iput-object v3, v2, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    iput-object v3, v1, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    new-instance v2, Lcom/vkontakte/android/AudioListActivity$14$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioListActivity$14$1;-><init>(Lcom/vkontakte/android/AudioListActivity$14;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 455
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$12(Lcom/vkontakte/android/AudioListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->localSearch(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->updateList(Z)V

    .line 457
    iget v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->val$playPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 458
    new-instance v11, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v1, v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v9, v1, [Lcom/vkontakte/android/AudioFile;

    .line 461
    .local v9, "files":[Lcom/vkontakte/android/AudioFile;
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v4, v4, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    invoke-static {v1, v2, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v4, v4, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    invoke-static {v1, v2, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    const-string v1, "list"

    invoke-virtual {v11, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 464
    const-string v1, "position"

    iget v2, p0, Lcom/vkontakte/android/AudioListActivity$14;->val$playPos:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v1, v11}, Lcom/vkontakte/android/AudioListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v7    # "a":Lorg/json/JSONArray;
    .end local v9    # "files":[Lcom/vkontakte/android/AudioFile;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->access$13(Lcom/vkontakte/android/AudioListActivity;I)V

    .line 469
    return-void

    .line 442
    .restart local v7    # "a":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lcom/vkontakte/android/AudioFile;

    iput-object v2, v1, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    .line 443
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lcom/vkontakte/android/AudioFile;

    iput-object v2, v1, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    .line 444
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 445
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 446
    .local v8, "f":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    const-string v1, "aid"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "owner_id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "artist"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "url"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    const-string v1, "lyrics_id"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    .line 448
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$14;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    aput-object v0, v2, v10

    aput-object v0, v1, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 467
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    .end local v7    # "a":Lorg/json/JSONArray;
    .end local v8    # "f":Lorg/json/JSONObject;
    .end local v10    # "i":I
    :catch_0
    move-exception v12

    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
