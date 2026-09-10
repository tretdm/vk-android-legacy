.class public Lcom/vkontakte/android/api/FriendsAdd;
.super Lcom/vkontakte/android/APIRequest;
.source "FriendsAdd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FriendsAdd$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

.field uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "friends.add"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/vkontakte/android/api/FriendsAdd;->uid:I

    .line 15
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsAdd;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    if-eqz p2, :cond_0

    const-string v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/FriendsAdd;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsAdd;->callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

    if-nez v1, :cond_0

    .line 34
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 28
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 29
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 30
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsAdd;->callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsAdd$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 32
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsAdd;->callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

    iget v2, p0, Lcom/vkontakte/android/api/FriendsAdd;->uid:I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsAdd$Callback;->success(II)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsAdd$Callback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsAdd;->callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

    .line 38
    return-object p0
.end method
