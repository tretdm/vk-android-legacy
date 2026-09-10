.class public Lcom/vkontakte/android/api/GetWallInfo;
.super Lcom/vkontakte/android/APIRequest;
.source "GetWallInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetWallInfo$Callback;
    }
.end annotation


# static fields
.field public static final COUNTER_ALBUMS:I = 0x2

.field public static final COUNTER_AUDIOS:I = 0x3

.field public static final COUNTER_DOCS:I = 0xc

.field public static final COUNTER_FOLLOWERS:I = 0xe

.field public static final COUNTER_FRIENDS:I = 0x6

.field public static final COUNTER_GROUPS:I = 0x8

.field public static final COUNTER_GROUP_MEMBERS:I = 0xb

.field public static final COUNTER_GROUP_TOPICS:I = 0xa

.field public static final COUNTER_GROUP_WIKI:I = 0xd

.field public static final COUNTER_MUTUAL_FRIENDS:I = 0x7

.field public static final COUNTER_NOTES:I = 0x9

.field public static final COUNTER_PHOTOS:I = 0x0

.field public static final COUNTER_USER_PHOTOS:I = 0x1

.field public static final COUNTER_USER_VIDEOS:I = 0x5

.field public static final COUNTER_VIDEOS:I = 0x4

.field private static final GROUP_CODE:Ljava/lang/String; = "var g=%1$d;var gi=API.groups.getById({gid:g,extended:1,fields:\"place,wiki_page,city,country,description,start_date,finish_date,site\"})[0];var ph=API.photos.getAll({owner_id:-g,count:25,photo_sizes:1});return {info: gi+API.isGroupMember({gid:g,extended:1}), photos: ph, nmem: API.groups.getMembers({gid:g,count:0}).count,nvid: API.video.get({gid:g,count:1})[0], nalb: API.photos.getAlbumsCount({gid:g}), ndoc: API.docs.get({oid:-g,count:1})[0], ntop: API.board.getTopics({gid:g,count:1}).topics[0], naud: API.audio.getCount({oid:-g}), city: API.places.getCityById({cids:gi.city})[0].name, country: API.places.getCountryById({cids:gi.country})[0].name, status:API.status.get({uid:-g})};"

.field private static final USER_CODE:Ljava/lang/String; = "var u=API.users.get({uids:%1$d,fields:\"%2$s,online,can_post,education,city,counters,relation,sex,bdate,contacts,activity,can_see_all_posts,can_write_private_message,can_call,is_friend\",relation_case:\"def\"})[0];var p=API.photos.getAll({owner_id:%1$d,count:25,photo_sizes:1}); var stat=API.status.get({uid:%1$d}); if(stat.audio+\"\"!=\"\"){u=u+{audio:stat.audio};}return u+{name:u.first_name+\" \"+u.last_name, photo:u.%2$s,city:API.getCities({cids:u.city})[0].name, photos:p, name1:API.users.get({uid:%1$d,name_case:\"ins\"})[0].first_name,name2:API.users.get({uid:%1$d,name_case:\"gen\"})[0].first_name, ngroups:API.groups.get({extended:1,uid:%1$d})[0]};"

.field private static final USER_SELF_CODE:Ljava/lang/String; = "var u=API.users.get({uids:%1$d,fields:\"%2$s,online,can_post,education,city,counters,relation,sex,bdate,contacts,activity,can_see_all_posts,timezone\",relation_case:\"def\"});var p=API.photos.getAll({owner_id:%1$d,count:25,photo_sizes:1});return u[0]+{name:u[0].first_name+\" \"+u[0].last_name, photo:u[0].%2$s,city:API.getCities({cids:u[0].city})[0].name, photos:p, name1:API.users.get({uid:%1$d,name_case:\"ins\"})[0].first_name,name2:API.users.get({uid:%1$d,name_case:\"gen\"})[0].first_name, ngroups:API.groups.get({extended:1,uid:%1$d})[0], time: API.getServerTime()};"


# instance fields
.field callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

