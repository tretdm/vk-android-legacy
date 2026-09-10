.class Lcom/vkontakte/android/AudioPlayerService$8;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 664
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 688
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 667
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 668
    .local v0, "audio":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 669
    new-instance v1, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v1}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .line 670
    .local v1, "f":Lcom/vkontakte/android/AudioFile;
    const-string v4, "aid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 671
    const-string v4, "owner_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 672
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 673
    const-string v4, "artist"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 674
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 675
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 676
    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    .line 677
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Lcom/vkontakte/android/AudioFile;

    .line 678
    .local v2, "list":[Lcom/vkontakte/android/AudioFile;
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v7}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$16(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/AudioPlayerService;->access$28(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 680
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$16(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v4

    aput-object v1, v2, v4

    .line 681
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V

    .line 682
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$16(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/vkontakte/android/AudioPlayerService;->access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v0    # "audio":Lorg/json/JSONObject;
    .end local v1    # "f":Lcom/vkontakte/android/AudioFile;
    .end local v2    # "list":[Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
