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
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 14
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, "code"

    const-string v1, "return API.messages.getLastActivity({uid:%1$d})+{s:API.users.get({fields:\"sex\",uids:%1$d})[0].sex};"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 17
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetLastActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetLastActivity$1;-><init>(Lcom/vkontakte/android/api/MessagesGetLastActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 27
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 31
    :try_start_0
    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 32
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetLastActivity;->callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    if-eqz v2, :cond_0

    .line 33
    iget-object v3, p0, Lcom/vkontakte/android/api/MessagesGetLastActivity;->callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    const-string v2, "time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v4, v2

    const-string v2, "online"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    const-string v5, "s"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v0, :cond_2

    :goto_1
    invoke-interface {v3, v4, v2, v0}, Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;->success(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 33
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetLastActivity;->callback:Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;

    .line 40
    return-object p0
.end method
