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

.field private static final REQUEST_POST:Ljava/lang/String; = "var c=API.wall.getComments({owner_id:%1$d,post_id:%2$d,offset:%3$d,count:%4$d,need_likes:1});var p1=API.getProfiles({uids:c@.uid,fields:\"%5$s\"});var p2=API.getProfiles({uids:c@.reply_to_uid+c@.uid,name_case:\"dat\"});return {c:c,p1:p1,p2u:p2@.uid,p2n:p2@.first_name};"

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

    const-string v2, "var c=API.wall.getComments({owner_id:%1$d,post_id:%2$d,offset:%3$d,count:%4$d,need_likes:1});var p1=API.getProfiles({uids:c@.uid,fields:\"%5$s\"});var p2=API.getProfiles({uids:c@.reply_to_uid+c@.uid,name_case:\"dat\"});return {c:c,p1:p1,p2u:p2@.uid,p2n:p2@.first_name};"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "var c=API.photos.getComments({owner_id:%1$d,pid:%2$d,offset:%3$d,count:%4$d,sort:\"desc\"});var p=API.users.get({uids:c@.from_id,fields:\"%5$s\"});return {c:c,p1:p};"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "var c=API.video.getComments({owner_id:%1$d,vid:%2$d,offset:%3$d,count:%4$d,sort:\"desc\"});var p=API.users.get({uids:c@.from_id,fields:\"%5$s\"});return {c:c,p1:p};"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/api/WallGetComments;->requests:[Ljava/lang/String;

    .line 20
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
    .line 42
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "\\[id(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "\\[club(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn3:Ljava/util/regex/Pattern;

    .line 43
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

    .line 45
    iput p5, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    .line 47
    new-instance v0, Lcom/vkontakte/android/api/WallGetComments$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/WallGetComments$1;-><init>(Lcom/vkontakte/android/api/WallGetComments;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/WallGetComments;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 57
    return-void

    .line 43
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
    .line 98
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 99
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    const-string v3, "cid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 100
    const-string v3, "from_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 101
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "txt":Ljava/lang/String;
    const-string v3, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v4, "$2"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 103
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 104
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 105
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

    .line 106
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 107
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 109
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 110
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 115
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    return-object v0

    .line 111
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

    .line 112
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
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

    .line 117
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parsePostComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;
    .locals 8
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
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 60
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 61
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    const-string v3, "cid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 62
    const-string v3, "uid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 63
    const-string v3, "text"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "txt":Ljava/lang/String;
    const-string v3, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v5, "$3"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 65
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 66
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 67
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    .line 68
    const-string v3, "reply_to_uid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "reply_to_uid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    .line 69
    :cond_0
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v6, "date"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 70
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 71
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 73
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 74
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn3:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 84
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_4

    .line 89
    const-string v3, "likes"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const-string v3, "likes"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "count"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->numLikes:I

    .line 91
    const-string v3, "likes"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "user_likes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, v0, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    .line 94
    :cond_1
    return-object v0

    .line 75
    :cond_2
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vkontakte://profile/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_3
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vkontakte://profile/-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_4
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vklink://view/?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 91
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
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
    .line 123
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 124
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 125
    const-string v3, "from_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 126
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "txt":Ljava/lang/String;
    const-string v3, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v4, "$2"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 128
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 129
    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 130
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

    .line 131
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 132
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 134
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn2:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 135
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/vkontakte/android/api/WallGetComments;->ptn1:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 140
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    return-object v0

    .line 136
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

    .line 137
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
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

    .line 142
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 149
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v4, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v5, "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v7, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "c"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 154
    .local v2, "jcomments":Lorg/json/JSONArray;
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "p1"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 155
    .local v3, "jprofiles":Lorg/json/JSONArray;
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "p2u"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 156
    .local v8, "uids_dat":Lorg/json/JSONArray;
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "p2n"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 158
    .local v6, "ndat":Lorg/json/JSONArray;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 160
    .local v0, "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    if-nez v2, :cond_1

    .line 161
    iget-object v10, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v0}, Lcom/vkontakte/android/api/WallGetComments$Callback;->success(ILjava/util/Vector;)V

    .line 196
    .end local v0    # "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    .end local v2    # "jcomments":Lorg/json/JSONArray;
    .end local v3    # "jprofiles":Lorg/json/JSONArray;
    .end local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "ndat":Lorg/json/JSONArray;
    .end local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "uids_dat":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0    # "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    .restart local v2    # "jcomments":Lorg/json/JSONArray;
    .restart local v3    # "jprofiles":Lorg/json/JSONArray;
    .restart local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "names_dat":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "ndat":Lorg/json/JSONArray;
    .restart local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "uids_dat":Lorg/json/JSONArray;
    :cond_1
    if-eqz v3, :cond_2

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_7

    .line 171
    .end local v1    # "i":I
    :cond_2
    if-eqz v6, :cond_3

    .line 172
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_9

    .line 176
    .end local v1    # "i":I
    :cond_3
    iget v10, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    if-nez v10, :cond_4

    .line 177
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_a

    .line 181
    .end local v1    # "i":I
    :cond_4
    iget v10, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 182
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_4
    if-gtz v1, :cond_b

    .line 186
    .end local v1    # "i":I
    :cond_5
    iget v10, p0, Lcom/vkontakte/android/api/WallGetComments;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 187
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-gtz v1, :cond_c

    .line 191
    .end local v1    # "i":I
    :cond_6
    iget-object v10, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    if-eqz v10, :cond_0

    .line 192
    iget-object v10, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-interface {v10, v11, v0}, Lcom/vkontakte/android/api/WallGetComments$Callback;->success(ILjava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
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

    .line 194
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
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
    :cond_7
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

    .line 168
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "last_name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 167
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
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

    if-lez v10, :cond_8

    const-string v10, "photo_medium_rec"

    :goto_6
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 169
    :cond_8
    const-string v10, "photo_rec"

    goto :goto_6

    .line 173
    :cond_9
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 178
    :cond_a
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10, v4, v7, v5}, Lcom/vkontakte/android/api/WallGetComments;->parsePostComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 183
    :cond_b
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10, v4, v7}, Lcom/vkontakte/android/api/WallGetComments;->parsePhotoComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_4

    .line 188
    :cond_c
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10, v4, v7}, Lcom/vkontakte/android/api/WallGetComments;->parseVideoComment(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/vkontakte/android/NewsComment;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_5
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallGetComments$Callback;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGetComments;->callback:Lcom/vkontakte/android/api/WallGetComments$Callback;

    .line 200
    return-object p0
.end method
