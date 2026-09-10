.class public Lcom/vkontakte/android/api/AuthSignup;
.super Lcom/vkontakte/android/APIRequest;
.source "AuthSignup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AuthSignup$Callback;
    }
.end annotation


# static fields
.field private static lastSid:Ljava/lang/String;


# instance fields
.field callback:Lcom/vkontakte/android/api/AuthSignup$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/api/AuthSignup;->lastSid:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;
    .param p3, "gender"    # I
    .param p4, "phone"    # Ljava/lang/String;
    .param p5, "voice"    # Z

    .prologue
    .line 12
    const-string v0, "auth.signup"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "first_name"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "last_name"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "sex"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    const-string v0, "phone"

    invoke-virtual {p0, v0, p4}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v0, "client_id"

    const v1, 0x22b2d3

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "client_secret"

    const-string v1, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    if-eqz p5, :cond_0

    const-string v0, "voice"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    :cond_0
    sget-object v0, Lcom/vkontakte/android/api/AuthSignup;->lastSid:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "sid"

    sget-object v1, Lcom/vkontakte/android/api/AuthSignup;->lastSid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/AuthSignup$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/AuthSignup$1;-><init>(Lcom/vkontakte/android/api/AuthSignup;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/AuthSignup;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 33
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/api/AuthSignup;->lastSid:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthSignup;->callback:Lcom/vkontakte/android/api/AuthSignup$Callback;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/vkontakte/android/api/AuthSignup;->callback:Lcom/vkontakte/android/api/AuthSignup$Callback;

    iget-object v0, p0, Lcom/vkontakte/android/api/AuthSignup;->params:Ljava/util/Hashtable;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/vkontakte/android/api/AuthSignup$Callback;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AuthSignup$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AuthSignup$Callback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/api/AuthSignup;->callback:Lcom/vkontakte/android/api/AuthSignup$Callback;

    .line 47
    return-object p0
.end method
