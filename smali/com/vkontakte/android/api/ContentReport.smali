.class public Lcom/vkontakte/android/api/ContentReport;
.super Lcom/vkontakte/android/APIRequest;
.source "ContentReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/ContentReport$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/ContentReport$Callback;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1
    .param p1, "ownerID"    # I
    .param p2, "itemID"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "reason"    # I

    .prologue
    .line 11
    const-string v0, "execute.reportContent"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/ContentReport;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "item_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/ContentReport;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "type"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/ContentReport;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "reason"

    invoke-virtual {p0, v0, p4}, Lcom/vkontakte/android/api/ContentReport;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/vkontakte/android/api/ContentReport;->callback:Lcom/vkontakte/android/api/ContentReport$Callback;

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
    iget-object v1, p0, Lcom/vkontakte/android/api/ContentReport;->callback:Lcom/vkontakte/android/api/ContentReport$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/ContentReport$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/ContentReport;->callback:Lcom/vkontakte/android/api/ContentReport$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/ContentReport$Callback;->success()V

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

.method public setCallback(Lcom/vkontakte/android/api/ContentReport$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/ContentReport$Callback;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vkontakte/android/api/ContentReport;->callback:Lcom/vkontakte/android/api/ContentReport$Callback;

    .line 28
    return-object p0
.end method
