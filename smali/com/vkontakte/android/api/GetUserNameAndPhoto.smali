.class public Lcom/vkontakte/android/api/GetUserNameAndPhoto;
.super Lcom/vkontakte/android/APIRequest;
.source "GetUserNameAndPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;
    }
.end annotation


# static fields
.field private static final EXEC_CODE_GROUP:Ljava/lang/String; = "var p=API.groups.getById({gid:%1$d});return {n:p[0].name,p:p[0].%2$s};"

.field private static final EXEC_CODE_USER:Ljava/lang/String; = "var p=API.users.get({uid:%1$d,fields:\"%2$s\"});return {n:p[0].first_name+\" \"+p[0].last_name,p:p[0].%2$s};"


# instance fields
.field callback:Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 19
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    if-lez p1, :cond_1

    .line 21
    const-string v1, "code"

    const-string v2, "var p=API.users.get({uid:%1$d,fields:\"%2$s\"});return {n:p[0].first_name+\" \"+p[0].last_name,p:p[0].%2$s};"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    :goto_1
    new-instance v0, Lcom/vkontakte/android/api/GetUserNameAndPhoto$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GetUserNameAndPhoto$1;-><init>(Lcom/vkontakte/android/api/GetUserNameAndPhoto;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 35
    return-void

    .line 21
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0

    .line 23
    :cond_1
    const-string v1, "code"

    const-string v2, "var p=API.groups.getById({gid:%1$d});return {n:p[0].name,p:p[0].%2$s};"

    new-array v3, v3, [Ljava/lang/Object;

    neg-int v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    const-string v0, "photo_medium"

    :goto_2
    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    :cond_2
    const-string v0, "photo"

    goto :goto_2
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->callback:Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->callback:Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;

    const-string v2, "n"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;->success(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->callback:Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;

    .line 49
    return-object p0
.end method
