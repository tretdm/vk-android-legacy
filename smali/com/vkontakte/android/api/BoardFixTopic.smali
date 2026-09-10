.class public Lcom/vkontakte/android/api/BoardFixTopic;
.super Lcom/vkontakte/android/APIRequest;
.source "BoardFixTopic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/BoardFixTopic$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/BoardFixTopic$Callback;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "fixed"    # Z

    .prologue
    .line 11
    if-eqz p3, :cond_0

    const-string v0, "board.fixTopic"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardFixTopic;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    new-instance v0, Lcom/vkontakte/android/api/BoardFixTopic$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/BoardFixTopic$1;-><init>(Lcom/vkontakte/android/api/BoardFixTopic;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/BoardFixTopic;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void

    .line 11
    :cond_0
    const-string v0, "board.unfixTopic"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardFixTopic;->callback:Lcom/vkontakte/android/api/BoardFixTopic$Callback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardFixTopic;->callback:Lcom/vkontakte/android/api/BoardFixTopic$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/BoardFixTopic$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardFixTopic$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardFixTopic$Callback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardFixTopic;->callback:Lcom/vkontakte/android/api/BoardFixTopic$Callback;

    .line 37
    return-object p0
.end method