.field private id:I


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/vkontakte/android/api/GetWallInfo;->id:I

    .line 58
    if-lez p1, :cond_1

    .line 59
    const-string v1, "code"

    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-ne p1, v0, :cond_0

    const-string v0, "var u=API.users.get({uids:%1$d,fields:\"%2$s,online,can_post,education,city,counters,relation,sex,bdate,contacts,activity,can_see_all_posts,timezone\",relation_case:\"def\"});var p=API.photos.getAll({owner_id:%1$d,count:25,photo_sizes:1});return u[0]+{name:u[0].first_name+\" \"+u[0].last_name, photo:u[0].%2$s,city:API.getCities({cids:u[0].city})[0].name, photos:p, name1:API.users.get({uid:%1$d,name_case:\"ins\"})[0].first_name,name2:API.users.get({uid:%1$d,name_case:\"gen\"})[0].first_name, ngroups:API.groups.get({extended:1,uid:%1$d})[0], time: API.getServerTime()};"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "photo_medium_rec"

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/GetWallInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 62
    :goto_1
    const-string v1, "vk"

    iget-object v0, p0, Lcom/vkontakte/android/api/GetWallInfo;->params:Ljava/util/Hashtable;

    const-string v2, "code"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/vkontakte/android/api/GetWallInfo$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GetWallInfo$1;-><init>(Lcom/vkontakte/android/api/GetWallInfo;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GetWallInfo;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 74
    return-void

    .line 59
    :cond_0
    const-string v0, "var u=API.users.get({uids:%1$d,fields:\"%2$s,online,can_post,education,city,counters,relation,sex,bdate,contacts,activity,can_see_all_posts,can_write_private_message,can_call,is_friend\",relation_case:\"def\"})[0];var p=API.photos.getAll({owner_id:%1$d,count:25,photo_sizes:1}); var stat=API.status.get({uid:%1$d}); if(stat.audio+\"\"!=\"\"){u=u+{audio:stat.audio};}return u+{name:u.first_name+\" \"+u.last_name, photo:u.%2$s,city:API.getCities({cids:u.city})[0].name, photos:p, name1:API.users.get({uid:%1$d,name_case:\"ins\"})[0].first_name,name2:API.users.get({uid:%1$d,name_case:\"gen\"})[0].first_name, ngroups:API.groups.get({extended:1,uid:%1$d})[0]};"

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "code"

    const-string v1, "var g=%1$d;var gi=API.groups.getById({gid:g,extended:1,fields:\"place,wiki_page,city,country,description,start_date,finish_date,site\"})[0];var ph=API.photos.getAll({owner_id:-g,count:25,photo_sizes:1});return {info: gi+API.isGroupMember({gid:g,extended:1}), photos: ph, nmem: API.groups.getMembers({gid:g,count:0}).count,nvid: API.video.get({gid:g,count:1})[0], nalb: API.photos.getAlbumsCount({gid:g}), ndoc: API.docs.get({oid:-g,count:1})[0], ntop: API.board.getTopics({gid:g,count:1}).topics[0], naud: API.audio.getCount({oid:-g}), city: API.places.getCityById({cids:gi.city})[0].name, country: API.places.getCountryById({cids:gi.country})[0].name, status:API.status.get({uid:-g})};"

    new-array v2, v5, [Ljava/lang/Object;

    neg-int v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetWallInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private parsePhotos(Lorg/json/JSONArray;)[Lcom/vkontakte/android/Photo;
    .locals 13
    .param p1, "ph"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 77
    new-array v5, v12, [Lcom/vkontakte/android/Photo;

    .line 78
    .local v5, "photos":[Lcom/vkontakte/android/Photo;
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    new-array v5, v10, [Lcom/vkontakte/android/Photo;

    .line 80
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v0, v10, :cond_1

    .line 116
    .end local v0    # "i":I
    :cond_0
    return-object v5

    .line 81
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 82
    .local v3, "jp":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/Photo;

    invoke-direct {v4}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 83
    .local v4, "photo":Lcom/vkontakte/android/Photo;
    const-string v10, "aid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/vkontakte/android/Photo;->albumID:I

    .line 84
    const-string v10, "pid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/vkontakte/android/Photo;->id:I

    .line 85
    sget v10, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v11, "created"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v4, Lcom/vkontakte/android/Photo;->date:I

    .line 86
    const-string v10, "text"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 87
    const-string v10, "owner_id"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 93
    const-string v10, "sizes"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 94
    .local v6, "sizes":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "srcY":Ljava/lang/String;
    const/4 v7, 0x0

    .line 95
    .local v7, "srcX":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v2, v10, :cond_5

    .line 107
    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_2

    sget-boolean v10, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v10, :cond_a

    .line 108
    :cond_2
    if-eqz v8, :cond_9

    .end local v8    # "srcY":Ljava/lang/String;
    :goto_2
    iput-object v8, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 111
    :goto_3
    iget-object v10, v4, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://vkontakte.ru"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 112
    :cond_3
    iget-object v10, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://vkontakte.ru"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 113
    :cond_4
    add-int/lit8 v10, v0, -0x1

    aput-object v4, v5, v10

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 96
    .restart local v8    # "srcY":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 97
    .local v9, "sz":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v1}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 98
    .local v1, "im":Lcom/vkontakte/android/Photo$Image;
    const-string v10, "type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    iput-char v10, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 99
    const-string v10, "src"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 100
    const-string v10, "width"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 101
    const-string v10, "height"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 102
    iget-object v10, v4, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-char v10, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v11, 0x79

    if-ne v10, v11, :cond_6

    iget-object v8, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 104
    :cond_6
    iget-char v10, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    iget-object v7, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 105
    :cond_7
    iget-char v10, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v11, 0x6d

    if-ne v10, v11, :cond_8

    iget-object v10, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v10, v4, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 95
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v1    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v9    # "sz":Lorg/json/JSONObject;
    :cond_9
    move-object v8, v7

    .line 108
    goto/16 :goto_2

    .line 110
    :cond_a
    iput-object v7, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    goto/16 :goto_3
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 15
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 290
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object/from16 v12, p1

    .line 291
    check-cast v12, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 292
    .local v12, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    iget v2, v12, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v12, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetWallInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v12    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 296
    .local v13, "r":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    const/4 v2, 0x0

    aget-object v2, v13, v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v13, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v13, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v13, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v13, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v13, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x7

    aget-object v9, v13, v9

    check-cast v9, [Lcom/vkontakte/android/Photo;

    const/16 v10, 0x8

    aget-object v10, v13, v10

    check-cast v10, [I

    const/16 v11, 0x9

    aget-object v11, v13, v11

    check-cast v11, Ljava/util/HashMap;

    invoke-interface/range {v1 .. v11}, Lcom/vkontakte/android/api/GetWallInfo$Callback;->success([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Lcom/vkontakte/android/Photo;[ILjava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v13    # "r":[Ljava/lang/Object;
    :catch_0
    move-exception v14

    .line 298
    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetWallInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 34
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 121
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1f

    .line 122
    const-string v29, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetWallInfo;->id:I

    move/from16 v29, v0

    if-lez v29, :cond_2b

    .line 124
    const-string v27, ""

    .line 125
    .local v27, "university":Ljava/lang/String;
    const-string v29, "university_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "university_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_0

    const-string v29, "university_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_0

    .line 126
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "university_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 127
    :cond_0
    const-string v29, "graduation"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "graduation"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1

    const-string v29, "graduation"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    .line 128
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "graduation"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v31, "graduation"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x2

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 129
    :cond_1
    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Lcom/vkontakte/android/Photo;

    move-object/from16 v20, v0

    .line 130
    .local v20, "photos":[Lcom/vkontakte/android/Photo;
    const/16 v29, 0xf

    move/from16 v0, v29

    new-array v7, v0, [I

    .line 132
    .local v7, "cnt":[I
    const-string v29, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 133
    .local v19, "ph":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GetWallInfo;->parsePhotos(Lorg/json/JSONArray;)[Lcom/vkontakte/android/Photo;

    move-result-object v20

    .line 136
    const-string v29, "counters"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 137
    .local v8, "counters":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    .line 138
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 139
    .local v15, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_16

    .line 152
    .end local v15    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    const/16 v29, 0x8

    const-string v30, "ngroups"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    aput v30, v7, v29

    .line 153
    if-eqz v19, :cond_4

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v30

    aput v30, v7, v29

    .line 155
    :cond_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v11, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v29, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 157
    const-string v29, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "\\."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "bd":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v5, v4, v29
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v5, "bdate":Ljava/lang/String;
    const/16 v29, 0x1

    :try_start_1
    aget-object v29, v4, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 161
    .local v16, "month":I
    const/16 v29, 0xd

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_20

    if-lez v16, :cond_20

    .line 162
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a0001

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    add-int/lit8 v31, v16, -0x1

    aget-object v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 169
    .end local v16    # "month":I
    :goto_1
    :try_start_2
    array-length v0, v4

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x2

    aget-object v30, v4, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    :cond_5
    const-string v29, "bdate"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v4    # "bd":[Ljava/lang/String;
    .end local v5    # "bdate":Ljava/lang/String;
    :cond_6
    const-string v29, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    const-string v29, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    if-lez v29, :cond_8

    .line 173
    const-string v29, "sex"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 174
    .local v25, "sx":I
    const-string v29, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 175
    .local v18, "partner":Lorg/json/JSONObject;
    if-nez v18, :cond_22

    .line 176
    if-eqz v25, :cond_7

    const/16 v29, 0x2

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    :cond_7
    const-string v29, "relation"

    sget-object v30, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a0011

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    const-string v31, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    aget-object v30, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v18    # "partner":Lorg/json/JSONObject;
    .end local v25    # "sx":I
    :cond_8
    :goto_2
    const-string v29, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    const-string v29, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_9

    const-string v29, "mphone"

    const-string v30, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_9
    const-string v29, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    const-string v29, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_a

    const-string v29, "hphone"

    const-string v30, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_a
    const-string v29, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    const-string v29, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_b

    const-string v29, "activity"

    const-string v30, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_c

    const-string v29, "education"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_c
    const-string v29, "faculty_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    const-string v29, "faculty_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_d

    const-string v29, "faculty"

    const-string v30, "faculty_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v31, "\r"

    const-string v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    const-string v31, "\n"

    const-string v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_d
    const-string v29, "can_write_private_message"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    const-string v29, "_can_write_msg"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_e
    const-string v29, "can_call"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    const-string v29, "_can_call"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_f
    const-string v29, "is_friend"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    const-string v29, "_is_friend"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_10
    const-string v29, "_can_see_all_posts"

    const-string v30, "can_see_all_posts"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v29, "time"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    const-string v29, "_time"

    const-string v30, "time"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_11
    const-string v29, "timezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    const-string v29, "_timezone"

    const-string v30, "timezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_12
    const-string v12, ""

    .line 200
    .local v12, "info1":Ljava/lang/String;
    const-string v29, "activity"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_25

    const-string v29, "activity"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "info1":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 204
    .restart local v12    # "info1":Ljava/lang/String;
    :goto_3
    const-string v29, "sex"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    const-string v29, "_f"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_13
    const-string v29, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 206
    const-string v29, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 207
    .local v3, "audio":Lorg/json/JSONObject;
    const-string v29, "_audio_oid"

    const-string v30, "owner_id"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v29, "_audio_aid"

    const-string v30, "aid"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v29, "_audio_artist"

    const-string v30, "artist"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v29, "_audio_title"

    const-string v30, "title"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v29, "_audio_duration"

    const-string v30, "duration"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v29, "_audio_url"

    const-string v30, "url"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v3    # "audio":Lorg/json/JSONObject;
    :cond_14
    const/16 v29, 0xa

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "name1"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string v33, "name2"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "photo"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    aput-object v12, v29, v30

    const/16 v31, 0x3

    const-string v30, "activity"

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_15

    const-string v30, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_27

    :cond_15
    const-string v30, ""

    :goto_4
    aput-object v30, v29, v31

    const/16 v31, 0x4

    const-string v30, "online"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_28

    const/16 v30, 0x1

    :goto_5
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v29, v31

    const/16 v31, 0x5

    const-string v30, "can_post"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_29

    const/16 v30, 0x1

    :goto_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v29, v31

    const/16 v31, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetWallInfo;->id:I

    move/from16 v30, v0

    sget v32, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_2a

    const/16 v30, 0x1

    :goto_7
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v29, v31

    const/16 v30, 0x7

    aput-object v20, v29, v30

    const/16 v30, 0x8

    aput-object v7, v29, v30

    const/16 v30, 0x9

    aput-object v11, v29, v30

    .line 285
    .end local v7    # "cnt":[I
    .end local v8    # "counters":Lorg/json/JSONObject;
    .end local v11    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "info1":Ljava/lang/String;
    .end local v19    # "ph":Lorg/json/JSONArray;
    .end local v20    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v27    # "university":Ljava/lang/String;
    :goto_8
    return-object v29

    .line 140
    .restart local v7    # "cnt":[I
    .restart local v8    # "counters":Lorg/json/JSONObject;
    .restart local v15    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19    # "ph":Lorg/json/JSONArray;
    .restart local v20    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v27    # "university":Ljava/lang/String;
    :cond_16
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 141
    .local v14, "k":Ljava/lang/String;
    const-string v29, "albums"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    const/16 v29, 0x2

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 142
    :cond_17
    const-string v29, "user_photos"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    const/16 v29, 0x1

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 143
    :cond_18
    const-string v29, "videos"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    const/16 v29, 0x4

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 144
    :cond_19
    const-string v29, "user_videos"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    const/16 v29, 0x5

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 145
    :cond_1a
    const-string v29, "audios"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x3

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 146
    :cond_1b
    const-string v29, "friends"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x6

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 147
    :cond_1c
    const-string v29, "mutual_friends"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1d

    const/16 v29, 0x7

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 148
    :cond_1d
    const-string v29, "notes"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v29, 0x9

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29

    .line 149
    :cond_1e
    const-string v29, "followers"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    const/16 v29, 0xe

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v7, v29
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 282
    .end local v7    # "cnt":[I
    .end local v8    # "counters":Lorg/json/JSONObject;
    .end local v14    # "k":Ljava/lang/String;
    .end local v15    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "ph":Lorg/json/JSONArray;
    .end local v20    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v27    # "university":Ljava/lang/String;
    :catch_0
    move-exception v28

    .line 283
    .local v28, "x":Ljava/lang/Exception;
    const-string v29, "vk"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v28    # "x":Ljava/lang/Exception;
    :cond_1f
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 164
    .restart local v4    # "bd":[Ljava/lang/String;
    .restart local v5    # "bdate":Ljava/lang/String;
    .restart local v7    # "cnt":[I
    .restart local v8    # "counters":Lorg/json/JSONObject;
    .restart local v11    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "month":I
    .restart local v19    # "ph":Lorg/json/JSONArray;
    .restart local v20    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v27    # "university":Ljava/lang/String;
    :cond_20
    :try_start_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v30, v4, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto/16 :goto_1

    .line 166
    .end local v16    # "month":I
    :catch_1
    move-exception v28

    .line 167
    .restart local v28    # "x":Ljava/lang/Exception;
    :try_start_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v30, v4, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 177
    .end local v4    # "bd":[Ljava/lang/String;
    .end local v5    # "bdate":Ljava/lang/String;
    .end local v28    # "x":Ljava/lang/Exception;
    .restart local v18    # "partner":Lorg/json/JSONObject;
    .restart local v25    # "sx":I
    :cond_21
    const-string v29, "relation"

    sget-object v30, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a0012

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    const-string v31, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    aget-object v30, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 179
    :cond_22
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "first_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "last_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 180
    .local v22, "rpName":Ljava/lang/String;
    if-eqz v25, :cond_23

    const/16 v29, 0x2

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    :cond_23
    const-string v29, "relation"

    sget-object v30, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a003a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    const-string v31, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    aget-object v30, v30, v31

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v22, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_9
    const-string v29, "_relation_id"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 181
    :cond_24
    const-string v29, "relation"

    sget-object v30, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a003b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    const-string v31, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    aget-object v30, v30, v31

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v22, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 201
    .end local v18    # "partner":Lorg/json/JSONObject;
    .end local v22    # "rpName":Ljava/lang/String;
    .end local v25    # "sx":I
    .restart local v12    # "info1":Ljava/lang/String;
    :cond_25
    const-string v29, "bdate"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_26

    const-string v29, "bdate"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "info1":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "info1":Ljava/lang/String;
    goto/16 :goto_3

    .line 202
    :cond_26
    move-object/from16 v12, v27

    goto/16 :goto_3

    .line 215
    :cond_27
    const-string v30, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_4

    :cond_28
    const/16 v30, 0x0

    goto/16 :goto_5

    :cond_29
    const/16 v30, 0x0

    goto/16 :goto_6

    :cond_2a
    const/16 v30, 0x0

    goto/16 :goto_7

    .line 217
    .end local v7    # "cnt":[I
    .end local v8    # "counters":Lorg/json/JSONObject;
    .end local v11    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "info1":Ljava/lang/String;
    .end local v19    # "ph":Lorg/json/JSONArray;
    .end local v20    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v27    # "university":Ljava/lang/String;
    :cond_2b
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v9, "gInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v24, ""

    .line 219
    .local v24, "subtitle":Ljava/lang/String;
    const-string v29, "info"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 220
    .local v10, "info":Lorg/json/JSONObject;
    const-string v29, "is_closed"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_39

    const/4 v13, 0x1

    .line 221
    .local v13, "isClosed":Z
    :goto_a
    const/4 v6, 0x1

    .line 222
    .local v6, "canWrite":Z
    const-string v29, "type"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 223
    .local v26, "type":Ljava/lang/String;
    const-string v29, "group"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2c

    .line 224
    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    if-eqz v13, :cond_3b

    const-string v29, "is_closed"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_3a

    const v29, 0x7f090043

    :goto_b
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 225
    :cond_2c
    const-string v29, "event"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 226
    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    if-eqz v13, :cond_3c

    const v29, 0x7f090101

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 227
    :cond_2d
    const-string v29, "page"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2e

    .line 228
    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090102

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 229
    const-string v29, "_can_see_all_posts"

    const-string v30, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v29, "is_admin"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3d

    const/4 v6, 0x1

    .line 233
    :cond_2e
    :goto_d
    const-string v29, "type"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v29, "is_closed"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "is_closed"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v29, "member"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2f

    const-string v29, "is_member"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2f
    const-string v29, "request"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    const-string v29, "request"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_30
    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Lcom/vkontakte/android/Photo;

    move-object/from16 v20, v0

    .line 240
    .restart local v20    # "photos":[Lcom/vkontakte/android/Photo;
    const-string v29, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 241
    .restart local v19    # "ph":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GetWallInfo;->parsePhotos(Lorg/json/JSONArray;)[Lcom/vkontakte/android/Photo;

    move-result-object v20

    .line 245
    const/16 v29, 0xe

    move/from16 v0, v29

    new-array v8, v0, [I

    .line 246
    .local v8, "counters":[I
    if-eqz v19, :cond_31

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v30

    aput v30, v8, v29

    .line 247
    :cond_31
    const/16 v29, 0xb

    const-string v30, "nmem"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    aput v30, v8, v29

    .line 248
    const/16 v29, 0x3

    const-string v30, "naud"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    aput v30, v8, v29

    .line 249
    const/16 v29, 0x2

    const-string v30, "nalb"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    aput v30, v8, v29

    .line 250
    const/16 v29, 0x4

    const-string v30, "nvid"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    aput v30, v8, v29

    .line 251
    const/16 v29, 0xc

    const-string v30, "ndoc"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    aput v30, v8, v29

    .line 252
    const/16 v29, 0xa

    const-string v30, "ntop"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    aput v30, v8, v29

    .line 254
    const-string v29, "wiki_page"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_32

    const-string v29, "wiki_page"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_32

    .line 255
    const-string v29, "_wiki_page"

    const-string v30, "wiki_page"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/16 v29, 0xd

    const/16 v30, -0x1

    aput v30, v8, v29

    .line 258
    :cond_32
    const-string v29, "description"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_33

    const-string v29, "description"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_33

    const-string v29, "description"

    const-string v30, "description"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_33
    const-string v29, "site"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_34

    const-string v29, "site"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_34

    const-string v29, "site"

    const-string v30, "site"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_34
    const-string v29, "start_date"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_35

    const-string v29, "start_date"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    if-lez v29, :cond_35

    const-string v29, "start_date"

    sget-object v30, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const-string v31, "start_date"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_35
    const-string v29, "finish_date"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_36

    const-string v29, "finish_date"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    if-lez v29, :cond_36

    const-string v29, "end_date"

    sget-object v30, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const-string v31, "finish_date"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_36
    const-string v29, "place"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3f

    const-string v29, "place"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string v30, "address"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3f

    .line 263
    const-string v29, "place"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 264
    .local v21, "place":Lorg/json/JSONObject;
    const-string v30, "place"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_3e

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v32, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_e
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "address"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v29, "place_coord"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "latitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, ","

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "longitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v21    # "place":Lorg/json/JSONObject;
    :cond_37
    :goto_f
    const-string v23, ""

    .line 275
    .local v23, "status":Ljava/lang/String;
    const-string v29, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    if-eqz v29, :cond_38

    const-string v29, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string v30, "text"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_38

    .line 276
    const-string v29, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string v30, "text"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 279
    :cond_38
    const/16 v29, 0xa

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "name"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "photo_medium"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    aput-object v23, v29, v30

    const/16 v30, 0x3

    aput-object v24, v29, v30

    const/16 v30, 0x4

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v31, 0x6

    const-string v30, "is_admin"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_44

    const/16 v30, 0x1

    :goto_10
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v29, v31

    const/16 v30, 0x7

    aput-object v20, v29, v30

    const/16 v30, 0x8

    aput-object v8, v29, v30

    const/16 v30, 0x9

    aput-object v9, v29, v30

    goto/16 :goto_8

    .line 220
    .end local v6    # "canWrite":Z
    .end local v8    # "counters":[I
    .end local v13    # "isClosed":Z
    .end local v19    # "ph":Lorg/json/JSONArray;
    .end local v20    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v23    # "status":Ljava/lang/String;
    .end local v26    # "type":Ljava/lang/String;
    :cond_39
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 224
    .restart local v6    # "canWrite":Z
    .restart local v13    # "isClosed":Z
    .restart local v26    # "type":Ljava/lang/String;
    :cond_3a
    const v29, 0x7f090042

    goto/16 :goto_b

    :cond_3b
    const v29, 0x7f090041

    goto/16 :goto_b

    .line 226
    :cond_3c
    const v29, 0x7f090100

    goto/16 :goto_c

    .line 230
    :cond_3d
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 264
    .restart local v8    # "counters":[I
    .restart local v19    # "ph":Lorg/json/JSONArray;
    .restart local v20    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v21    # "place":Lorg/json/JSONObject;
    :cond_3e
    const-string v29, ""

    goto/16 :goto_e

    .line 266
    .end local v21    # "place":Lorg/json/JSONObject;
    :cond_3f
    const-string v29, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_40

    const-string v29, "country"

    const-string v30, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_37

    .line 267
    :cond_40
    const-string v17, ""

    .line 268
    .local v17, "p":Ljava/lang/String;
    const-string v29, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_41

    const-string v29, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 269
    :cond_41
    const-string v29, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_42

    const-string v29, "country"

    const-string v30, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_42

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 270
    :cond_42
    const-string v29, "country"

    const-string v30, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_43

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "country"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 271
    :cond_43
    const-string v29, "place"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_f

    .line 279
    .end local v17    # "p":Ljava/lang/String;
    .restart local v23    # "status":Ljava/lang/String;
    :cond_44
    const/16 v30, 0x0

    goto/16 :goto_10
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetWallInfo$Callback;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    .line 306
    return-object p0
.end method
