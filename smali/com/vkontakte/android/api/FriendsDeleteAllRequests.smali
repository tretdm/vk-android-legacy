.class public Lcom/vkontakte/android/api/FriendsDeleteAllRequests;
.super Lcom/vkontakte/android/APIRequest;
.source "FriendsDeleteAllRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "friends.deleteAllRequests"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->callback:Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;

    if-nez v1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 21
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 22
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->callback:Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 24
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->callback:Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->callback:Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;

    .line 30
    return-object p0
.end method
