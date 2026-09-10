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
.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "attachments"    # [Ljava/lang/String;
    .param p4, "location"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    const v6, 0x77359400

    .line 17
    const-string v3, "messages.send"

    invoke-direct {p0, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v3, "device"

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    if-ge p1, v6, :cond_3

    .line 20
    const-string v3, "uid"

    invoke-virtual {p0, v3, p1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    :goto_0
    const-string v3, "message"

    invoke-virtual {p0, v3, p2}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 24
    if-eqz p4, :cond_0

    .line 25
    const-string v3, "lat"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v5, p4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const-string v4, "long"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-wide v6, p4, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 27
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v2, "fwd_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    .line 30
    const-string v1, ""

    .line 31
    .local v1, "att":Ljava/lang/String;
    array-length v4, p3

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_4

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 39
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v3, "attachment"

    invoke-virtual {p0, v3, v1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 42
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 43
    const-string v3, "forward_messages"

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 47
    .end local v1    # "att":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/vkontakte/android/api/MessagesSend$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/api/MessagesSend$1;-><init>(Lcom/vkontakte/android/api/MessagesSend;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/api/MessagesSend;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 57
    return-void

    .line 22
    .end local v2    # "fwd_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v3, "chat_id"

    sub-int v4, p1, v6

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 31
    .restart local v1    # "att":Ljava/lang/String;
    .restart local v2    # "fwd_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    aget-object v0, p3, v3

    .line 32
    .local v0, "a":Ljava/lang/String;
    const-string v5, "fwd"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 33
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    if-nez v1, :cond_0

    .line 76
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 70
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 72
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/MessagesSend$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 74
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
    .line 61
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "mid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    .end local v0    # "mid":I
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v1

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesSend$Callback;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    .line 80
    return-object p0
.end method
