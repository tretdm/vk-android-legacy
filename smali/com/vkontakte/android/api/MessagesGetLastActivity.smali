.class public Lcom/vkontakte/android/api/MessagesGetLastActivity;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetLastActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 16
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "code"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "return API.messages.getLastActivity({user_id:%1$d})+{s:API.users.get({fields:\"sex\",user_ids:%1$d})[0].sex};"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetLastActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetLastActivity$1;-><init>(Lcom/vkontakte/android/api/MessagesGetLastActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 29
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetLastActivity;->callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    if-nez v2, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 44
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetLastActivity;->callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 46
    check-cast v1, [Ljava/lang/Object;

    .line 47
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/MessagesGetLastActivity;->callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v3, v4, v5, v2}, Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;->success(IZZ)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 33
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string v3, "online"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v4, "s"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_2
    return-object v0

    :cond_0
    move v3, v2

    .line 34
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 37
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetLastActivity;->callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    .line 53
    return-object p0
.end method
