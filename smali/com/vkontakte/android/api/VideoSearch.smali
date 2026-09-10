.class public Lcom/vkontakte/android/api/VideoSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoSearch$Callback;
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "var v=API.video.search({q:\"%s\",offset:%d,count:%d%s%s,adult:%d});return {v:v,u:API.getProfiles({user_ids:v@.owner_id,fields:\"%s\"})};"


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoSearch$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 10
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "hd"    # Z
    .param p5, "length"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    const-string v1, "execute"

    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "safeSearch"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    .local v0, "safe":Z
    const-string v4, "code"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "var v=API.video.search({q:\"%s\",offset:%d,count:%d%s%s,adult:%d});return {v:v,u:API.getProfiles({user_ids:v@.owner_id,fields:\"%s\"})};"

    const/4 v1, 0x7

    new-array v7, v1, [Ljava/lang/Object;

    const-string v1, "\""

    const-string v8, "\\\""

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x3

    if-eqz p4, :cond_0

    const-string v1, ",hd:1"

    :goto_0
    aput-object v1, v7, v8

    const/4 v8, 0x4

    if-lez p5, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, ",filters:"

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p5, v2, :cond_1

    const-string v1, "\"short\""

    :goto_1
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v7, v8

    const/4 v8, 0x5

    if-nez v0, :cond_3

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v2, 0x6

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    const-string v1, "photo_medium_rec"

    :goto_4
    aput-object v1, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/vkontakte/android/api/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void

    .line 25
    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, "\"long\""

    goto :goto_1

    :cond_2
    const-string v1, ""

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    const-string v1, "photo_rec"

    goto :goto_4
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    if-nez v1, :cond_0

    .line 63
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 57
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 59
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/VideoSearch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    check-cast p1, Ljava/util/Vector;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/VideoSearch$Callback;->success(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 31
    .local v8, "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/4 v5, 0x0

    .line 32
    .local v5, "total":I
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "v"

    invoke-static {v10, v11}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v10

    iget-object v0, v10, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 33
    .local v0, "arr":Lorg/json/JSONArray;
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "u"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 34
    .local v6, "u":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v4, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_2

    .line 42
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 43
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_4

    .line 52
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "total":I
    .end local v6    # "u":Lorg/json/JSONArray;
    .end local v8    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :cond_1
    :goto_2
    return-object v8

    .line 37
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "total":I
    .restart local v6    # "u":Lorg/json/JSONArray;
    .restart local v8    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :cond_2
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 38
    .local v7, "uid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

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

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "last_name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v13

    if-lez v10, :cond_3

    const-string v10, "photo_medium_rec"

    :goto_3
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_3
    const-string v10, "photo_rec"

    goto :goto_3

    .line 44
    .end local v7    # "uid":I
    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 45
    .local v2, "jv":Lorg/json/JSONObject;
    new-instance v10, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v10, v2}, Lcom/vkontakte/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jv":Lorg/json/JSONObject;
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "total":I
    .end local v6    # "u":Lorg/json/JSONArray;
    .end local v8    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :catch_0
    move-exception v9

    .line 50
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoSearch$Callback;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    .line 67
    return-object p0
.end method
