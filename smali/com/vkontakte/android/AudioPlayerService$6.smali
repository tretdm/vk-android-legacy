.class Lcom/vkontakte/android/AudioPlayerService$6;
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
    .line 780
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$6;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 793
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 783
    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 784
    .local v0, "audio":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 785
    new-instance v1, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 786
    .local v1, "f":Lcom/vkontakte/android/AudioFile;
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$6;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$100(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$6;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$6;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$100(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$6;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$3000(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/AudioFile;

    invoke-static {v4, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$300(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v0    # "audio":Lorg/json/JSONObject;
    .end local v1    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
