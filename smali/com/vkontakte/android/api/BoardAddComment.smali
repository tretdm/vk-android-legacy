.class public Lcom/vkontakte/android/api/BoardAddComment;
.super Lcom/vkontakte/android/APIRequest;
.source "BoardAddComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/BoardAddComment$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "board.addComment"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    new-instance v0, Lcom/vkontakte/android/api/BoardAddComment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/BoardAddComment$1;-><init>(Lcom/vkontakte/android/api/BoardAddComment;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/BoardAddComment;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardAddComment;->callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardAddComment;->callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/api/BoardAddComment$Callback;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardAddComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardAddComment$Callback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardAddComment;->callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;

    .line 36
    return-object p0
.end method
