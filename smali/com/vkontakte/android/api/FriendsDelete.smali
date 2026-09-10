.class public Lcom/vkontakte/android/api/FriendsDelete;
.super Lcom/vkontakte/android/APIRequest;
.source "FriendsDelete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FriendsDelete$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

.field uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 13
    const-string v0, "friends.delete"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/vkontakte/android/api/FriendsDelete;->uid:I

    .line 15
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsDelete;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

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
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsDelete$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 31
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    iget v2, p0, Lcom/vkontakte/android/api/FriendsDelete;->uid:I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsDelete$Callback;->success(II)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsDelete$Callback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    .line 37
    return-object p0
.end method
