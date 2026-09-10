.class public Lcom/vkontakte/android/api/PhotosGetAlbums;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGetAlbums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "needSystem"    # Z

    .prologue
    const/4 v1, 0x1

    .line 18
    const-string v0, "execute.getPhotoAlbumsNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "need_covers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    if-eqz p2, :cond_0

    const-string v0, "need_system"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_0
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    if-nez v1, :cond_0

    .line 104
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 98
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 100
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    check-cast p1, Ljava/util/Vector;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;->success(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 19
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    :try_start_0
    const-string v6, "p"

    .line 28
    .local v6, "needSize":Ljava/lang/String;
    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x3fc00000    # 1.5f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_0

    .line 29
    const-string v6, "q"

    .line 30
    :cond_0
    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_1

    .line 31
    const-string v6, "r"

    .line 32
    :cond_1
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 33
    .local v9, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    const/4 v7, 0x0

    .line 34
    .local v7, "numSystem":I
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v14

    iget-object v2, v14, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 35
    .local v2, "al":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 36
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_7

    .line 66
    .end local v3    # "i":I
    :cond_2
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "user_photos"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 67
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "user_photos"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 68
    .local v5, "ja":Lorg/json/JSONObject;
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v12, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v12, v5}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 70
    .local v12, "userPhotos":Lcom/vkontakte/android/api/PhotoAlbum;
    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600a6

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-object v0, v12, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 71
    const-string v14, "sizes"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 72
    .local v11, "sizes":Lorg/json/JSONArray;
    const-string v8, ""

    .line 73
    .local v8, "r":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 74
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v4, v14, :cond_16

    .line 84
    .end local v4    # "j":I
    :cond_3
    :goto_2
    iget-object v14, v12, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    if-eqz v14, :cond_4

    iget-object v14, v12, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 85
    :cond_4
    iput-object v8, v12, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 86
    :cond_5
    invoke-virtual {v9, v7, v12}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 93
    .end local v2    # "al":Lorg/json/JSONArray;
    .end local v5    # "ja":Lorg/json/JSONObject;
    .end local v6    # "needSize":Ljava/lang/String;
    .end local v7    # "numSystem":I
    .end local v8    # "r":Ljava/lang/String;
    .end local v9    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .end local v11    # "sizes":Lorg/json/JSONArray;
    .end local v12    # "userPhotos":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_6
    :goto_3
    return-object v9

    .line 37
    .restart local v2    # "al":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v6    # "needSize":Ljava/lang/String;
    .restart local v7    # "numSystem":I
    .restart local v9    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    :cond_7
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 38
    .restart local v5    # "ja":Lorg/json/JSONObject;
    const-string v14, "size"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "size"

    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 36
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 39
    :cond_9
    new-instance v1, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 40
    .local v1, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v14, v1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_a

    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060132

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 41
    :cond_a
    const-string v14, "sizes"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 42
    .restart local v11    # "sizes":Lorg/json/JSONArray;
    const-string v8, ""

    .line 43
    .restart local v8    # "r":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 44
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v4, v14, :cond_f

    .line 54
    .end local v4    # "j":I
    :cond_b
    :goto_6
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Thumb = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v14, v1, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    if-eqz v14, :cond_c

    iget-object v14, v1, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_d

    .line 56
    :cond_c
    iput-object v8, v1, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 57
    :cond_d
    const-string v14, "can_upload"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const-string v14, "can_upload"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_14

    const/4 v14, 0x1

    :goto_7
    iput-boolean v14, v1, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    .line 58
    :cond_e
    iget v14, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-gez v14, :cond_15

    .line 59
    invoke-virtual {v9, v7, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 60
    add-int/lit8 v7, v7, 0x1

    .line 61
    goto :goto_4

    .line 45
    .restart local v4    # "j":I
    :cond_f
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 46
    .local v10, "size":Lorg/json/JSONObject;
    const-string v14, "type"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 47
    const-string v14, "src"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 90
    .end local v1    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v2    # "al":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "ja":Lorg/json/JSONObject;
    .end local v6    # "needSize":Ljava/lang/String;
    .end local v7    # "numSystem":I
    .end local v8    # "r":Ljava/lang/String;
    .end local v9    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .end local v10    # "size":Lorg/json/JSONObject;
    .end local v11    # "sizes":Lorg/json/JSONArray;
    :catch_0
    move-exception v13

    .line 91
    .local v13, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    invoke-static {v14, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 49
    .end local v13    # "x":Ljava/lang/Exception;
    .restart local v1    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .restart local v2    # "al":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "ja":Lorg/json/JSONObject;
    .restart local v6    # "needSize":Ljava/lang/String;
    .restart local v7    # "numSystem":I
    .restart local v8    # "r":Ljava/lang/String;
    .restart local v9    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .restart local v10    # "size":Lorg/json/JSONObject;
    .restart local v11    # "sizes":Lorg/json/JSONArray;
    :cond_10
    :try_start_1
    const-string v14, "m"

    const-string v15, "type"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x40000000    # 2.0f

    cmpg-float v14, v14, v15

    if-ltz v14, :cond_12

    :cond_11
    const-string v14, "x"

    const-string v15, "type"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x40000000    # 2.0f

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_13

    .line 50
    :cond_12
    const-string v14, "src"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 57
    .end local v4    # "j":I
    .end local v10    # "size":Lorg/json/JSONObject;
    :cond_14
    const/4 v14, 0x0

    goto :goto_7

    .line 62
    :cond_15
    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 75
    .end local v1    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v12    # "userPhotos":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_16
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 76
    .restart local v10    # "size":Lorg/json/JSONObject;
    const-string v14, "type"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 77
    const-string v14, "src"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    goto/16 :goto_2

    .line 79
    :cond_17
    const-string v14, "m"

    const-string v15, "type"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x40000000    # 2.0f

    cmpg-float v14, v14, v15

    if-ltz v14, :cond_19

    :cond_18
    const-string v14, "x"

    const-string v15, "type"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x40000000    # 2.0f

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_1a

    .line 80
    :cond_19
    const-string v14, "src"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 74
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .line 108
    return-object p0
.end method
