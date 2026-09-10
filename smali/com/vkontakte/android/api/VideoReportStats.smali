.class public Lcom/vkontakte/android/api/VideoReportStats;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoReportStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoReportStats$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoReportStats$Callback;


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "vid"    # I
    .param p3, "quality"    # I
    .param p4, "started"    # Z

    .prologue
    .line 11
    if-eqz p4, :cond_0

    const-string v0, "video.playStarted"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "video_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/VideoReportStats;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/VideoReportStats;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "act"

    const-string v1, "android_app_play"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoReportStats;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "quality"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/VideoReportStats;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    return-void

    .line 11
    :cond_0
    const-string v0, "video.incViewCounter"

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoReportStats;->callback:Lcom/vkontakte/android/api/VideoReportStats$Callback;

    if-nez v1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 36
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoReportStats;->callback:Lcom/vkontakte/android/api/VideoReportStats$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/VideoReportStats$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoReportStats;->callback:Lcom/vkontakte/android/api/VideoReportStats$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/VideoReportStats$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 23
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoReportStats$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoReportStats$Callback;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoReportStats;->callback:Lcom/vkontakte/android/api/VideoReportStats$Callback;

    .line 28
    return-object p0
.end method
