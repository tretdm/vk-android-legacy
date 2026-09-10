.class public Lcom/vkontakte/android/api/PagesGetHTML;
.super Lcom/vkontakte/android/APIRequest;
.source "PagesGetHTML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PagesGetHTML$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

.field private needMeta:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 7
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "isSite"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    const-string v2, "execute"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    iput-boolean v1, p0, Lcom/vkontakte/android/api/PagesGetHTML;->needMeta:Z

    .line 18
    iput-boolean p3, p0, Lcom/vkontakte/android/api/PagesGetHTML;->needMeta:Z

    .line 19
    const-string v2, "code"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "var p=API.pages.get({owner_id:%1$d,page_id:%2$d,need_html:1,site_preview:%3$d}); p=p+{source: \"\"}; if(%3$d==1){if(p.group_id>0){var g=API.groups.getById({group_id: p.group_id})[0]; p=p+{group_photo: g.photo_100, group_name: g.name};}else{var g=API.users.get({user_ids: -p.group_id, fields:\"photo_100,photo_50,first_name_gen,last_name_gen\"})[0]; p=p+{group_photo: g.photo_100, group_name: g.first_name+\" \"+g.last_name, name_gen: g.first_name_gen+\" \"+g.last_name_gen};}} return p;"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 19
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/vkontakte/android/api/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .param p1, "oid"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 33
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    iput-boolean v6, p0, Lcom/vkontakte/android/api/PagesGetHTML;->needMeta:Z

    .line 34
    const-string v0, "code"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "var p=API.pages.get({title:\"%1$s\",owner_id:%2$d,need_html:1}); p=p+{source: \"\"}; return p;"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 28
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    iput-boolean v6, p0, Lcom/vkontakte/android/api/PagesGetHTML;->needMeta:Z

    .line 29
    const-string v0, "code"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "var p=API.pages.get({title:\"%s\",global:1,need_html:1}); p=p+{source: \"\"}; return p;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 30
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/api/PagesGetHTML;->callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    if-nez v2, :cond_0

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 70
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PagesGetHTML;->callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PagesGetHTML$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 72
    check-cast v1, [Ljava/lang/Object;

    .line 73
    .local v1, "r":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/api/PagesGetHTML;->callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v5, v2, v3, v4}, Lcom/vkontakte/android/api/PagesGetHTML$Callback;->success(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    :try_start_0
    const-string v4, "execute_errors"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "execute_errors"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    .local v0, "je":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const-string v5, "error_code"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "error_msg"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    .line 63
    .end local v0    # "je":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 45
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v1, "meta":Landroid/os/Bundle;
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 47
    .local v2, "r":Lorg/json/JSONObject;
    iget-boolean v4, p0, Lcom/vkontakte/android/api/PagesGetHTML;->needMeta:Z

    if-eqz v4, :cond_1

    .line 48
    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v4, "url"

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "date"

    const-string v5, "created"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v4, "views"

    const-string v5, "views"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string v4, "group_id"

    const-string v5, "group_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v4, "group_name"

    const-string v5, "group_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "group_photo"

    const-string v5, "group_photo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "name_gen"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const-string v4, "name_gen"

    const-string v5, "name_gen"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "view_url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 60
    .end local v1    # "meta":Landroid/os/Bundle;
    .end local v2    # "r":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 61
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vkontakte/android/api/PagesGetHTML;->callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    .line 79
    return-object p0
.end method
