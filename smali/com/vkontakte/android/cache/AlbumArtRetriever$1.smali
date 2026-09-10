.class final Lcom/vkontakte/android/cache/AlbumArtRetriever$1;
.super Ljava/lang/Object;
.source "AlbumArtRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_album:Ljava/lang/String;

.field final synthetic val$aid:I

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$oid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$_album:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$artist:Ljava/lang/String;

    iput p3, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$oid:I

    iput p4, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$aid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 114
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$_album:Ljava/lang/String;

    .line 115
    .local v4, "album":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 116
    const-string v21, "\\([^\\)]+\\)"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    :cond_0
    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "http://api.discogs.com/database/search?type=master&release_title=%s&artist=%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    if-eqz v4, :cond_4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :goto_0
    aput-object v21, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$artist:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$artist:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :goto_1
    aput-object v21, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 119
    .local v19, "url":Ljava/lang/String;
    const-string v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sending request -> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v5

    .line 121
    .local v5, "d":[B
    new-instance v16, Ljava/lang/String;

    const-string v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 122
    .local v16, "resp":Ljava/lang/String;
    const-string v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Discogs Resp="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v21, Lorg/json/JSONTokener;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 124
    .local v13, "jo":Lorg/json/JSONObject;
    const-string v21, "results"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 125
    .local v18, "results":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "acceptBad":Z
    const/4 v8, 0x0

    .line 126
    .local v8, "found":Z
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ge v14, v0, :cond_b

    .line 127
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_a

    .line 128
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 129
    .local v17, "result":Lorg/json/JSONObject;
    const-string v21, "format"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 130
    .local v7, "format":Lorg/json/JSONArray;
    const/4 v2, 0x1

    .line 131
    .local v2, "accept":Z
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    .line 132
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "ff":Ljava/lang/String;
    if-nez v3, :cond_6

    const-string v21, "unofficial"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "vinyl"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "compilation"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 134
    :cond_1
    const/4 v2, 0x0

    .line 138
    .end local v6    # "ff":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_7

    .line 127
    :cond_3
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 118
    .end local v2    # "accept":Z
    .end local v3    # "acceptBad":Z
    .end local v5    # "d":[B
    .end local v7    # "format":Lorg/json/JSONArray;
    .end local v8    # "found":Z
    .end local v9    # "i":I
    .end local v12    # "j":I
    .end local v13    # "jo":Lorg/json/JSONObject;
    .end local v14    # "k":I
    .end local v16    # "resp":Ljava/lang/String;
    .end local v17    # "result":Lorg/json/JSONObject;
    .end local v18    # "results":Lorg/json/JSONArray;
    .end local v19    # "url":Ljava/lang/String;
    :cond_4
    const-string v21, ""

    goto/16 :goto_0

    :cond_5
    const-string v21, ""

    goto/16 :goto_1

    .line 131
    .restart local v2    # "accept":Z
    .restart local v3    # "acceptBad":Z
    .restart local v5    # "d":[B
    .restart local v6    # "ff":Ljava/lang/String;
    .restart local v7    # "format":Lorg/json/JSONArray;
    .restart local v8    # "found":Z
    .restart local v9    # "i":I
    .restart local v12    # "j":I
    .restart local v13    # "jo":Lorg/json/JSONObject;
    .restart local v14    # "k":I
    .restart local v16    # "resp":Ljava/lang/String;
    .restart local v17    # "result":Lorg/json/JSONObject;
    .restart local v18    # "results":Lorg/json/JSONArray;
    .restart local v19    # "url":Ljava/lang/String;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 139
    .end local v6    # "ff":Ljava/lang/String;
    :cond_7
    const-string v21, "thumb"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "R-90-"

    const-string v23, "R-"

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "imgUrl":Ljava/lang/String;
    const-string v21, "http://s.pixogs.com"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 142
    const-string v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Downloading image "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v8, 0x1

    .line 144
    invoke-static {v11}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v10

    .line 145
    .local v10, "imgData":[B
    const-string v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Download ok, size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v10

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 147
    .local v15, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v10, v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 149
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 150
    const-string v21, "vk"

    const-string v22, "not square"

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 164
    .end local v2    # "accept":Z
    .end local v3    # "acceptBad":Z
    .end local v4    # "album":Ljava/lang/String;
    .end local v5    # "d":[B
    .end local v7    # "format":Lorg/json/JSONArray;
    .end local v8    # "found":Z
    .end local v9    # "i":I
    .end local v10    # "imgData":[B
    .end local v11    # "imgUrl":Ljava/lang/String;
    .end local v12    # "j":I
    .end local v13    # "jo":Lorg/json/JSONObject;
    .end local v14    # "k":I
    .end local v15    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "resp":Ljava/lang/String;
    .end local v17    # "result":Lorg/json/JSONObject;
    .end local v18    # "results":Lorg/json/JSONArray;
    .end local v19    # "url":Ljava/lang/String;
    :catch_0
    move-exception v20

    .local v20, "x":Ljava/lang/Exception;
    const-string v21, "vk"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .end local v20    # "x":Ljava/lang/Exception;
    :cond_8
    :goto_6
    return-void

    .line 153
    .restart local v2    # "accept":Z
    .restart local v3    # "acceptBad":Z
    .restart local v4    # "album":Ljava/lang/String;
    .restart local v5    # "d":[B
    .restart local v7    # "format":Lorg/json/JSONArray;
    .restart local v8    # "found":Z
    .restart local v9    # "i":I
    .restart local v10    # "imgData":[B
    .restart local v11    # "imgUrl":Ljava/lang/String;
    .restart local v12    # "j":I
    .restart local v13    # "jo":Lorg/json/JSONObject;
    .restart local v14    # "k":I
    .restart local v15    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "resp":Ljava/lang/String;
    .restart local v17    # "result":Lorg/json/JSONObject;
    .restart local v18    # "results":Lorg/json/JSONArray;
    .restart local v19    # "url":Ljava/lang/String;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$oid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$aid:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v10, v0, v1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->saveCovers([BII)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$oid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$aid:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$000(II)V

    .line 158
    .end local v2    # "accept":Z
    .end local v7    # "format":Lorg/json/JSONArray;
    .end local v10    # "imgData":[B
    .end local v11    # "imgUrl":Ljava/lang/String;
    .end local v12    # "j":I
    .end local v15    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "result":Lorg/json/JSONObject;
    :cond_a
    if-eqz v8, :cond_c

    .line 161
    .end local v9    # "i":I
    :cond_b
    if-nez v8, :cond_8

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$oid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$1;->val$aid:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/vkontakte/android/cache/AudioCache;->setCoverVersion(III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 159
    .restart local v9    # "i":I
    :cond_c
    const/4 v3, 0x1

    .line 126
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2
.end method
