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
.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;I)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p5, "location"    # Lcom/vkontakte/android/GeoAttachment;
    .param p6, "tmpId"    # I
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
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .local p4, "fwdMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v5, 0x77359400

    .line 20
    const-string v2, "messages.send"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v2, "device"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    if-ge p1, v5, :cond_6

    .line 24
    const-string v2, "user_id"

    invoke-virtual {p0, v2, p1}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 27
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 28
    const-string v2, "message"

    invoke-virtual {p0, v2, p2}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 29
    :cond_0
    if-eqz p5, :cond_1

    .line 30
    const-string v2, "lat"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p5, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    const-string v3, "long"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v5, p5, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 32
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 33
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 43
    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 44
    const-string v2, "attachment"

    const-string v3, ","

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 46
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 47
    const-string v2, "forward_messages"

    const-string v3, ","

    invoke-static {v3, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 51
    :cond_5
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    sget-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    xor-int/2addr p6, v2

    .line 53
    :goto_2
    const-string v2, "guid"

    invoke-virtual {p0, v2, p6}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 54
    return-void

    .line 26
    :cond_6
    const-string v2, "chat_id"

    sub-int v3, p1, v5

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 33
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "att":Ljava/lang/Object;
    instance-of v3, v0, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v3, :cond_2

    .line 35
    const-string v3, "sticker_id"

    move-object v2, v0

    check-cast v2, Lcom/vkontakte/android/StickerAttachment;

    iget v2, v2, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p0, v3, v2}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 36
    const-string v2, "method"

    const-string v3, "messages.sendSticker"

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 37
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    .end local v0    # "att":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    if-nez v1, :cond_0

    .line 73
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 67
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 69
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/MessagesSend$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 71
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
    .line 58
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "mid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    .end local v0    # "mid":I
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v1

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesSend$Callback;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesSend;->callback:Lcom/vkontakte/android/api/MessagesSend$Callback;

    .line 77
    return-object p0
.end method
