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
.method public constructor <init>(I)V
    .locals 1
    .param p1, "gid"    # I

    .prologue
    .line 13
    const-string v0, "groups.join"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsJoin;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    if-nez v1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 24
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 25
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GroupsJoin$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 27
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
    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsJoin$Callback;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    .line 33
    return-object p0
.end method
