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
    .line 119
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 122
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 124
    check-cast v1, [Ljava/lang/Object;

    .line 125
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
    if-eqz v3, :cond_2

    .line 38
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v4, v0, :cond_b

    .line 66
    .end local v4    # "i":I
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v13, "system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "all_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 68
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "all_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 69
    .local v6, "ja":Lorg/json/JSONObject;
    new-instance v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    invoke-direct {v15, v6}, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 70
    .local v15, "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080302

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->title:Ljava/lang/String;

    .line 71
    const-string v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 72
    .local v12, "sizes":Lorg/json/JSONArray;
    const-string v9, ""

    .line 73
    .local v9, "r":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 74
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_16

    .line 84
    .end local v5    # "j":I
    :cond_3
    :goto_2
    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 85
    :cond_4
    iput-object v9, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 86
    :cond_5
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v9    # "r":Ljava/lang/String;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_6
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "user_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 90
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "user_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 91
    .restart local v6    # "ja":Lorg/json/JSONObject;
    new-instance v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    invoke-direct {v15, v6}, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 92
    .restart local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0800c0

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

    .line 93
    const-string v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 94
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    const-string v9, ""

    .line 95
    .restart local v9    # "r":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 96
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_1b

    .line 106
    .end local v5    # "j":I
    :cond_7
    :goto_4
    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    .line 107
    :cond_8
    iput-object v9, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 108
    :cond_9
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v9    # "r":Ljava/lang/String;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_a
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    .line 115
    .end local v3    # "al":Lorg/json/JSONArray;
    .end local v7    # "needSize":Ljava/lang/String;
    .end local v8    # "numSystem":I
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .end local v13    # "system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    :goto_5
    return-object v17

    .line 39
    .restart local v3    # "al":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v7    # "needSize":Ljava/lang/String;
    .restart local v8    # "numSystem":I
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    :cond_b
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 40
    .restart local v6    # "ja":Lorg/json/JSONObject;
    const-string v17, "size"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "size"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 38
    :cond_c
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 41
    :cond_d
    new-instance v2, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v2, v6}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 42
    .local v2, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_e

    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08014b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 43
    :cond_e
    const-string v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 44
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    if-eqz v12, :cond_f

    .line 45
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v14, "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_11

    .line 50
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 51
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 56
    .end local v5    # "j":I
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    :goto_8
    const-string v17, "can_upload"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    const-string v17, "can_upload"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    const/16 v17, 0x1

    :goto_9
    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    .line 57
    :cond_10
    iget v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    move/from16 v17, v0

    if-gez v17, :cond_15

    .line 58
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    add-int/lit8 v8, v8, 0x1

    .line 60
    goto :goto_6

    .line 47
    .restart local v5    # "j":I
    .restart local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_11
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 48
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

    .line 46
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 53
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_12
    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_13

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isHighSpeed()Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "x"

    :goto_a
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 112
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

    .line 113
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 53
    .end local v16    # "x":Ljava/lang/Exception;
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
    :cond_13
    :try_start_1
    const-string v17, "m"

    goto :goto_a

    .line 56
    .end local v5    # "j":I
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    const/16 v17, 0x0

    goto :goto_9

    .line 61
    :cond_15
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 75
    .end local v2    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v9    # "r":Ljava/lang/String;
    .restart local v13    # "system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .restart local v15    # "userPhotos":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_16
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 76
    .restart local v11    # "size":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 77
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    goto/16 :goto_2

    .line 79
    :cond_17
    const-string v17, "m"

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

    if-ltz v17, :cond_19

    :cond_18
    const-string v17, "x"

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

    if-gtz v17, :cond_1a

    .line 80
    :cond_19
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 97
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_1b
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 98
    .restart local v11    # "size":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 99
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    goto/16 :goto_4

    .line 101
    :cond_1c
    const-string v17, "m"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-ltz v17, :cond_1e

    :cond_1d
    const-string v17, "x"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1f

    .line 102
    :cond_1e
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 96
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .line 131
    return-object p0
.end method
