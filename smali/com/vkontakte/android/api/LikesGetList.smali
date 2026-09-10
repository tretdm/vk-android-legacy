.class public Lcom/vkontakte/android/api/LikesGetList;
.super Lcom/vkontakte/android/APIRequest;
.source "LikesGetList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/LikesGetList$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/LikesGetList$Callback;

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "parentType"    # I
    .param p3, "oid"    # I
    .param p4, "itemID"    # I
    .param p5, "offset"    # I
    .param p6, "count"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 20
    const-string v1, "likes.getList"

    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "post"

    aput-object v3, v1, v2

    const-string v2, "photo"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "video"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "note"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "topic"

    aput-object v3, v1, v2

    const-string v2, "comment"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/vkontakte/android/api/LikesGetList;->types:[Ljava/lang/String;

    .line 21
    if-ne p1, v5, :cond_0

    .line 22
    const-string v0, ""

    .line 23
    .local v0, "t":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 34
    :goto_0
    :pswitch_0
    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "comment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/LikesGetList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 38
    .end local v0    # "t":Ljava/lang/String;
    :goto_1
    const-string v1, "owner_id"

    invoke-virtual {p0, v1, p3}, Lcom/vkontakte/android/api/LikesGetList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v1, v2, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v1, v2, p6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v1, v2, p5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "extended"

    invoke-virtual {v1, v2, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "fields"

    const-string v3, "photo_rec,photo_medium_rec"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 39
    return-void

    .line 25
    .restart local v0    # "t":Ljava/lang/String;
    :pswitch_1
    const-string v0, "photo_"

    .line 26
    goto :goto_0

    .line 28
    :pswitch_2
    const-string v0, "video_"

    .line 29
    goto :goto_0

    .line 31
    :pswitch_3
    const-string v0, "topic_"

    goto :goto_0

    .line 36
    .end local v0    # "t":Ljava/lang/String;
    :cond_0
    const-string v1, "type"

    iget-object v2, p0, Lcom/vkontakte/android/api/LikesGetList;->types:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/LikesGetList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/vkontakte/android/api/LikesGetList;->callback:Lcom/vkontakte/android/api/LikesGetList$Callback;

    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 69
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/LikesGetList;->callback:Lcom/vkontakte/android/api/LikesGetList$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/LikesGetList$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 71
    check-cast v1, [Ljava/lang/Object;

    .line 72
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/LikesGetList;->callback:Lcom/vkontakte/android/api/LikesGetList$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/LikesGetList$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 44
    .local v4, "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 45
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 58
    .end local v1    # "i":I
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "count"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 62
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :goto_1
    return-object v6

    .line 47
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 49
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const-string v6, "first_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 50
    const-string v6, "last_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 52
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    const-string v6, "photo_medium_rec"

    :goto_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 53
    const-string v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 54
    invoke-static {v2}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/UserProfile;->online:I

    .line 55
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_2
    const-string v6, "photo_rec"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 59
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v5

    .line 60
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/LikesGetList$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/LikesGetList$Callback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/api/LikesGetList;->callback:Lcom/vkontakte/android/api/LikesGetList$Callback;

    .line 78
    return-object p0
.end method
