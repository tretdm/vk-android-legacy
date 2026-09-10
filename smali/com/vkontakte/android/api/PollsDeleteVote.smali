.class public Lcom/vkontakte/android/api/PollsDeleteVote;
.super Lcom/vkontakte/android/APIRequest;
.source "PollsDeleteVote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PollsDeleteVote$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PollsDeleteVote$Callback;


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "pollID"    # I
    .param p3, "optID"    # I
    .param p4, "board"    # Z

    .prologue
    .line 12
    const-string v0, "polls.deleteVote"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PollsDeleteVote;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "poll_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "answer_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    if-eqz p4, :cond_0

    const-string v0, "board"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PollsDeleteVote;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsDeleteVote;->callback:Lcom/vkontakte/android/api/PollsDeleteVote$Callback;

    if-nez v1, :cond_0

    .line 33
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 27
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 29
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsDeleteVote;->callback:Lcom/vkontakte/android/api/PollsDeleteVote$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PollsDeleteVote$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 31
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsDeleteVote;->callback:Lcom/vkontakte/android/api/PollsDeleteVote$Callback;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/PollsDeleteVote$Callback;->success(Z)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    .line 19
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 22
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PollsDeleteVote$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PollsDeleteVote$Callback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/api/PollsDeleteVote;->callback:Lcom/vkontakte/android/api/PollsDeleteVote$Callback;

    .line 37
    return-object p0
.end method
