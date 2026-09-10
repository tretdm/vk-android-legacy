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
    .line 14
    const-string v0, "friends.add"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/vkontakte/android/api/FriendsAdd;->uid:I

    .line 16
    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsAdd;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    if-eqz p2, :cond_0

    const-string v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/FriendsAdd;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/FriendsAdd$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/FriendsAdd$1;-><init>(Lcom/vkontakte/android/api/FriendsAdd;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/FriendsAdd;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 27
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsAdd;->callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsAdd;->callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

    iget v1, p0, Lcom/vkontakte/android/api/FriendsAdd;->uid:I

    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/FriendsAdd$Callback;->success(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsAdd$Callback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsAdd;->callback:Lcom/vkontakte/android/api/FriendsAdd$Callback;

    .line 37
    return-object p0
.end method
