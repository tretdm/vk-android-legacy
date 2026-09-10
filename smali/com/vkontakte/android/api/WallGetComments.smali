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
    .line 31
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
    .locals 6
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I

    .prologue
    .line 41
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "\\[id(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "\\[club(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn3:Ljava/util/regex/Pattern;

    .line 42
    const-string v1, "code"

    sget-object v0, Lcom/vkontakte/android/api/WallGetComments;->requests:[Ljava/lang/String;

    aget-object v2, v0, p5

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 44
    iput p5, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    .line 46
    new-instance v0, Lcom/vkontakte/android/api/WallGetComments$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/WallGetComments$1;-><init>(Lcom/vkontakte/android/api/WallGetComments;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/WallGetComments;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 56
    return-void

    .line 42
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method

.method private parsePhotoComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;
    .locals 6
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
    .line 104
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 105
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    const-string v3, "cid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 106
    const-string v3, "from_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 107
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "txt":Ljava/lang/String;
    const-string v3, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v4, "$2"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 109
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 110
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 111
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v5, "date"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 112
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 113
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 115
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 116
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 121
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    return-object v0

    .line 117
    :cond_0
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vkontakte://profile/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vklink://view/?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parsePostComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;
    .locals 11
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
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 59
    new-instance v1, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 60
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    const-string v5, "cid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 61
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 62
    const-string v5, "text"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "txt":Ljava/lang/String;
    const-string v5, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v8, "$3"

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 64
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 65
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 66
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    .line 67
    const-string v5, "reply_to_uid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "reply_to_uid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    .line 68
    :cond_0
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v9, "date"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5, v8}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 69
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 70
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 72
    iget-object v5, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 73
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_3

    .line 77
    iget-object v5, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn3:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 78
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    .line 82
    iget-object v5, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 83
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_5

    .line 88
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "count"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    .line 90
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "user_likes"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_3
    iput-boolean v5, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    .line 93
    :cond_1
    const-string v5, "attachments"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    const-string v5, "attachments"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 95
    .local v0, "atts":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_7

    .line 100
    .end local v0    # "atts":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 74
    :cond_3
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "vkontakte://profile/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_4
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "vkontakte://profile/-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 84
    :cond_5
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "vklink://view/?"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    move v5, v7

    .line 90
    goto/16 :goto_3

    .line 96
    .restart local v0    # "atts":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    :cond_7
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method

.method private parseVideoComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;
    .locals 6
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
    .line 129
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 130
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 131
    const-string v3, "from_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 132
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "txt":Ljava/lang/String;
    const-string v3, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v4, "$2"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 134
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 135
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 136
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v5, "date"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 137
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 138
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 140
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 141
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 146
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    return-object v0

    .line 142
    :cond_0
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vkontakte://profile/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vklink://view/?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v2, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    if-nez v2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 206
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 207
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/WallGetComments$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 209
    check-cast v1, [Ljava/lang/Object;

    .line 210
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/WallGetComments$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 155
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v4, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v5, "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v7, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "c"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 160
    .local v2, "jcomments":Lorg/json/JSONArray;
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "p1"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 161
    .local v3, "jprofiles":Lorg/json/JSONArray;
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "p2u"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 162
    .local v8, "uids_dat":Lorg/json/JSONArray;
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "p2n"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 164
    .local v6, "ndat":Lorg/json/JSONArray;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 166
    .local v0, "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    if-nez v2, :cond_0

    .line 167
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    .line 200
    .end local v0    # "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    .end local v2    # "jcomments":Lorg/json/JSONArray;
    .end local v3    # "jprofiles":Lorg/json/JSONArray;
    .end local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "ndat":Lorg/json/JSONArray;
    .end local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "uids_dat":Lorg/json/JSONArray;
    :goto_0
    return-object v10

    .line 170
    .restart local v0    # "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    .restart local v2    # "jcomments":Lorg/json/JSONArray;
    .restart local v3    # "jprofiles":Lorg/json/JSONArray;
    .restart local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "ndat":Lorg/json/JSONArray;
    .restart local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "uids_dat":Lorg/json/JSONArray;
    :cond_0
    if-eqz v3, :cond_1

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_6

    .line 176
    .end local v1    # "i":I
    :cond_1
    if-eqz v6, :cond_2

    .line 177
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_8

    .line 181
    .end local v1    # "i":I
    :cond_2
    iget v10, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    if-nez v10, :cond_3

    .line 182
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-gtz v1, :cond_9

    .line 186
    .end local v1    # "i":I
    :cond_3
    iget v10, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 187
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_4
    if-gtz v1, :cond_a

    .line 191
    .end local v1    # "i":I
    :cond_4
    iget v10, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 192
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-gtz v1, :cond_b

    .line 196
    .end local v1    # "i":I
    :cond_5
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0    # "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    .end local v2    # "jcomments":Lorg/json/JSONArray;
    .end local v3    # "jprofiles":Lorg/json/JSONArray;
    .end local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "ndat":Lorg/json/JSONArray;
    .end local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "uids_dat":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 198
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    const/4 v10, 0x0

    goto :goto_0

    .line 172
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v0    # "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    .restart local v1    # "i":I
    .restart local v2    # "jcomments":Lorg/json/JSONArray;
    .restart local v3    # "jprofiles":Lorg/json/JSONArray;
    .restart local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "ndat":Lorg/json/JSONArray;
    .restart local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "uids_dat":Lorg/json/JSONArray;
    :cond_6
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "uid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "first_name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 173
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "last_name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 172
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "uid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v13

    if-lez v10, :cond_7

    const-string v10, "photo_medium_rec"

    :goto_6
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 174
    :cond_7
    const-string v10, "photo_rec"

    goto :goto_6

    .line 178
    :cond_8
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 183
    :cond_9
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10, v4, v7, v5}, Lcom/vkontakte/android/api/WallGetComments;->parsePostComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3

    .line 188
    :cond_a
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10, v4, v7}, Lcom/vkontakte/android/api/WallGetComments;->parsePhotoComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_4

    .line 193
    :cond_b
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10, v4, v7}, Lcom/vkontakte/android/api/WallGetComments;->parseVideoComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_5
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallGetComments$Callback;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    .line 216
    return-object p0
.end method
