.class public Lcom/vkontakte/android/api/MessagesSend;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesSend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesSend$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesSend$Callback;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p5, "location"    # Lcom/vkontakte/android/GeoAttachment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkontakte/android/GeoAttachment;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .local p4, "fwdMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v3, 0x77359400

    .line 17
    const-string v0, "messages.send"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "device"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    if-ge p1, v3, :cond_4

    .line 21
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 25
    const-string v0, "message"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    :cond_0
    if-eqz p5, :cond_1

    .line 27
    const-string v0, "lat"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p5, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, p5, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 29
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 30
    const-string v0, "attachment"

    const-string v1, ","

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 32
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 33
    const-string v0, "forward_messages"

    const-string v1, ","

    invoke-static {v1, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 35
    :cond_3
    return-void

    .line 23
    :cond_4
    const-string v0, "chat_id"

    sub-int v1, p1, v3

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    if-nez v1, :cond_0

    .line 54
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 48
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 50
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/MessagesSend$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/MessagesSend$Callback;->success(I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "mid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    .end local v0    # "mid":I
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v1

    .line 43
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesSend$Callback;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    .line 58
    return-object p0
.end method
