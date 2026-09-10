.class public Lcom/vkontakte/android/api/BoardAddComment;
.super Lcom/vkontakte/android/APIRequest;
.source "BoardAddComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/BoardAddComment$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/4 v2, -0x1

    .line 16
    if-ne p2, v2, :cond_2

    const-string v0, "board.addTopic"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 19
    const-string v0, "attachments"

    const-string v1, ","

    invoke-static {v1, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/BoardAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    :cond_0
    if-ne p2, v2, :cond_1

    const-string v0, "title"

    invoke-virtual {p0, v0, p5}, Lcom/vkontakte/android/api/BoardAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    :cond_1
    return-void

    .line 16
    :cond_2
    const-string v0, "board.addComment"

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/vkontakte/android/api/BoardAddComment;->callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;

    if-nez v1, :cond_0

    .line 39
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 33
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 35
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/BoardAddComment;->callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/BoardAddComment$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 37
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/BoardAddComment;->callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/BoardAddComment$Callback;->success(I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardAddComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardAddComment$Callback;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardAddComment;->callback:Lcom/vkontakte/android/api/BoardAddComment$Callback;

    .line 43
    return-object p0
.end method
