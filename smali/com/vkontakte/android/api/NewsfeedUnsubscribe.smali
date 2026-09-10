.class public Lcom/vkontakte/android/api/NewsfeedUnsubscribe;
.super Lcom/vkontakte/android/APIRequest;
.source "NewsfeedUnsubscribe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "id"    # I
    .param p3, "type"    # I

    .prologue
    .line 12
    const-string v0, "newsfeed.unsubscribe"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    packed-switch p3, :pswitch_data_0

    .line 29
    const-string v0, "type"

    const-string v1, "post"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 32
    :goto_0
    return-void

    .line 16
    :pswitch_0
    const-string v0, "type"

    const-string v1, "photo"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 19
    :pswitch_1
    const-string v0, "type"

    const-string v1, "video"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 22
    :pswitch_2
    const-string v0, "type"

    const-string v1, "topic"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 25
    :pswitch_3
    const-string v0, "type"

    const-string v1, "note"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->callback:Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 52
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->callback:Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->callback:Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->callback:Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;

    .line 44
    return-object p0
.end method
