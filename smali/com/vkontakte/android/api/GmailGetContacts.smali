.class public Lcom/vkontakte/android/api/GmailGetContacts;
.super Lcom/vkontakte/android/APIRequest;
.source "GmailGetContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GmailGetContacts$Callback;
    }
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field callback:Lcom/vkontakte/android/api/GmailGetContacts$Callback;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_token"    # Ljava/lang/String;
    .param p2, "_account"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "__gmailGetContacts"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/vkontakte/android/api/GmailGetContacts;->token:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/vkontakte/android/api/GmailGetContacts;->account:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public doExec()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 28
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.google.com/m8/feeds/contacts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/api/GmailGetContacts;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/full?v=3.0&alt=json&max-results=1000&access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/api/GmailGetContacts;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v0

    .line 29
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 31
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "data":[B
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/api/GmailGetContacts;->callback:Lcom/vkontakte/android/api/GmailGetContacts$Callback;

    if-nez v1, :cond_0

    .line 90
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 84
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 86
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GmailGetContacts;->callback:Lcom/vkontakte/android/api/GmailGetContacts$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GmailGetContacts$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GmailGetContacts;->callback:Lcom/vkontakte/android/api/GmailGetContacts$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GmailGetContacts$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v11, "feed"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "entry"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 42
    .local v3, "jusers":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_2

    .line 43
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    .local v2, "ju":Lorg/json/JSONObject;
    const-string v11, "gd$email"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 42
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v7, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v7}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 46
    .local v7, "p":Lcom/vkontakte/android/UserProfile;
    const-string v11, "gd$email"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "address"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 47
    const-string v11, "gd$name"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 48
    const-string v11, "gd$name"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 49
    .local v6, "name":Lorg/json/JSONObject;
    const-string v11, "gd$givenName"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "gd$givenName"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "$t"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 50
    const-string v11, "gd$familyName"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "gd$familyName"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "$t"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 51
    const-string v11, "gd$fullName"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "$t"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 55
    .end local v6    # "name":Lorg/json/JSONObject;
    :goto_4
    const/4 v8, 0x0

    .line 56
    .local v8, "photo":Ljava/lang/String;
    const-string v11, "link"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 57
    .local v5, "links":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 58
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 59
    .local v4, "link":Lorg/json/JSONObject;
    const-string v11, "type"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "rel"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "#photo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 60
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "href"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&access_token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/api/GmailGetContacts;->token:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 64
    .end local v4    # "link":Lorg/json/JSONObject;
    :cond_1
    iput-object v8, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 65
    iget-object v11, v7, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 66
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 70
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "ju":Lorg/json/JSONObject;
    .end local v3    # "jusers":Lorg/json/JSONArray;
    .end local v5    # "links":Lorg/json/JSONArray;
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v8    # "photo":Ljava/lang/String;
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v10

    .line 71
    .local v10, "x":Ljava/lang/Exception;
    const-string v11, "vk"

    invoke-static {v11, v10}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const/4 v9, 0x0

    .end local v10    # "x":Ljava/lang/Exception;
    :cond_2
    return-object v9

    .line 49
    .restart local v0    # "i":I
    .restart local v2    # "ju":Lorg/json/JSONObject;
    .restart local v3    # "jusers":Lorg/json/JSONArray;
    .restart local v6    # "name":Lorg/json/JSONObject;
    .restart local v7    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    :try_start_1
    const-string v11, ""

    goto/16 :goto_2

    .line 50
    :cond_4
    const-string v11, ""

    goto :goto_3

    .line 53
    .end local v6    # "name":Lorg/json/JSONObject;
    :cond_5
    iget-object v11, v7, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 57
    .restart local v1    # "j":I
    .restart local v4    # "link":Lorg/json/JSONObject;
    .restart local v5    # "links":Lorg/json/JSONArray;
    .restart local v8    # "photo":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public setCallback(Lcom/vkontakte/android/api/GmailGetContacts$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GmailGetContacts$Callback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/api/GmailGetContacts;->callback:Lcom/vkontakte/android/api/GmailGetContacts$Callback;

    .line 78
    return-object p0
.end method
