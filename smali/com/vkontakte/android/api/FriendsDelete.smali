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
    .line 14
    const-string v0, "friends.delete"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/vkontakte/android/api/FriendsDelete;->uid:I

    .line 16
    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsDelete;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    new-instance v0, Lcom/vkontakte/android/api/FriendsDelete$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/FriendsDelete$1;-><init>(Lcom/vkontakte/android/api/FriendsDelete;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/FriendsDelete;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    iget v1, p0, Lcom/vkontakte/android/api/FriendsDelete;->uid:I

    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/FriendsDelete$Callback;->success(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsDelete$Callback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    .line 36
    return-object p0
.end method
