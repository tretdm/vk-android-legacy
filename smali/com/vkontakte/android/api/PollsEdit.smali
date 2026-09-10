.class public Lcom/vkontakte/android/api/PollsEdit;
.super Lcom/vkontakte/android/APIRequest;
.source "PollsEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PollsEdit$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PollsEdit$Callback;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "question"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p4, "add":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "edit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "polls.edit"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PollsEdit;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v0, "poll_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/PollsEdit;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    if-eqz p3, :cond_0

    .line 19
    const-string v0, "question"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 21
    const-string v0, "add_answers"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 23
    const-string v0, "delete_answers"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 24
    :cond_2
    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 25
    const-string v0, "edit_answers"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    :cond_3
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsEdit;->callback:Lcom/vkontakte/android/api/PollsEdit$Callback;

    if-nez v1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 36
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsEdit;->callback:Lcom/vkontakte/android/api/PollsEdit$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PollsEdit$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsEdit;->callback:Lcom/vkontakte/android/api/PollsEdit$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/PollsEdit$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PollsEdit$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PollsEdit$Callback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/api/PollsEdit;->callback:Lcom/vkontakte/android/api/PollsEdit$Callback;

    .line 44
    return-object p0
.end method
