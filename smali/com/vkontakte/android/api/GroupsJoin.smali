.class public Lcom/vkontakte/android/api/GroupsJoin;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsJoin$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "unsure"    # Z

    .prologue
    .line 13
    const-string v0, "groups.join"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsJoin;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    if-eqz p2, :cond_0

    const-string v0, "not_sure"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsJoin;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 23
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    if-nez v1, :cond_0

    .line 30
    :goto_0
    return-void

    .line 24
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 26
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GroupsJoin$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 28
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/GroupsJoin$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsJoin$Callback;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    .line 34
    return-object p0
.end method
