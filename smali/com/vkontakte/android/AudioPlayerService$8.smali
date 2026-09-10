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

    .line 747
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 764
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 750
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 751
    .local v0, "audio":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 752
    new-instance v1, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 753
    .local v1, "f":Lcom/vkontakte/android/AudioFile;
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$20(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Lcom/vkontakte/android/AudioFile;

    .line 754
    .local v2, "list":[Lcom/vkontakte/android/AudioFile;
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$20(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v7}, Lcom/vkontakte/android/AudioPlayerService;->access$20(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$21(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/AudioPlayerService;->access$35(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 756
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$21(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v4

    aput-object v1, v2, v4

    .line 757
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V

    .line 758
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$20(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$21(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/vkontakte/android/AudioPlayerService;->access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v0    # "audio":Lorg/json/JSONObject;
    .end local v1    # "f":Lcom/vkontakte/android/AudioFile;
    .end local v2    # "list":[Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
