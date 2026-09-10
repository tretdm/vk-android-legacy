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
    .line 18
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

    const/4 v1, 0x3

    const/4 v2, 0x0

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
    .line 24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallAddComment;-><init>(IILjava/lang/String;IILjava/util/List;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "replyTo"    # I
    .param p5, "type"    # I
    .param p7, "accessKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Attachment;>;"
    const/4 v2, 0x0

    .line 28
    sget-object v1, Lcom/vkontakte/android/api/WallAddComment;->methods:[Ljava/lang/String;

    aget-object v1, v1, p5

    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 29
    iput p5, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    .line 31
    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    const/4 p4, 0x0

    .line 33
    :cond_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v1, :cond_1

    .line 34
    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/StickerAttachment;

    .line 35
    .local v0, "att":Lcom/vkontakte/android/StickerAttachment;
    new-instance p6, Ljava/util/ArrayList;

    .end local p6    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Attachment;>;"
    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .restart local p6    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Attachment;>;"
    const-string v1, "sticker_id"

    iget v2, v0, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 39
    .end local v0    # "att":Lcom/vkontakte/android/StickerAttachment;
    :cond_1
    if-nez p5, :cond_2

    .line 40
    const-string v1, "owner_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "post_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "reply_to_comment"

    invoke-virtual {v1, v2, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "attachments"

    const-string v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 42
    :cond_2
    const/4 v1, 0x1

    if-ne p5, v1, :cond_3

    .line 43
    const-string v1, "owner_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "photo_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "reply_to_comment"

    invoke-virtual {v1, v2, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "attachments"

    const-string v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 45
    :cond_3
    const/4 v1, 0x2

    if-ne p5, v1, :cond_4

    .line 46
    const-string v1, "owner_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "video_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "reply_to_comment"

    invoke-virtual {v1, v2, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "attachments"

    const-string v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 48
    :cond_4
    const/4 v1, 0x4

    if-ne p5, v1, :cond_5

    .line 49
    const-string v1, "group_id"

    neg-int v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "topic_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "text"

    const-string v3, "\\[id(\\d+)\\|([^\\]]+)\\]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[post"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|$2]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "attachments"

    const-string v3, ","

    invoke-static {v3, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 51
    :cond_5
    if-eqz p7, :cond_6

    .line 52
    const-string v1, "access_key"

    invoke-virtual {p0, v1, p7}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 53
    :cond_6
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    if-nez v1, :cond_0

    .line 81
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 75
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 77
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/WallAddComment$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 79
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
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    if-eqz v1, :cond_3

    .line 58
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    if-nez v1, :cond_0

    .line 59
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "comment_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 61
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 63
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 65
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallAddComment$Callback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    .line 85
    return-object p0
.end method
