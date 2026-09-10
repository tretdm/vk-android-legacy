.class public Lcom/vkontakte/android/api/VoipHangup;
.super Lcom/vkontakte/android/APIRequest;
.source "VoipHangup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VoipHangup$Callback;
    }
.end annotation


# static fields
.field public static REASON_BUSY:I

.field public static REASON_NETWORK_ERROR:I

.field public static REASON_TIMEOUT:I

.field public static REASON_USER_NOT_REPLIED:I

.field public static REASON_USER_REPLIED:I


# instance fields
.field callback:Lcom/vkontakte/android/api/VoipHangup$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/api/VoipHangup;->REASON_USER_REPLIED:I

    .line 11
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/api/VoipHangup;->REASON_USER_NOT_REPLIED:I

    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/api/VoipHangup;->REASON_BUSY:I

    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/api/VoipHangup;->REASON_NETWORK_ERROR:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/api/VoipHangup;->REASON_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "callID"    # I
    .param p2, "fromID"    # I
    .param p3, "reason"    # I

    .prologue
    .line 19
    const-string v0, "voip.hangup"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "call_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/VoipHangup;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "from_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/VoipHangup;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    const-string v0, "reason"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VoipHangup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/vkontakte/android/api/VoipHangup;->callback:Lcom/vkontakte/android/api/VoipHangup$Callback;

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 44
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/VoipHangup;->callback:Lcom/vkontakte/android/api/VoipHangup$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/VoipHangup$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/VoipHangup;->callback:Lcom/vkontakte/android/api/VoipHangup$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/VoipHangup$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/VoipHangup$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VoipHangup$Callback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/api/VoipHangup;->callback:Lcom/vkontakte/android/api/VoipHangup$Callback;

    .line 36
    return-object p0
.end method
