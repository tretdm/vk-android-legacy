.class public Lcom/vkontakte/android/api/BoardDeleteComment;
.super Lcom/vkontakte/android/APIRequest;
.source "BoardDeleteComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/BoardDeleteComment$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/BoardDeleteComment$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "cid"    # I

    .prologue
    .line 11
    const-string v0, "board.deleteComment"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardDeleteComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    new-instance v0, Lcom/vkontakte/android/api/BoardDeleteComment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/BoardDeleteComment$1;-><init>(Lcom/vkontakte/android/api/BoardDeleteComment;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/BoardDeleteComment;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/vkontakte/android/api/BoardDeleteComment;->callback:Lcom/vkontakte/android/api/BoardDeleteComment$Callback;

    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 38
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/BoardDeleteComment;->callback:Lcom/vkontakte/android/api/BoardDeleteComment$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/BoardDeleteComment$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/BoardDeleteComment;->callback:Lcom/vkontakte/android/api/BoardDeleteComment$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/BoardDeleteComment$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardDeleteComment$Callback;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardDeleteComment;->callback:Lcom/vkontakte/android/api/BoardDeleteComment$Callback;

    .line 46
    return-object p0
.end method
