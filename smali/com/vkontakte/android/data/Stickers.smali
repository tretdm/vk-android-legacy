.class public Lcom/vkontakte/android/data/Stickers;
.super Ljava/lang/Object;
.source "Stickers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/data/Stickers$GetPricesCallback;
    }
.end annotation


# static fields
.field public static final ACTION_STICKERS_DOWNLOAD_PROGRESS:Ljava/lang/String; = "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

.field public static final ACTION_STICKERS_UPDATED:Ljava/lang/String; = "com.vkontakte.android.STICKERS_UPDATED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateFreePack(ILandroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "onSuccess"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 162
    new-instance v0, Lcom/vkontakte/android/api/StorePurchase;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/vkontakte/android/api/StorePurchase;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v1, Lcom/vkontakte/android/data/Stickers$2;

    invoke-direct {v1, p1, p0, p2}, Lcom/vkontakte/android/data/Stickers$2;-><init>(Landroid/app/Activity;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StorePurchase;->setCallback(Lcom/vkontakte/android/api/StorePurchase$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 192
    return-void
.end method

.method public static broadcastUpdate()V
    .locals 3

    .prologue
    .line 364
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public static deleteDownloadedPack(I)V
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 277
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stickers/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 280
    .local v0, "content":[Ljava/io/File;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 287
    .end local v0    # "content":[Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 280
    .restart local v0    # "content":[Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    :cond_1
    aget-object v2, v0, v3

    .line 281
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 280
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 286
    .end local v0    # "content":[Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static doUpdateInfo(Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/StickerPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/StickerPack;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v5, "builtIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    const-string v21, "stickers"

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "assets":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v21, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 94
    .end local v4    # "assets":[Ljava/lang/String;
    :goto_1
    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v21, "stickers"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 95
    .local v15, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 96
    .local v3, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, "currentIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 98
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 106
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "promotedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v13, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 146
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "promoted"

    const-string v22, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "order"

    const-string v22, ","

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 148
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_b

    .line 153
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 154
    return-void

    .line 86
    .end local v3    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v6    # "currentIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v16    # "promotedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "assets":[Ljava/lang/String;
    :cond_3
    :try_start_1
    aget-object v8, v4, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .local v8, "file":Ljava/lang/String;
    :try_start_2
    const-string v22, "\\."

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 91
    .end local v4    # "assets":[Ljava/lang/String;
    .end local v8    # "file":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 92
    .local v19, "x":Ljava/lang/Exception;
    const-string v20, "vk"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 98
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v3    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v6    # "currentIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 99
    .local v11, "key":Ljava/lang/String;
    const-string v21, "owned"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 101
    :try_start_3
    const-string v21, "owned"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 102
    .local v9, "id":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 103
    .end local v9    # "id":I
    :catch_1
    move-exception v19

    .restart local v19    # "x":Ljava/lang/Exception;
    const-string v21, "vk"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 107
    .end local v11    # "key":Ljava/lang/String;
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v13    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "promotedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/data/StickerPack;

    .line 108
    .local v14, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->state:I

    move/from16 v20, v0

    const/16 v22, 0x6

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 109
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "owned"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 110
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "confirmed"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 111
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "content"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v14, Lcom/vkontakte/android/data/StickerPack;->downloadLink:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 112
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "base_url"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v14, Lcom/vkontakte/android/data/StickerPack;->baseURL:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 113
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "s_base_url"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v14, Lcom/vkontakte/android/data/StickerPack;->stickersBaseURL:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 114
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ordering"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, ","

    iget-object v0, v14, Lcom/vkontakte/android/data/StickerPack;->ids:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 115
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->state:I

    move/from16 v20, v0

    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 118
    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_6
    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->state:I

    move/from16 v20, v0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 120
    new-instance v7, Ljava/io/File;

    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "stickers/"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v7, "dir":Ljava/io/File;
    iget-object v0, v14, Lcom/vkontakte/android/data/StickerPack;->ids:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_9

    .line 134
    .end local v7    # "dir":Ljava/io/File;
    :cond_8
    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->state:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 135
    new-instance v10, Landroid/content/Intent;

    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v22, Lcom/vkontakte/android/StickerDownloaderService;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v10, "intent":Landroid/content/Intent;
    const-string v20, "id"

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v20, "url"

    sget-object v22, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v23, "stickers"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "content"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v20, "title"

    iget-object v0, v14, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v20, "silent"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    .line 121
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v7    # "dir":Ljava/io/File;
    :cond_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 122
    .restart local v9    # "id":I
    new-instance v20, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "_64b.png"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_7

    .line 123
    const-string v20, "vk"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "image for sticker "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is missing!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 125
    .local v18, "sizes":[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    aget v17, v18, v20

    .line 126
    .local v17, "size":I
    new-instance v10, Landroid/content/Intent;

    sget-object v24, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v25, Lcom/vkontakte/android/StickerDownloaderService;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v24, "url"

    new-instance v25, Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/vkontakte/android/data/StickerPack;->stickersBaseURL:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "b.png"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v24, "dest_path"

    new-instance v25, Ljava/io/File;

    sget-object v26, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "stickers/"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "b.png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    sget-object v24, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_6

    .line 143
    .end local v7    # "dir":Ljava/io/File;
    .end local v9    # "id":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v17    # "size":I
    .end local v18    # "sizes":[I
    :cond_a
    iget v0, v14, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 148
    .end local v14    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 150
    .restart local v9    # "id":I
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "owned"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "confirmed"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "content"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "token"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 89
    .end local v3    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v6    # "currentIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "id":I
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v16    # "promotedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "assets":[Ljava/lang/String;
    .restart local v8    # "file":Ljava/lang/String;
    :catch_2
    move-exception v22

    goto/16 :goto_5

    .line 124
    :array_0
    .array-data 4
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public static getActivePacks()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "stickers"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 196
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "order"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->stringToIntArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 197
    .local v1, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    return-object v3

    .line 198
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .local v0, "id":I
    invoke-static {v0}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v4

    .line 200
    .local v4, "state":I
    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getPackBackgroundImage(I)Ljava/lang/String;
    .locals 5
    .param p0, "pack"    # I

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stickers/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/background.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackState(I)I
    .locals 5
    .param p0, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 47
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "stickers"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "owned"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "confirmed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v2, 0x2

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 52
    :cond_1
    const-string v2, "order"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 53
    const/4 v2, 0x5

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stickers/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const/4 v2, 0x4

    goto :goto_0

    .line 58
    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    .line 60
    .end local v0    # "dir":Ljava/io/File;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getPrices(Landroid/app/Activity;Ljava/util/List;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;)V
    .locals 4
    .param p0, "act"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/vkontakte/android/data/Stickers$GetPricesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vkontakte/android/data/Stickers$GetPricesCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/vkontakte/android/data/Stickers$3;

    invoke-direct {v1, p1, p0, p2}, Lcom/vkontakte/android/data/Stickers$3;-><init>(Ljava/util/List;Landroid/app/Activity;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;)V

    .line 334
    .local v1, "serviceConn":Landroid/content/ServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 335
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 336
    const/4 v2, -0x2

    const-string v3, "Google Play not available"

    invoke-interface {p2, v2, v3}, Lcom/vkontakte/android/data/Stickers$GetPricesCallback;->onError(ILjava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public static getPromotedPacks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "stickers"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 208
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "promoted"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->stringToIntArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 209
    .local v1, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    return-object v3

    .line 210
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    .local v0, "id":I
    invoke-static {v0}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getStickers(I)Ljava/util/List;
    .locals 23
    .param p0, "pack"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/StickerAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v18, "stickers"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 219
    .local v12, "prefs":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v14, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/StickerAttachment;>;"
    new-instance v4, Ljava/io/File;

    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "stickers/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 268
    .end local v14    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/StickerAttachment;>;"
    :cond_0
    :goto_0
    return-object v14

    .line 222
    .restart local v14    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/StickerAttachment;>;"
    :cond_1
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v15, v0, [I

    fill-array-data v15, :array_0

    .line 223
    .local v15, "sizes":[I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ordering"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->stringToIntArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 225
    .local v8, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v10, Ljava/io/File;

    const-string v17, "sizes"

    move-object/from16 v0, v17

    invoke-direct {v10, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v10, "isizes":Ljava/io/File;
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local v9, "in":Ljava/io/DataInputStream;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v5, "fsizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/graphics/Point;>;"
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 229
    .local v16, "version":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 230
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 231
    invoke-static {v4}, Lcom/vkontakte/android/StickerDownloaderService;->generateSizesFile(Ljava/io/File;)V

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/data/Stickers;->getStickers(I)Ljava/util/List;

    move-result-object v14

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 235
    .local v3, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v3, :cond_3

    .line 243
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 244
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 245
    .local v7, "id":I
    new-instance v2, Lcom/vkontakte/android/StickerAttachment;

    invoke-direct {v2}, Lcom/vkontakte/android/StickerAttachment;-><init>()V

    .line 246
    .local v2, "att":Lcom/vkontakte/android/StickerAttachment;
    iput v7, v2, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 247
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 248
    const/4 v6, 0x0

    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v6, v0, :cond_4

    .line 251
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    .line 252
    .local v11, "p":Landroid/graphics/Point;
    if-eqz v11, :cond_5

    .line 253
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v2, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 254
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v2, Lcom/vkontakte/android/StickerAttachment;->height:I

    .line 259
    :goto_4
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 261
    .end local v2    # "att":Lcom/vkontakte/android/StickerAttachment;
    .end local v3    # "count":I
    .end local v5    # "fsizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/graphics/Point;>;"
    .end local v6    # "i":I
    .end local v7    # "id":I
    .end local v9    # "in":Ljava/io/DataInputStream;
    .end local v10    # "isizes":Ljava/io/File;
    .end local v11    # "p":Landroid/graphics/Point;
    .end local v16    # "version":I
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 236
    .restart local v3    # "count":I
    .restart local v5    # "fsizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/graphics/Point;>;"
    .restart local v6    # "i":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "isizes":Ljava/io/File;
    .restart local v16    # "version":I
    :cond_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 237
    .restart local v7    # "id":I
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 238
    .local v13, "pt":Landroid/graphics/Point;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Landroid/graphics/Point;->x:I

    .line 239
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Landroid/graphics/Point;->y:I

    .line 240
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 249
    .end local v13    # "pt":Landroid/graphics/Point;
    .restart local v2    # "att":Lcom/vkontakte/android/StickerAttachment;
    :cond_4
    iget-object v0, v2, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "A|file://"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget v22, v15, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "b.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "s_base_url"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget v20, v15, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "b.png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v6

    .line 248
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 256
    .restart local v11    # "p":Landroid/graphics/Point;
    :cond_5
    const/16 v17, 0x100

    move/from16 v0, v17

    iput v0, v2, Lcom/vkontakte/android/StickerAttachment;->height:I

    move/from16 v0, v17

    iput v0, v2, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 257
    const-string v17, "vk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Size for sticker "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is unknown!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 222
    nop

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public static getTabIcon(I)[Ljava/lang/String;
    .locals 9
    .param p0, "pack"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 348
    const/16 v0, 0x22

    .line 349
    .local v0, "res":I
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 350
    const/16 v0, 0x33

    .line 351
    :cond_0
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 352
    const/16 v0, 0x44

    .line 353
    :cond_1
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 354
    const/16 v0, 0x66

    .line 355
    :cond_2
    invoke-static {p0}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 356
    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stickers/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/thumb_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stickers/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/thumb_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "b.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 359
    :goto_0
    return-object v1

    :cond_3
    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://vk.com/images/store/stickers/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/thumb_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://vk.com/images/store/stickers/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/thumb_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    goto :goto_0
.end method

.method public static hasNewStockItems()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "stickers"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "has_new"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isPlayStoreInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 341
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "com.android.vending"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v1

    .line 343
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static updateInfo()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/vkontakte/android/api/StoreGetPurchases;

    invoke-direct {v0}, Lcom/vkontakte/android/api/StoreGetPurchases;-><init>()V

    .line 67
    new-instance v1, Lcom/vkontakte/android/data/Stickers$1;

    invoke-direct {v1}, Lcom/vkontakte/android/data/Stickers$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StoreGetPurchases;->setCallback(Lcom/vkontakte/android/api/StoreGetPurchases$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->setBackground(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 80
    return-void
.end method
