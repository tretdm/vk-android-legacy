.class public Lcom/vkontakte/android/api/WallAddComment;
.super Lcom/vkontakte/android/APIRequest;
.source "WallAddComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallAddComment$Callback;
    }
.end annotation


# static fields
.field private static final methods:[Ljava/lang/String;


# instance fields
.field callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wall.addComment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photos.createComment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video.createComment"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "board.addComment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/api/WallAddComment;->methods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 8
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "replyTo"    # I
    .param p5, "type"    # I

    .prologue
    .line 16
    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallAddComment;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "replyTo"    # I
    .param p5, "type"    # I
    .param p6, "attachments"    # Ljava/lang/String;
    .param p7, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/vkontakte/android/api/WallAddComment;->methods:[Ljava/lang/String;

    aget-object v0, v0, p5

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    iput p5, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    .line 23
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x0

    .line 25
    :cond_0
    if-nez p5, :cond_1

    .line 26
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "reply_to_comment"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1, p6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 28
    :cond_1
    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    .line 29
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "reply_to_comment"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1, p6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 31
    :cond_2
    const/4 v0, 0x2

    if-ne p5, v0, :cond_3

    .line 32
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "reply_to_comment"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1, p6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 34
    :cond_3
    const/4 v0, 0x4

    if-ne p5, v0, :cond_4

    .line 35
    const-string v0, "group_id"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "text"

    const-string v2, "\\[id(\\d+)\\|([^\\]]+)\\]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[post"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|$2]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1, p6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 37
    :cond_4
    if-eqz p7, :cond_5

    .line 38
    const-string v0, "access_key"

    invoke-virtual {p0, v0, p7}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 39
    :cond_5
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    if-nez v1, :cond_0

    .line 67
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 61
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 63
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/WallAddComment$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/WallAddComment$Callback;->success(I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    if-eqz v1, :cond_3

    .line 44
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    if-nez v1, :cond_0

    .line 45
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "comment_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 46
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 47
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 48
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 49
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 51
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallAddComment$Callback;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    .line 71
    return-object p0
.end method
