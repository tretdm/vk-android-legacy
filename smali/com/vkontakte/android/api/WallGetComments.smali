.class public Lcom/vkontakte/android/api/WallGetComments;
.super Lcom/vkontakte/android/APIRequest;
.source "WallGetComments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallGetComments$Callback;
    }
.end annotation


# static fields
.field private static final REQUEST_PHOTO:Ljava/lang/String; = "var c=API.photos.getComments({owner_id:%1$d,pid:%2$d,offset:%3$d,count:%4$d,sort:\"desc\"});var p=API.users.get({uids:c@.from_id,fields:\"%5$s\"});return {c:c,p1:p};"

.field private static final REQUEST_POST:Ljava/lang/String; = "var c=API.wall.getComments({owner_id:%1$d,post_id:%2$d,offset:%3$d,count:%4$d,need_likes:1,sort:\"desc\",photo_sizes:1});var p1=API.getProfiles({uids:c@.uid,fields:\"%5$s\"});var p2=API.getProfiles({uids:c@.reply_to_uid+c@.uid,name_case:\"dat\"});return {c:c,p1:p1,p2u:p2@.uid,p2n:p2@.first_name};"

.field private static final REQUEST_VIDEO:Ljava/lang/String; = "var c=API.video.getComments({owner_id:%1$d,vid:%2$d,offset:%3$d,count:%4$d,sort:\"desc\"});var p=API.users.get({uids:c@.from_id,fields:\"%5$s\"});return {c:c,p1:p};"

