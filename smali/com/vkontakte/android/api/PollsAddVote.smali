.class public Lcom/vkontakte/android/api/PollsAddVote;
.super Lcom/vkontakte/android/APIRequest;
.source "PollsAddVote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PollsAddVote$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PollsAddVote$Callback;


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "pollID"    # I
    .param p3, "optID"    # I
    .param p4, "board"    # Z

    .prologue
    .line 12
    const-string v0, "polls.addVote"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PollsAddVote;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

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

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PollsAddVote;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/PollsAddVote$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PollsAddVote$1;-><init>(Lcom/vkontakte/android/api/PollsAddVote;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PollsAddVote;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x1

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsAddVote;->callback:Lcom/vkontakte/android/api/PollsAddVote$Callback;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsAddVote;->callback:Lcom/vkontakte/android/api/PollsAddVote$Callback;

    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-interface {v1, v0}, Lcom/vkontakte/android/api/PollsAddVote$Callback;->success(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_1
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PollsAddVote$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PollsAddVote$Callback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/api/PollsAddVote;->callback:Lcom/vkontakte/android/api/PollsAddVote$Callback;

    .line 38
    return-object p0
.end method
