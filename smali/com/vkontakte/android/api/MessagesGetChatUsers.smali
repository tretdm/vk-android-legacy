.class public Lcom/vkontakte/android/api/MessagesGetChatUsers;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetChatUsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "chatID"    # I

    .prologue
    .line 18
    const-string v0, "messages.getChatUsers"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetChatUsers;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "fields"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "online,first_name,last_name,"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetChatUsers$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetChatUsers$1;-><init>(Lcom/vkontakte/android/api/MessagesGetChatUsers;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesGetChatUsers;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 31
    return-void

    .line 19
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    .line 35
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 36
    .local v4, "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 50
    .end local v1    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/api/MessagesGetChatUsers;->callback:Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;

    if-eqz v6, :cond_1

    .line 51
    iget-object v6, p0, Lcom/vkontakte/android/api/MessagesGetChatUsers;->callback:Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-interface {v6, v7, v4}, Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;->success(ILjava/util/Vector;)V

    .line 55
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    :goto_1
    return-void

    .line 39
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 41
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const-string v6, "first_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 42
    const-string v6, "last_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 44
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    const-string v6, "photo_medium_rec"

    :goto_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 45
    const-string v6, "uid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 46
    const-string v6, "online"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/vkontakte/android/UserProfile;->online:Z

    .line 47
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_3
    const-string v6, "photo_rec"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 46
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 52
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v5

    .line 53
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetChatUsers;->callback:Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;

    .line 59
    return-object p0
.end method