.field private static final requests:[Ljava/lang/String;


# instance fields
.field callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

.field ptn1:Ljava/util/regex/Pattern;

.field ptn2:Ljava/util/regex/Pattern;

.field ptn3:Ljava/util/regex/Pattern;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "var c=API.wall.getComments({owner_id:%1$d,post_id:%2$d,offset:%3$d,count:%4$d,need_likes:1,sort:\"desc\",photo_sizes:1});var p1=API.getProfiles({uids:c@.uid,fields:\"%5$s\"});var p2=API.getProfiles({uids:c@.reply_to_uid+c@.uid,name_case:\"dat\"});return {c:c,p1:p1,p2u:p2@.uid,p2n:p2@.first_name};"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "var c=API.photos.getComments({owner_id:%1$d,pid:%2$d,offset:%3$d,count:%4$d,sort:\"desc\"});var p=API.users.get({uids:c@.from_id,fields:\"%5$s\"});return {c:c,p1:p};"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "var c=API.video.getComments({owner_id:%1$d,vid:%2$d,offset:%3$d,count:%4$d,sort:\"desc\"});var p=API.users.get({uids:c@.from_id,fields:\"%5$s\"});return {c:c,p1:p};"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/api/WallGetComments;->requests:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I

    .prologue
    .line 43
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallGetComments;-><init>(IIIIIZLjava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(IIIIIZLjava/lang/String;)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "needLikes"    # Z
    .param p7, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "execute.getCommentsNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "\\[id(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "\\[club(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn3:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 51
    const-string v0, "item_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 52
    const-string v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 53
    const-string v0, "count"

    invoke-virtual {p0, v0, p4}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 54
    packed-switch p5, :pswitch_data_0

    .line 63
    const-string v0, "type"

    const-string v1, "post"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 66
    :goto_0
    if-eqz p6, :cond_0

    const-string v0, "need_likes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 67
    :cond_0
    if-eqz p7, :cond_1

    .line 68
    const-string v0, "access_key"

    invoke-virtual {p0, v0, p7}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 69
    :cond_1
    iput p5, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    .line 70
    return-void

    .line 56
    :pswitch_0
    const-string v0, "type"

    const-string v1, "photo"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "type"

    const-string v1, "video"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parsePostComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;
    .locals 10
    .param p1, "jc"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vkontakte/android/NewsComment;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p4, "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 73
    new-instance v1, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 74
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 75
    const-string v5, "from_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 76
    const-string v5, "text"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "txt":Ljava/lang/String;
    iput-object v4, v1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 79
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 80
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 81
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    .line 82
    const-string v5, "reply_to_user"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "reply_to_user"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    .line 83
    :cond_0
    sget v5, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v7, "date"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v1, Lcom/vkontakte/android/NewsComment;->time:I

    .line 84
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 85
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 87
    iget-object v5, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 88
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    iget-object v5, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn3:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 93
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    .line 97
    iget-object v5, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 98
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_5

    .line 103
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    .line 105
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "user_likes"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_3
    iput-boolean v5, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    .line 108
    :cond_1
    const-string v5, "attachments"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    const-string v5, "attachments"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 110
    .local v0, "atts":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_7

    .line 113
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 116
    .end local v0    # "atts":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 89
    :cond_3
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "vkontakte://profile/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 94
    :cond_4
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "vkontakte://profile/-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 99
    :cond_5
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "vklink://view/?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 105
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 111
    .restart local v0    # "atts":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    :cond_7
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 173
    check-cast v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 174
    .local v6, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    iget v1, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v2, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/WallGetComments$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v6    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v7, p1

    .line 176
    check-cast v7, [Ljava/lang/Object;

    .line 177
    .local v7, "r":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGetComments$Callback;->success(ILjava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 22
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 121
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v10, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v11, "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v14, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "c"

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    .line 125
    .local v4, "jcc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 126
    .local v5, "jcomments":Lorg/json/JSONArray;
    :goto_0
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "p1"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 127
    .local v6, "jprofiles":Lorg/json/JSONArray;
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "p2u"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 128
    .local v15, "uids_dat":Lorg/json/JSONArray;
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "p2n"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 130
    .local v12, "ndat":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v7, "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "likes"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 134
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "likes"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 135
    .local v8, "lp":Lorg/json/JSONArray;
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "my_photo"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "myPhoto":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_2

    .line 141
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    .end local v3    # "i":I
    .end local v8    # "lp":Lorg/json/JSONArray;
    .end local v9    # "myPhoto":Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_4

    .line 145
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v2, v17, v18

    const/16 v18, 0x2

    aput-object v7, v17, v18

    const/16 v18, 0x3

    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "likes_count"

    const/16 v21, -0x1

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    .line 165
    .end local v2    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    .end local v4    # "jcc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v5    # "jcomments":Lorg/json/JSONArray;
    .end local v6    # "jprofiles":Lorg/json/JSONArray;
    .end local v7    # "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "ndat":Lorg/json/JSONArray;
    .end local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "uids_dat":Lorg/json/JSONArray;
    :goto_2
    return-object v17

    .line 125
    .restart local v4    # "jcc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v11    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 137
    .restart local v2    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    .restart local v3    # "i":I
    .restart local v5    # "jcomments":Lorg/json/JSONArray;
    .restart local v6    # "jprofiles":Lorg/json/JSONArray;
    .restart local v7    # "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "lp":Lorg/json/JSONArray;
    .restart local v9    # "myPhoto":Ljava/lang/String;
    .restart local v12    # "ndat":Lorg/json/JSONArray;
    .restart local v15    # "uids_dat":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, "p":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 136
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 163
    .end local v2    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    .end local v3    # "i":I
    .end local v4    # "jcc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v5    # "jcomments":Lorg/json/JSONArray;
    .end local v6    # "jprofiles":Lorg/json/JSONArray;
    .end local v7    # "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "lp":Lorg/json/JSONArray;
    .end local v9    # "myPhoto":Ljava/lang/String;
    .end local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "ndat":Lorg/json/JSONArray;
    .end local v13    # "p":Ljava/lang/String;
    .end local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "uids_dat":Lorg/json/JSONArray;
    :catch_0
    move-exception v16

    .line 164
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    new-instance v17, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/16 v18, 0x0

    const-string v19, "parse error"

    invoke-direct/range {v17 .. v19}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v2    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    .restart local v4    # "jcc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v5    # "jcomments":Lorg/json/JSONArray;
    .restart local v6    # "jprofiles":Lorg/json/JSONArray;
    .restart local v7    # "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v11    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v12    # "ndat":Lorg/json/JSONArray;
    .restart local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15    # "uids_dat":Lorg/json/JSONArray;
    :cond_4
    if-eqz v6, :cond_5

    .line 149
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_7

    .line 154
    .end local v3    # "i":I
    :cond_5
    if-eqz v12, :cond_6

    .line 155
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_9

    .line 158
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    .restart local v3    # "i":I
    :goto_6
    if-gez v3, :cond_a

    .line 162
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "c"

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v2, v17, v18

    const/16 v18, 0x2

    aput-object v7, v17, v18

    const/16 v18, 0x3

    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "likes_count"

    const/16 v21, -0x1

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    goto/16 :goto_2

    .line 150
    :cond_7
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "first_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 151
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "last_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 150
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v20

    if-lez v17, :cond_8

    const-string v17, "photo_medium_rec"

    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 152
    :cond_8
    const-string v17, "photo_rec"

    goto :goto_7

    .line 156
    :cond_9
    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 159
    :cond_a
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10, v14, v11}, Lcom/vkontakte/android/api/WallGetComments;->parsePostComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_6
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallGetComments$Callback;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    .line 183
    return-object p0
.end method
