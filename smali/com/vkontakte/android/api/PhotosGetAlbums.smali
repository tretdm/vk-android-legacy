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

    .line 20
    const-string v0, "execute.getPhotoAlbumsNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    const-string v0, "need_covers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    if-eqz p2, :cond_0

    const-string v0, "need_system"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    :cond_0
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 25
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    if-nez v2, :cond_0

    .line 131
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 124
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 126
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 129
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;->success(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 22
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    const-string v7, "p"

    .line 30
    .local v7, "needSize":Ljava/lang/String;
    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x3fc00000    # 1.5f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_0

    .line 31
    const-string v7, "q"

    .line 32
    :cond_0
    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_1

    .line 33
    const-string v7, "r"

    .line 34
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    const/4 v8, 0x0

    .line 36
    .local v8, "numSystem":I
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 37
    .local v3, "al":Lorg/json/JSONArray;
    if-eqz v3, :cond_c

    .line 38
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_c

    .line 39
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 40
    .local v6, "ja":Lorg/json/JSONObject;
    const-string v17, "size"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "size"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 41
    :cond_2
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No size for album "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_3
    new-instance v2, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v2, v6}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 45
    .local v2, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0021

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 46
    :cond_4
    const-string v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 47
    .local v12, "sizes":Lorg/json/JSONArray;
    if-eqz v12, :cond_6

    .line 48
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v14, "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 50
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 51
    .local v11, "size":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "src"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 53
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 54
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 59
    .end local v5    # "j":I
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_3
    const-string v17, "can_upload"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "can_upload"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    .line 60
    :cond_7
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adding album "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    move/from16 v17, v0

    if-gez v17, :cond_b

    .line 62
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 63
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 56
    .restart local v5    # "j":I
    .restart local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_9

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isHighSpeed()Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "x"

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 116
    .end local v2    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v3    # "al":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v7    # "needSize":Ljava/lang/String;
    .end local v8    # "numSystem":I
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 117
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const/16 v17, 0x0

    .end local v16    # "x":Ljava/lang/Exception;
    :goto_6
    return-object v17

    .line 56
    .restart local v2    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .restart local v3    # "al":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "ja":Lorg/json/JSONObject;
    .restart local v7    # "needSize":Ljava/lang/String;
    .restart local v8    # "numSystem":I
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    .restart local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    :try_start_1
    const-string v17, "m"

    goto :goto_5

    .line 59
    .end local v5    # "j":I
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    .line 65
    :cond_b
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 70
    .end local v2    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v4    # "i":I
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    :cond_c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v13, "system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "all_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 72
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "all_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 73
    .restart local v6    # "ja":Lorg/json/JSONObject;
    new-instance v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    invoke-direct {v15, v6}, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 74
    .local v15, "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0023

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->title:Ljava/lang/String;

    .line 75
    const-string v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 76
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    const-string v9, ""

    .line 77
    .local v9, "r":Ljava/lang/String;
    if-eqz v12, :cond_d

    .line 78
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_d

    .line 79
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 80
    .restart local v11    # "size":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 81
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 88
    .end local v5    # "j":I
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_d
    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_f

    .line 89
    :cond_e
    iput-object v9, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 90
    :cond_f
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v9    # "r":Ljava/lang/String;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_10
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "user_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 94
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "user_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 95
    .restart local v6    # "ja":Lorg/json/JSONObject;
    new-instance v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    invoke-direct {v15, v6}, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 96
    .restart local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0352

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->title:Ljava/lang/String;

    .line 97
    const-string v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 98
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    const-string v9, ""

    .line 99
    .restart local v9    # "r":Ljava/lang/String;
    if-eqz v12, :cond_11

    .line 100
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_8
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    .line 101
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 102
    .restart local v11    # "size":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 103
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 110
    .end local v5    # "j":I
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_11
    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_13

    .line 111
    :cond_12
    iput-object v9, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 112
    :cond_13
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v9    # "r":Ljava/lang/String;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_14
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    goto/16 :goto_6

    .line 83
    .restart local v5    # "j":I
    .restart local v6    # "ja":Lorg/json/JSONObject;
    .restart local v9    # "r":Ljava/lang/String;
    .restart local v11    # "size":Lorg/json/JSONObject;
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    .restart local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_15
    const-string v17, "m"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-ltz v17, :cond_17

    :cond_16
    const-string v17, "x"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_18

    .line 84
    :cond_17
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 105
    :cond_19
    const-string v17, "m"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-ltz v17, :cond_1b

    :cond_1a
    const-string v17, "x"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1c

    .line 106
    :cond_1b
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 100
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .line 135
    return-object p0
.end method
