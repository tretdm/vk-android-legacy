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


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 11
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, "code"

    const-string v2, "var p=API.pages.get({pid:%d,%sid:%d,need_html:1}); return {html:p.html,title:p.title};"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-gez p1, :cond_0

    const-string v0, "g"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PagesGetHTML$1;-><init>(Lcom/vkontakte/android/api/PagesGetHTML;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PagesGetHTML;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void

    .line 12
    :cond_0
    const-string v0, "m"

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 5
    .param p1, "oid"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v1, "code"

    const-string v2, "return {html:API.pages.get({title:\"%1$s\",%2$sid:%3$d,need_html:1}).html, title:\"%1$s\"};"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v4, 0x1

    if-gez p1, :cond_0

    const-string v0, "g"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 46
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PagesGetHTML$3;-><init>(Lcom/vkontakte/android/api/PagesGetHTML;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PagesGetHTML;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 56
    return-void

    .line 44
    :cond_0
    const-string v0, "m"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "code"

    const-string v1, "return {html:API.pages.get({title:\"%s\",global:1,need_html:1}).html, title:\"%1$s\"};"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 30
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PagesGetHTML$2;-><init>(Lcom/vkontakte/android/api/PagesGetHTML;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PagesGetHTML;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 40
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/PagesGetHTML;->callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/api/PagesGetHTML;->callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/PagesGetHTML$Callback;->success(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/api/PagesGetHTML;->callback:Lcom/vkontakte/android/api/PagesGetHTML$Callback;

    .line 68
    return-object p0
.end method
