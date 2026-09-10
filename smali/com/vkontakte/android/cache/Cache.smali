.class public Lcom/vkontakte/android/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/Cache$OpenHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 257
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 260
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 267
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 268
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_2
    return-void

    .line 260
    :cond_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 261
    .local v2, "m":Lcom/vkontakte/android/Message;
    new-instance v5, Lcom/vkontakte/android/cache/AddMessageAction;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/cache/AddMessageAction;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/cache/AddMessageAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 263
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :catch_0
    move-exception v3

    .line 264
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 269
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static applyMessagesActions(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/cache/MessagesAction;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    const/4 v3, 0x0

    .line 531
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 532
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 534
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 535
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 536
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 542
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 543
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    :goto_2
    return v3

    .line 535
    :cond_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/cache/MessagesAction;

    .local v0, "act":Lcom/vkontakte/android/cache/MessagesAction;
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/cache/MessagesAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 537
    .end local v0    # "act":Lcom/vkontakte/android/cache/MessagesAction;
    :catch_0
    move-exception v4

    .line 538
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error writing messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 544
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static containsMessage(I)Z
    .locals 14
    .param p0, "mid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 369
    const/4 v10, 0x0

    .line 370
    .local v10, "result":Z
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 371
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 373
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 374
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v10, v12

    .line 375
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 381
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :goto_2
    return v10

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v10, v13

    .line 374
    goto :goto_0

    .line 376
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 377
    .local v11, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error writing messages cache DB!"

    invoke-static {v1, v2, v11}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 382
    .end local v11    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static deleteAllMessages()V
    .locals 6

    .prologue
    .line 699
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 700
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 702
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "messages"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 708
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    :goto_1
    return-void

    .line 703
    :catch_0
    move-exception v2

    .line 704
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error reading messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 709
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static deleteApiRequest(I)V
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 830
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 831
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 833
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "api_queue"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 839
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 841
    :goto_1
    return-void

    .line 834
    :catch_0
    move-exception v2

    .line 835
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing api queue DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 840
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static deleteDialog(I)V
    .locals 6
    .param p0, "peer"    # I

    .prologue
    .line 387
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 388
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 390
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "messages"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "peer="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 396
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    :goto_1
    return-void

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 397
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static deleteMessages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 686
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 688
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "messages"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-static {v5, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 694
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :goto_1
    return-void

    .line 689
    :catch_0
    move-exception v2

    .line 690
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error reading messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 695
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static getApiRequest(Ljava/util/HashMap;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, -0x1

    .line 845
    .local v15, "res":I
    new-instance v12, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 846
    .local v12, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 848
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 849
    .local v17, "values":Landroid/content/ContentValues;
    const-string v2, "api_queue"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 850
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 851
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 852
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 853
    const-string v2, "id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 854
    const-string v2, "method"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 855
    .local v14, "method":Ljava/lang/String;
    new-instance v16, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "args"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 856
    .local v16, "s":Ljava/io/DataInputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 857
    .local v10, "cnt":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-lt v13, v10, :cond_1

    .line 860
    const-string v2, "_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .end local v10    # "cnt":I
    .end local v13    # "i":I
    .end local v14    # "method":Ljava/lang/String;
    .end local v16    # "s":Ljava/io/DataInputStream;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v17    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 868
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 870
    :goto_2
    return v15

    .line 858
    .restart local v10    # "cnt":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "i":I
    .restart local v14    # "method":Ljava/lang/String;
    .restart local v16    # "s":Ljava/io/DataInputStream;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 857
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 863
    .end local v10    # "cnt":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v14    # "method":Ljava/lang/String;
    .end local v16    # "s":Ljava/io/DataInputStream;
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v18

    .line 864
    .local v18, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading api queue DB!"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 869
    .end local v18    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getBirthdays(J)Ljava/util/ArrayList;
    .locals 18
    .param p0, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v6, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v6, v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 81
    .local v6, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 82
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 85
    .local v3, "d":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    const-wide/32 v12, 0x5265c00

    add-long v12, v12, p0

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 87
    .local v4, "d2":Ljava/util/Date;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SELECT * FROM birthdays JOIN users ON users.uid=birthdays.uid WHERE "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "(bday=%d AND bmonth=%d) OR (bday=%d AND bmonth=%d)"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ORDER BY bmonth,bday"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 88
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_1

    .line 89
    const/4 v7, 0x0

    .line 90
    .local v7, "i":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v10, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    :cond_0
    invoke-static {v2, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 94
    new-instance v8, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v8}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 95
    .local v8, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v12, "uid"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 96
    const-string v12, "firstname"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 97
    const-string v12, "lastname"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 98
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 99
    const-string v12, "photo_small"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bday"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bmonth"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v12, "byear"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "byear"

    invoke-virtual {v10, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    .line 101
    const-string v12, "name_r"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 102
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v7, v7, 0x1

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 106
    .end local v7    # "i":I
    .end local v8    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 112
    invoke-virtual {v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :goto_2
    return-object v9

    .line 100
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "d":Ljava/util/Date;
    .restart local v4    # "d2":Ljava/util/Date;
    .restart local v7    # "i":I
    .restart local v8    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    const-string v12, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 107
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    .end local v7    # "i":I
    .end local v8    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 108
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    const-string v13, "Error reading friends cache DB!"

    invoke-static {v12, v13, v11}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 113
    .end local v11    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method public static getChatAdmin(I)I
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 588
    const/4 v3, 0x0

    .line 589
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 590
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 592
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT admin FROM chats WHERE cid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 593
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 594
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 595
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 601
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 603
    :goto_1
    return v3

    .line 596
    :catch_0
    move-exception v4

    .line 597
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 602
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getChatInfo(I)[Ljava/lang/String;
    .locals 7
    .param p0, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 568
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "?"

    aput-object v5, v3, v6

    .line 569
    .local v3, "result":[Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 570
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 572
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT title, photo FROM chats WHERE cid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 573
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 574
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 575
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 576
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 582
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 584
    :goto_1
    return-object v3

    .line 577
    :catch_0
    move-exception v4

    .line 578
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 583
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getChatUsers(I)Ljava/util/ArrayList;
    .locals 20
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v11, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 609
    .local v11, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 610
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v12, "needGet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    const-string v2, "chats_users"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 614
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 615
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 616
    .local v18, "values":Landroid/content/ContentValues;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 618
    :cond_0
    move-object/from16 v0, v18

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 619
    new-instance v9, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v9}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 620
    .local v9, "cu":Lcom/vkontakte/android/ChatUser;
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    iput-object v2, v9, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 621
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    iput-object v2, v9, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 622
    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    const-string v3, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 623
    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    const-string v3, "inviter"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 624
    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_1
    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    .end local v9    # "cu":Lcom/vkontakte/android/ChatUser;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v18    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 635
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 637
    :goto_1
    invoke-static {v12}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    .line 638
    .local v14, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 639
    .local v15, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 642
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 646
    return-object v16

    .line 630
    .end local v14    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v15    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v19

    .line 631
    .local v19, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading messages cache DB!"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 639
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v14    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v15    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/UserProfile;

    .line 640
    .local v13, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 642
    .end local v13    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/ChatUser;

    .line 643
    .local v17, "user":Lcom/vkontakte/android/ChatUser;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 644
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    goto :goto_3

    .line 636
    .end local v14    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v15    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v17    # "user":Lcom/vkontakte/android/ChatUser;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getDialogs(II)Ljava/util/ArrayList;
    .locals 19
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    new-instance v12, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 275
    .local v12, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 277
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "dialogs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "time desc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 278
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v16, "values":Landroid/content/ContentValues;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "count="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 281
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    :cond_0
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 285
    new-instance v13, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    .line 288
    .local v13, "msg":Lcom/vkontakte/android/Message;
    new-instance v15, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v15}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 289
    .local v15, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v13, Lcom/vkontakte/android/Message;->peer:I

    iput v2, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 290
    iget v2, v13, Lcom/vkontakte/android/Message;->peer:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_2

    .line 291
    const-string v2, "firstname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 292
    const-string v2, "lastname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 294
    const-string v2, "photo_small"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 295
    iget v2, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkontakte/android/data/Friends;->getOnlineStatus(I)I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/UserProfile;->online:I

    .line 302
    :goto_0
    new-instance v11, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v11}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 303
    .local v11, "e":Lcom/vkontakte/android/DialogEntry;
    iput-object v13, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 304
    iput-object v15, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 305
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    .end local v11    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v13    # "msg":Lcom/vkontakte/android/Message;
    .end local v15    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 314
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :goto_2
    return-object v14

    .line 297
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "msg":Lcom/vkontakte/android/Message;
    .restart local v15    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v16    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    const-string v2, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 298
    const-string v2, "admin"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/UserProfile;->online:I

    .line 299
    const-string v2, "photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 309
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "msg":Lcom/vkontakte/android/Message;
    .end local v15    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v16    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v17

    .line 310
    .local v17, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading messages cache DB!"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 315
    .end local v17    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getDialogsCount()I
    .locals 7

    .prologue
    .line 320
    const/4 v3, 0x0

    .line 321
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 322
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 324
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v5, "SELECT count(*) FROM dialogs"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 326
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 333
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :goto_1
    return v3

    .line 328
    :catch_0
    move-exception v4

    .line 329
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 334
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getFriends()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v15, 0x1

    .line 118
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 119
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    const-string v1, "users"

    const/4 v2, 0x0

    const-string v3, "is_friend=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 123
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 124
    const/4 v10, 0x0

    .line 125
    .local v10, "i":I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v13, "values":Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    :cond_0
    invoke-static {v8, v13}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 129
    new-instance v11, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 130
    .local v11, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v1, "uid"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 131
    const-string v1, "firstname"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 132
    const-string v1, "lastname"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 134
    const-string v1, "photo_small"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 135
    const-string v1, "f"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v15, :cond_2

    move v1, v15

    :goto_0
    iput-boolean v1, v11, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 137
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v10, v10, 0x1

    .line 139
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    .end local v10    # "i":I
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 147
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_2
    return-object v12

    .line 135
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 142
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v14

    .line 143
    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading friends cache DB!"

    invoke-static {v1, v2, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 148
    .end local v14    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static getMaxMsgId()I
    .locals 7

    .prologue
    .line 511
    const/4 v3, 0x0

    .line 512
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 513
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 515
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v5, "SELECT max(mid) FROM messages"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 516
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 517
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 518
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 524
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 526
    :goto_1
    return v3

    .line 519
    :catch_0
    move-exception v4

    .line 520
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 525
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getMessageByID(I)Lcom/vkontakte/android/Message;
    .locals 15
    .param p0, "mid"    # I

    .prologue
    const v14, 0x77359400

    .line 480
    const/4 v10, 0x0

    .line 481
    .local v10, "result":Lcom/vkontakte/android/Message;
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 482
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 484
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "messages"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 485
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 486
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 487
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v12, "values":Landroid/content/ContentValues;
    invoke-static {v8, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 489
    new-instance v11, Lcom/vkontakte/android/Message;

    invoke-direct {v11, v12}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    .end local v10    # "result":Lcom/vkontakte/android/Message;
    .local v11, "result":Lcom/vkontakte/android/Message;
    move-object v10, v11

    .line 491
    .end local v11    # "result":Lcom/vkontakte/android/Message;
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v10    # "result":Lcom/vkontakte/android/Message;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 492
    if-eqz v10, :cond_2

    iget v1, v10, Lcom/vkontakte/android/Message;->peer:I

    if-le v1, v14, :cond_2

    .line 493
    const-string v1, "chats"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v10, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v4, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 494
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 495
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 496
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 498
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 505
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    :goto_1
    return-object v10

    .line 500
    :catch_0
    move-exception v13

    .line 501
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error writing users cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 506
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getMessagesHistory(III)Ljava/util/ArrayList;
    .locals 16
    .param p0, "peer"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v11, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 715
    .local v11, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 717
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "messages"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "peer="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "time desc, mid asc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ","

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 718
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 719
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 720
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v13, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v10, v13}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 724
    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/Message;

    invoke-direct {v3, v13}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v12, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 725
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 727
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 733
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 735
    :goto_1
    return-object v12

    .line 728
    :catch_0
    move-exception v14

    .line 729
    .local v14, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading messages cache DB!"

    invoke-static {v2, v3, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 734
    .end local v14    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getMessagesHistoryCount(I)I
    .locals 7
    .param p0, "peer"    # I

    .prologue
    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 551
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 553
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT count(*) FROM messages WHERE peer="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 554
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 555
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 556
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 562
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    :goto_1
    return v3

    .line 557
    :catch_0
    move-exception v4

    .line 558
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 563
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getResendableMessages()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 741
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 743
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "messages"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mid<0 AND time>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 744
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 745
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 746
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 748
    .local v11, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v8, v11}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 749
    const/4 v1, 0x0

    new-instance v2, Lcom/vkontakte/android/Message;

    invoke-direct {v2, v11}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v10, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 750
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 758
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 760
    :goto_1
    return-object v10

    .line 753
    :catch_0
    move-exception v12

    .line 754
    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading messages cache DB!"

    invoke-static {v1, v2, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 759
    .end local v12    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getUnread(I)Ljava/util/ArrayList;
    .locals 21
    .param p0, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v12, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 442
    .local v12, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 444
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "messages"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(flags & 1) = 1 AND sender<>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "time desc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 445
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 446
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 447
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 449
    .local v18, "values":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 450
    new-instance v15, Lcom/vkontakte/android/Message;

    invoke-direct {v15}, Lcom/vkontakte/android/Message;-><init>()V

    .line 451
    .local v15, "msg":Lcom/vkontakte/android/Message;
    const-string v2, "mid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->id:I

    .line 452
    const-string v2, "peer"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->peer:I

    .line 453
    const-string v2, "sender"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->sender:I

    .line 454
    const-string v2, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 455
    const-string v2, "time"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->time:I

    .line 456
    const-string v2, "flags"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v15, Lcom/vkontakte/android/Message;->readState:Z

    .line 457
    const-string v2, "attachments"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 458
    .local v10, "att":[B
    if-eqz v10, :cond_1

    .line 459
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 460
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 461
    .local v14, "is":Ljava/io/DataInputStream;
    invoke-virtual {v14}, Ljava/io/DataInputStream;->read()I

    move-result v16

    .line 462
    .local v16, "num":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-lt v13, v0, :cond_4

    .line 466
    .end local v13    # "i":I
    .end local v14    # "is":Ljava/io/DataInputStream;
    .end local v16    # "num":I
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 473
    .end local v10    # "att":[B
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "msg":Lcom/vkontakte/android/Message;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 474
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :goto_3
    return-object v17

    .line 456
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "msg":Lcom/vkontakte/android/Message;
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 463
    .restart local v10    # "att":[B
    .restart local v13    # "i":I
    .restart local v14    # "is":Ljava/io/DataInputStream;
    .restart local v16    # "num":I
    :cond_4
    :try_start_2
    iget-object v2, v15, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v14, v3}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 462
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 469
    .end local v10    # "att":[B
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v14    # "is":Ljava/io/DataInputStream;
    .end local v15    # "msg":Lcom/vkontakte/android/Message;
    .end local v16    # "num":I
    .end local v18    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v19

    .line 470
    .local v19, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error writing users cache DB!"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 475
    .end local v19    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public static getUsers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 15
    .param p1, "forceOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 154
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    const-string v1, "users"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uid in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-static {v4, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 158
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 159
    const/4 v10, 0x0

    .line 160
    .local v10, "i":I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v13, "values":Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    :cond_0
    invoke-static {v8, v13}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 164
    new-instance v11, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 165
    .local v11, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v1, "uid"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 166
    const-string v1, "firstname"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 167
    const-string v1, "lastname"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 169
    const-string v1, "photo_small"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 170
    const-string v1, "f"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v11, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 171
    const-string v1, "is_friend"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v11, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 172
    if-nez p1, :cond_1

    const-string v1, "last_updated"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/32 v5, 0x15180

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 173
    :cond_1
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 175
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    .end local v10    # "i":I
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 183
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_3
    return-object v12

    .line 170
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 178
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v14

    .line 179
    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading friends cache DB!"

    invoke-static {v1, v2, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 184
    .end local v14    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static needUpdateChat(I)Z
    .locals 9
    .param p0, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 650
    const/4 v3, 0x0

    .line 651
    .local v3, "result":Z
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 652
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 654
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SELECT need_update_users FROM chats WHERE cid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 655
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 656
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_0

    move v3, v5

    .line 657
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 663
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 665
    :goto_2
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v3, v6

    .line 656
    goto :goto_0

    .line 658
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 659
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 664
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static putApiRequest(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .param p0, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 805
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 807
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 808
    .local v6, "values":Landroid/content/ContentValues;
    const-string v8, "method"

    invoke-virtual {v6, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 810
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 811
    .local v5, "s":Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 812
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 813
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 817
    const-string v8, "args"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 818
    const-string v8, "api_queue"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 819
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Insert api request "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") ok"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "s":Ljava/io/DataOutputStream;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 825
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 827
    :goto_2
    return-void

    .line 813
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "s":Ljava/io/DataOutputStream;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 814
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 820
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "s":Ljava/io/DataOutputStream;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 821
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    const-string v9, "Error writing api queue DB!"

    invoke-static {v8, v9, v7}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 826
    .end local v7    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static removeFriend(I)V
    .locals 7
    .param p0, "uid"    # I

    .prologue
    .line 236
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 237
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 239
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "is_friend"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const-string v4, "users"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 247
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_1
    return-void

    .line 242
    :catch_0
    move-exception v3

    .line 243
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing friends cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 248
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static setMessageID(II)V
    .locals 7
    .param p0, "mid"    # I
    .param p1, "newID"    # I

    .prologue
    .line 353
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 354
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 356
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v4, "messages"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 364
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    :goto_1
    return-void

    .line 359
    :catch_0
    move-exception v3

    .line 360
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 365
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static setMessageReadState(IZ)V
    .locals 6
    .param p0, "mid"    # I
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x1

    .line 339
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 342
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v4, p0, v5, v3}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 348
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    :goto_2
    return-void

    .line 342
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 349
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static setNeedUpdateChat(I)V
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 669
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 670
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 672
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "need_update_users"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 674
    const-string v4, "chats"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 680
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 682
    :goto_1
    return-void

    .line 675
    :catch_0
    move-exception v3

    .line 676
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 681
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .param p0, "id"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 764
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 765
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 766
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 769
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 770
    const-string v6, "title"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v6, "need_update_users"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 772
    const-string v6, "chats"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 774
    :cond_0
    if-eqz p3, :cond_1

    .line 775
    const-string v6, "photo"

    invoke-virtual {v4, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v6, "chats"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    :cond_1
    if-eqz p2, :cond_2

    .line 779
    const-string v6, "need_update_users"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 780
    const-string v6, "chats_users"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 781
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_3

    .line 797
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 798
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 800
    :goto_2
    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/ArrayList;)V

    .line 801
    return-void

    .line 781
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ChatUser;

    .line 782
    .local v3, "user":Lcom/vkontakte/android/ChatUser;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 783
    const-string v7, "cid"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    const-string v7, "uid"

    iget-object v8, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v8, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v7, "inviter"

    iget-object v8, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v8, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const-string v7, "invited"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    const-string v7, "chats_users"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 788
    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_4
    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_5
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "inserted user "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v9, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v9, v9, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 793
    .end local v3    # "user":Lcom/vkontakte/android/ChatUser;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 794
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error writing messages DB!"

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 799
    .end local v5    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto/16 :goto_2
.end method

.method public static updateFriends(Ljava/util/ArrayList;Z)V
    .locals 12
    .param p1, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 189
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 190
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 192
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string v6, "is_friend"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 196
    const-string v6, "users"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 224
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :goto_2
    return-void

    .line 198
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 199
    .local v3, "user":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 200
    const-string v7, "uid"

    iget v8, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v7, "firstname"

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v7, "lastname"

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v7, "photo_small"

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v7, "is_friend"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    const-string v7, "f"

    iget-boolean v8, v3, Lcom/vkontakte/android/UserProfile;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 206
    const-string v7, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v7, "users"

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v7, v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 209
    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 210
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 211
    const-string v7, "uid"

    iget v8, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v7, "name_r"

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "bd":[Ljava/lang/String;
    array-length v7, v0

    if-le v7, v10, :cond_3

    .line 216
    const-string v7, "bday"

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v7, "bmonth"

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    array-length v7, v0

    if-le v7, v11, :cond_4

    const-string v7, "byear"

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    :cond_3
    :goto_3
    const-string v7, "birthdays"

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v7, v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 225
    .end local v0    # "bd":[Ljava/lang/String;
    .end local v3    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 226
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error writing friends cache DB!"

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 219
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "bd":[Ljava/lang/String;
    .restart local v3    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_3
    const-string v7, "byear"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 232
    .end local v0    # "bd":[Ljava/lang/String;
    .end local v3    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    goto/16 :goto_2
.end method

.method public static updatePeers(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const v11, 0x77359400

    .line 402
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 405
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 407
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 428
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 434
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 435
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    :goto_2
    return-void

    .line 407
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 408
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-gez v6, :cond_2

    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v7, -0x77359400

    if-gt v6, v7, :cond_0

    .line 409
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 410
    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v6, v11, :cond_3

    .line 411
    const-string v6, "uid"

    iget v7, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v6, "firstname"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v6, "lastname"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v6, "photo_small"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v6, "is_friend"

    iget-boolean v7, v2, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 416
    const-string v6, "f"

    iget-boolean v7, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 417
    const-string v6, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v6, "users"

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v0, v6, v7, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 429
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 430
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error writing users cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 421
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v2    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_3
    const-string v6, "cid"

    iget v7, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sub-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v6, "title"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v6, "admin"

    iget v7, v2, Lcom/vkontakte/android/UserProfile;->online:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v6, "photo"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v6, "chats"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v6, v7, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 436
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method
