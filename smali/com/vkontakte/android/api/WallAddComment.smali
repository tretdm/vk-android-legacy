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
    .line 9
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

    .line 8
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 5
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "replyTo"    # I
    .param p5, "type"    # I

    .prologue
    .line 15
    sget-object v0, Lcom/vkontakte/android/api/WallAddComment;->methods:[Ljava/lang/String;

    aget-object v0, v0, p5

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    iput p5, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    .line 18
    if-nez p5, :cond_0

    .line 19
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "reply_to_cid"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 22
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "reply_to_cid"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    :cond_1
    const/4 v0, 0x2

    if-ne p5, v0, :cond_2

    .line 25
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "reply_to_cid"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 27
    :cond_2
    const/4 v0, 0x4

    if-ne p5, v0, :cond_3

    .line 28
    const-string v0, "gid"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "tid"

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

    .line 30
    :cond_3
    new-instance v0, Lcom/vkontakte/android/api/WallAddComment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/WallAddComment$1;-><init>(Lcom/vkontakte/android/api/WallAddComment;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/WallAddComment;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 40
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    if-eqz v0, :cond_3

    .line 45
    iget v0, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/api/WallAddComment$Callback;->success(I)V

    .line 47
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/api/WallAddComment$Callback;->success(I)V

    .line 49
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/api/WallAddComment$Callback;->success(I)V

    .line 51
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/api/WallAddComment;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/api/WallAddComment$Callback;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_3
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallAddComment$Callback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/api/WallAddComment;->callback:Lcom/vkontakte/android/api/WallAddComment$Callback;

    .line 60
    return-object p0
.end method
