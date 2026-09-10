.class public Lcom/vkontakte/android/api/MessagesAddChatUser;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesAddChatUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "chatID"    # I
    .param p2, "userID"    # I

    .prologue
    .line 11
    const-string v0, "messages.addChatUser"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesAddChatUser;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesAddChatUser;->callback:Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;

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
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesAddChatUser;->callback:Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesAddChatUser;->callback:Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 20
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesAddChatUser;->callback:Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;

    .line 25
    return-object p0
.end method
