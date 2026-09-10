.class public Lcom/vkontakte/android/api/AccountSaveProfileInfo;
.super Lcom/vkontakte/android/APIRequest;
.source "AccountSaveProfileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cancelNameReq"    # I

    .prologue
    .line 45
    const-string v0, "account.saveProfileInfo"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, "cancel_request_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 15
    const-string v1, "execute.saveProfileInfo"

    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "first_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const-string v1, "first_name"

    const-string v2, "first_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v1, "last_name"

    const-string v2, "last_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    :cond_0
    const-string v1, "gender"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    const-string v1, "sex"

    const-string v2, "gender"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    :cond_1
    const-string v1, "relation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    const-string v1, "relation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "relation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    :cond_2
    const-string v1, "relation_partner"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    const-string v1, "relation_partner"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 28
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    const-string v2, "relation_partner_id"

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 30
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const-string v1, "bday"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    const-string v1, "bdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bday"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bmonth"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "byear"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 33
    :cond_4
    const-string v1, "bdate_vis"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    const-string v1, "bdate_visibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bdate_vis"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 36
    :cond_5
    const-string v1, "country_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    const-string v1, "country_id"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "country_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 39
    :cond_6
    const-string v1, "city_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40
    const-string v1, "city_id"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "city_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 42
    :cond_7
    return-void

    .line 28
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_8
    const-string v1, "0"

    goto/16 :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->callback:Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;

    if-nez v2, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 85
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->callback:Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 87
    check-cast v1, [Ljava/lang/Object;

    .line 88
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->callback:Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v6, v2, v3}, Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;->success(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    .local v1, "r":Lorg/json/JSONObject;
    const-string v4, "name_request"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    const-string v4, "name_request"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    .local v0, "nreq":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "status":Ljava/lang/String;
    const-string v4, "processing"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 72
    .end local v0    # "nreq":Lorg/json/JSONObject;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 58
    .restart local v0    # "nreq":Lorg/json/JSONObject;
    .restart local v1    # "r":Lorg/json/JSONObject;
    .restart local v2    # "status":Ljava/lang/String;
    :cond_0
    const-string v4, "declined"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "nreq":Lorg/json/JSONObject;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 70
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v4, 0x0

    goto :goto_0

    .line 61
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "nreq":Lorg/json/JSONObject;
    .restart local v1    # "r":Lorg/json/JSONObject;
    .restart local v2    # "status":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "was_accepted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "repeat_date"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    .line 64
    :cond_2
    const-string v4, "was_declined"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "repeat_date"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    .line 68
    .end local v0    # "nreq":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "new_first"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "new_last"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->callback:Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;

    .line 77
    return-object p0
.end method
