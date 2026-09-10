.class public Lcom/vkontakte/android/api/GroupsLeave;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsLeave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsLeave$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "gid"    # I

    .prologue
    .line 10
    const-string v0, "groups.leave"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsLeave;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    new-instance v0, Lcom/vkontakte/android/api/GroupsLeave$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GroupsLeave$1;-><init>(Lcom/vkontakte/android/api/GroupsLeave;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GroupsLeave;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsLeave;->callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 31
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 32
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 33
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsLeave;->callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GroupsLeave$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsLeave;->callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/GroupsLeave$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsLeave$Callback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsLeave;->callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;

    .line 41
    return-object p0
.end method
