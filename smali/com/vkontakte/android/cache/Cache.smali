.class public Lcom/vkontakte/android/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/Cache$OpenHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static lockSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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
    .line 381
    .local p0, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 385
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

    .line 392
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 393
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    :goto_2
    return-void

    .line 385
    :cond_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 386
    .local v2, "m":Lcom/vkontakte/android/Message;
    new-instance v5, Lcom/vkontakte/android/cache/AddMessageAction;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/cache/AddMessageAction;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/cache/AddMessageAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 388
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :catch_0
    move-exception v3

    .line 389
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 394
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static applyMessagesActions(Ljava/util/ArrayList;)I
    .locals 11
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
    .line 709
    .local p0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    const/4 v3, 0x0

    .line 710
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 711
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 712
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 714
    .local v4, "t":J
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 715
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 716
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 721
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 727
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 728
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 731
    :goto_2
    sget-object v9, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 732
    return v3

    .line 716
    :cond_0
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/cache/MessagesAction;

    .line 717
    .local v0, "act":Lcom/vkontakte/android/cache/MessagesAction;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 718
    .local v6, "t1":J
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/cache/MessagesAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 722
    .end local v0    # "act":Lcom/vkontakte/android/cache/MessagesAction;
    .end local v6    # "t1":J
    :catch_0
    move-exception v8

    .line 723
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    const-string v10, "Error writing messages cache DB!"

    invoke-static {v9, v10, v8}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 729
    .end local v8    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public static containsMessage(I)Z
    .locals 14
    .param p0, "mid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 533
    const/4 v10, 0x0

    .line 534
    .local v10, "result":Z
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 535
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 537
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

    .line 538
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v10, v12

    .line 539
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 545
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    :goto_2
    return v10

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v10, v13

    .line 538
    goto :goto_0

    .line 540
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 541
    .local v11, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error writing messages cache DB!"

    invoke-static {v1, v2, v11}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 546
    .end local v11    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static deleteAllMessages()V
    .locals 6

    .prologue
    .line 887
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 888
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 890
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "messages"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 891
    const-string v3, "chats"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 892
    const-string v3, "chats_users"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 899
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 901
    :goto_1
    return-void

    .line 894
    :catch_0
    move-exception v2

    .line 895
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error reading messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 900
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static deleteApiRequest(I)V
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 1022
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1025
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

    .line 1030
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1031
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    :goto_1
    return-void

    .line 1026
    :catch_0
    move-exception v2

    .line 1027
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing api queue DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1032
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static deleteDialog(I)V
    .locals 6
    .param p0, "peer"    # I

    .prologue
    .line 551
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 552
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 554
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

    .line 559
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 560
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    :goto_1
    return-void

    .line 555
    :catch_0
    move-exception v2

    .line 556
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 561
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
    .line 873
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 874
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 876
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

    .line 881
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 882
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 884
    :goto_1
    return-void

    .line 877
    :catch_0
    move-exception v2

    .line 878
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error reading messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 883
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static getApiRequest()Lcom/vkontakte/android/data/PersistentAPIRequest;
    .locals 18

    .prologue
    .line 1036
    const/4 v14, 0x0

    .line 1037
    .local v14, "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    new-instance v12, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 1038
    .local v12, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1040
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v16, "values":Landroid/content/ContentValues;
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

    .line 1042
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1043
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1044
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1045
    new-instance v15, Lcom/vkontakte/android/data/PersistentAPIRequest;

    invoke-direct {v15}, Lcom/vkontakte/android/data/PersistentAPIRequest;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1046
    .end local v14    # "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .local v15, "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    :try_start_1
    const-string v2, "id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/data/PersistentAPIRequest;->id:I

    .line 1047
    const-string v2, "args"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "args"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v2, v15, Lcom/vkontakte/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    .line 1048
    const-string v2, "user_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "user_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v2, v15, Lcom/vkontakte/android/data/PersistentAPIRequest;->userdata:Lorg/json/JSONObject;

    .line 1049
    const-string v2, "success_callback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1051
    :try_start_2
    const-string v2, "success_callback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1052
    .local v13, "m":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 1053
    .local v10, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    aget-object v2, v13, v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v3, v4

    invoke-virtual {v10, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/data/PersistentAPIRequest;->callback:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1056
    .end local v10    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "m":[Ljava/lang/String;
    :cond_0
    :goto_2
    :try_start_3
    const-string v2, "method"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/data/PersistentAPIRequest;->method:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v14, v15

    .line 1058
    .end local v15    # "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .restart local v14    # "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    :cond_1
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1063
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "values":Landroid/content/ContentValues;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1064
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1066
    :goto_4
    return-object v14

    .line 1047
    .end local v14    # "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .restart local v16    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1048
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1054
    :catch_0
    move-exception v17

    .local v17, "x":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "vk"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1059
    .end local v17    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v17

    move-object v14, v15

    .line 1060
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .end local v16    # "values":Landroid/content/ContentValues;
    .restart local v14    # "res":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .restart local v17    # "x":Ljava/lang/Exception;
    :goto_5
    const-string v2, "vk"

    const-string v3, "Error reading api queue DB!"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1065
    .end local v17    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_4

    .line 1059
    :catch_3
    move-exception v17

    goto :goto_5
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
    .line 95
    new-instance v6, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v6, v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 96
    .local v6, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 97
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 100
    .local v3, "d":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    const-wide/32 v12, 0x5265c00

    add-long v12, v12, p0

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 102
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

    .line 103
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_1

    .line 104
    const/4 v7, 0x0

    .line 105
    .local v7, "i":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v10, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    :cond_0
    invoke-static {v2, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 109
    new-instance v8, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v8}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 110
    .local v8, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v12, "uid"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 111
    const-string v12, "firstname"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 112
    const-string v12, "lastname"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 113
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

    .line 114
    const-string v12, "photo_small"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 115
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

    .line 116
    const-string v12, "name_r"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 117
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v7, v7, 0x1

    .line 119
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 121
    .end local v7    # "i":I
    .end local v8    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 127
    invoke-virtual {v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_2
    return-object v9

    .line 115
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

    .line 122
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    .end local v7    # "i":I
    .end local v8    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 123
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    const-string v13, "Error reading friends cache DB!"

    invoke-static {v12, v13, v11}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 128
    .end local v11    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method public static getChatAdmin(I)I
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 775
    const/4 v3, 0x0

    .line 776
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 777
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 779
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

    .line 780
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 781
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 782
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 788
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 790
    :goto_1
    return v3

    .line 783
    :catch_0
    move-exception v4

    .line 784
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 789
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

    .line 755
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "?"

    aput-object v5, v3, v6

    .line 756
    .local v3, "result":[Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 757
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 759
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

    .line 760
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 761
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 762
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 763
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 769
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 771
    :goto_1
    return-object v3

    .line 764
    :catch_0
    move-exception v4

    .line 765
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 770
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
    .line 794
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v11, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 796
    .local v11, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 797
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 800
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

    .line 801
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 802
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 803
    .local v18, "values":Landroid/content/ContentValues;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 805
    :cond_0
    move-object/from16 v0, v18

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 806
    new-instance v9, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v9}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 807
    .local v9, "cu":Lcom/vkontakte/android/ChatUser;
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    iput-object v2, v9, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 808
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    iput-object v2, v9, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 809
    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    const-string v3, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 810
    iget-object v2, v9, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    const-string v3, "inviter"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 811
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

    .line 812
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

    .line 813
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 816
    .end local v9    # "cu":Lcom/vkontakte/android/ChatUser;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v18    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 822
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 824
    :goto_1
    invoke-static {v12}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    .line 825
    .local v14, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 826
    .local v15, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 829
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 833
    return-object v16

    .line 817
    .end local v14    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v15    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v19

    .line 818
    .local v19, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading messages cache DB!"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 826
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v14    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v15    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/UserProfile;

    .line 827
    .local v13, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 829
    .end local v13    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/ChatUser;

    .line 830
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

    .line 831
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

    .line 823
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
    .line 419
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    new-instance v12, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 421
    .local v12, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 423
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

    .line 424
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 425
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

    .line 426
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 427
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 429
    :cond_0
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 431
    new-instance v13, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    .line 434
    .local v13, "msg":Lcom/vkontakte/android/Message;
    new-instance v15, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v15}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 435
    .local v15, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v13, Lcom/vkontakte/android/Message;->peer:I

    iput v2, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 436
    iget v2, v13, Lcom/vkontakte/android/Message;->peer:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_3

    .line 437
    const-string v2, "firstname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 438
    const-string v2, "lastname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 439
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

    .line 440
    const-string v2, "photo_small"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 441
    iget v2, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkontakte/android/data/Friends;->getOnlineStatus(I)I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/UserProfile;->online:I

    .line 449
    :goto_0
    new-instance v11, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v11}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 450
    .local v11, "e":Lcom/vkontakte/android/DialogEntry;
    iput-object v13, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 451
    iput-object v15, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 452
    const-string v2, "unread_count"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 453
    const-string v2, "unread_count"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 455
    :cond_1
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    .end local v11    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v13    # "msg":Lcom/vkontakte/android/Message;
    .end local v15    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 464
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    :goto_2
    return-object v14

    .line 443
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "msg":Lcom/vkontakte/android/Message;
    .restart local v15    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v16    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_2
    const-string v2, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 444
    const-string v2, "admin"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 445
    const-string v2, "admin"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/UserProfile;->online:I

    .line 446
    :cond_4
    const-string v2, "photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 459
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "msg":Lcom/vkontakte/android/Message;
    .end local v15    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v16    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v17

    .line 460
    .local v17, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading messages cache DB!"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 465
    .end local v17    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getDialogsCount()I
    .locals 7

    .prologue
    .line 470
    const/4 v3, 0x0

    .line 471
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 472
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 474
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v5, "SELECT count(*) FROM dialogs"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 475
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 476
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 483
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :goto_1
    return v3

    .line 478
    :catch_0
    move-exception v4

    .line 479
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 484
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getFriends()Ljava/util/ArrayList;
    .locals 11
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
    const/4 v9, 0x1

    .line 133
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 135
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    const-string v8, "SELECT users.* FROM users LEFT JOIN friends_hints_order ON users.uid=friends_hints_order.uid WHERE is_friend=1 ORDER BY friends_hints_order.list_order ASC"

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "i":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v6, "values":Landroid/content/ContentValues;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    :cond_0
    invoke-static {v0, v6}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 145
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 146
    .local v4, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v8, "uid"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 147
    const-string v8, "firstname"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 148
    const-string v8, "lastname"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 150
    const-string v8, "photo_small"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 151
    const-string v8, "f"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_2

    move v8, v9

    :goto_0
    iput-boolean v8, v4, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 152
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 153
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 157
    .end local v3    # "i":I
    .end local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 163
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :goto_2
    return-object v5

    .line 151
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "i":I
    .restart local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 158
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "i":I
    .end local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 159
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    const-string v9, "Error reading friends cache DB!"

    invoke-static {v8, v9, v7}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 164
    .end local v7    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static getImportedContacts(I)Ljava/util/ArrayList;
    .locals 15
    .param p0, "service"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 215
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 216
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    const-string v1, "imported_contacts"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "service="

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

    .line 219
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 220
    const/4 v10, 0x0

    .line 221
    .local v10, "i":I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v13, "values":Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 224
    :cond_0
    invoke-static {v8, v13}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 225
    new-instance v11, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 226
    .local v11, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v1, "vk_id"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 227
    const-string v1, "external_id"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 228
    const-string v1, "external_name"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 229
    const-string v1, "external_photo"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 230
    const-string v1, "description"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 231
    const-string v1, "req_sent"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v11, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 232
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v10, v10, 0x1

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    .end local v10    # "i":I
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 242
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_1
    return-object v12

    .line 237
    :catch_0
    move-exception v14

    .line 238
    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading friends cache DB!"

    invoke-static {v1, v2, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    .end local v14    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getMaxMsgId()I
    .locals 7

    .prologue
    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 692
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 694
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v5, "SELECT max(mid) FROM messages"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 695
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 696
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 697
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 703
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    :goto_1
    return v3

    .line 698
    :catch_0
    move-exception v4

    .line 699
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 704
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

    .line 659
    const/4 v10, 0x0

    .line 660
    .local v10, "result":Lcom/vkontakte/android/Message;
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 661
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 663
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

    .line 664
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 665
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 666
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 667
    .local v12, "values":Landroid/content/ContentValues;
    invoke-static {v8, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 668
    new-instance v11, Lcom/vkontakte/android/Message;

    invoke-direct {v11, v12}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    .end local v10    # "result":Lcom/vkontakte/android/Message;
    .local v11, "result":Lcom/vkontakte/android/Message;
    move-object v10, v11

    .line 670
    .end local v11    # "result":Lcom/vkontakte/android/Message;
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v10    # "result":Lcom/vkontakte/android/Message;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 671
    if-eqz v10, :cond_2

    iget v1, v10, Lcom/vkontakte/android/Message;->peer:I

    if-le v1, v14, :cond_2

    .line 672
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

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 674
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 675
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 677
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 684
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 686
    :goto_1
    return-object v10

    .line 679
    :catch_0
    move-exception v13

    .line 680
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error writing users cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 685
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
    .line 904
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v11, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 906
    .local v11, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 908
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

    const-string v8, "time desc, mid desc"

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

    .line 909
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 910
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 911
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 913
    .local v13, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v10, v13}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 915
    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/Message;

    invoke-direct {v3, v13}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v12, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 916
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 918
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 924
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 926
    :goto_1
    return-object v12

    .line 919
    :catch_0
    move-exception v14

    .line 920
    .local v14, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading messages cache DB!"

    invoke-static {v2, v3, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 925
    .end local v14    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getMessagesHistoryCount(I)I
    .locals 7
    .param p0, "peer"    # I

    .prologue
    .line 736
    const/4 v3, 0x0

    .line 737
    .local v3, "result":I
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 738
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 740
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

    .line 741
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 742
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 743
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 749
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    :goto_1
    return v3

    .line 744
    :catch_0
    move-exception v4

    .line 745
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 750
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getNumUnreadMessages(I)I
    .locals 12
    .param p0, "peer"    # I

    .prologue
    .line 362
    const/4 v10, -0x1

    .line 363
    .local v10, "result":I
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 364
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 366
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "messages_unread_counters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "unread_count"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "peer="

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

    .line 367
    .local v8, "crsr":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 369
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v8    # "crsr":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 375
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    :goto_1
    return v10

    .line 370
    :catch_0
    move-exception v11

    .line 371
    .local v11, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error writing messages cache DB!"

    invoke-static {v1, v2, v11}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 376
    .end local v11    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

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
    .line 930
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v9, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 932
    .local v9, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 934
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

    .line 935
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 936
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 937
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 939
    .local v11, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v8, v11}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 940
    const/4 v1, 0x0

    new-instance v2, Lcom/vkontakte/android/Message;

    invoke-direct {v2, v11}, Lcom/vkontakte/android/Message;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v10, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 941
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 949
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 951
    :goto_1
    return-object v10

    .line 944
    :catch_0
    move-exception v12

    .line 945
    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading messages cache DB!"

    invoke-static {v1, v2, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 950
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
    .line 619
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v12, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 621
    .local v12, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 623
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

    .line 624
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 625
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 626
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 628
    .local v18, "values":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 629
    new-instance v15, Lcom/vkontakte/android/Message;

    invoke-direct {v15}, Lcom/vkontakte/android/Message;-><init>()V

    .line 630
    .local v15, "msg":Lcom/vkontakte/android/Message;
    const-string v2, "mid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->id:I

    .line 631
    const-string v2, "peer"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->peer:I

    .line 632
    const-string v2, "sender"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->sender:I

    .line 633
    const-string v2, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 634
    const-string v2, "time"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/vkontakte/android/Message;->time:I

    .line 635
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

    .line 636
    const-string v2, "attachments"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 637
    .local v10, "att":[B
    if-eqz v10, :cond_1

    .line 638
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 639
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 640
    .local v14, "is":Ljava/io/DataInputStream;
    invoke-virtual {v14}, Ljava/io/DataInputStream;->read()I

    move-result v16

    .line 641
    .local v16, "num":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-lt v13, v0, :cond_4

    .line 645
    .end local v13    # "i":I
    .end local v14    # "is":Ljava/io/DataInputStream;
    .end local v16    # "num":I
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 652
    .end local v10    # "att":[B
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "msg":Lcom/vkontakte/android/Message;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 653
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    :goto_3
    return-object v17

    .line 635
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "msg":Lcom/vkontakte/android/Message;
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 642
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

    .line 641
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 648
    .end local v10    # "att":[B
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v14    # "is":Ljava/io/DataInputStream;
    .end local v15    # "msg":Lcom/vkontakte/android/Message;
    .end local v16    # "num":I
    .end local v18    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v19

    .line 649
    .local v19, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error writing users cache DB!"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 654
    .end local v19    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public static getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "forceOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
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
    .line 169
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/List;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUsers(Ljava/util/List;ZI)Ljava/util/ArrayList;
    .locals 16
    .param p1, "forceOld"    # Z
    .param p2, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 174
    .local v10, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 175
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v13, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    if-nez p2, :cond_4

    .line 179
    :try_start_0
    const-string v2, "users"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 183
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 184
    const/4 v11, 0x0

    .line 185
    .local v11, "i":I
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v14, "values":Landroid/content/ContentValues;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    :cond_0
    invoke-static {v9, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 189
    new-instance v12, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v12}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 190
    .local v12, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v2, "uid"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 191
    const-string v2, "firstname"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 192
    const-string v2, "lastname"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 194
    const-string v2, "photo_small"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 195
    const-string v2, "f"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v12, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 196
    const-string v2, "is_friend"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v12, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 197
    if-nez p1, :cond_1

    const-string v2, "last_updated"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x15180

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 198
    :cond_1
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 200
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    .end local v11    # "i":I
    .end local v12    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_3
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 208
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :goto_4
    return-object v13

    .line 181
    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT users.uid, users_name_cases.firstname, users_name_cases.lastname, users.photo_small, users.f, users.is_friend, users.last_updated FROM users_name_cases JOIN users ON users_name_cases.uid=users.uid WHERE users_name_cases.uid IN ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and name_case="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 195
    .restart local v11    # "i":I
    .restart local v12    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 196
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 203
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v12    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 204
    .local v15, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading friends cache DB!"

    invoke-static {v2, v3, v15}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 209
    .end local v15    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method public static needUpdateChat(I)Z
    .locals 9
    .param p0, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 837
    const/4 v3, 0x1

    .line 838
    .local v3, "result":Z
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 839
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 841
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

    .line 842
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 843
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v3, v5

    .line 844
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 850
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 852
    :goto_2
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    move v3, v6

    .line 843
    goto :goto_0

    .line 845
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 846
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error reading messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 851
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    .locals 9
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Ljava/lang/reflect/Method;
    .param p3, "userdata"    # Lorg/json/JSONObject;

    .prologue
    .line 996
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 997
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 999
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "method"

    invoke-virtual {v4, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v6, "args"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    if-eqz p2, :cond_0

    .line 1003
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1004
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, "name":Ljava/lang/String;
    const-string v6, "success_callback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 1008
    const-string v6, "user_data"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_1
    const-string v6, "api_queue"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1011
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Insert api request "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") ok"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1017
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1019
    :goto_1
    return-void

    .line 1012
    :catch_0
    move-exception v5

    .line 1013
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error writing api queue DB!"

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1018
    .end local v5    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static removeFriend(I)V
    .locals 7
    .param p0, "uid"    # I

    .prologue
    .line 342
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 343
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 345
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "is_friend"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 347
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

    .line 352
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 353
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :goto_1
    return-void

    .line 348
    :catch_0
    move-exception v3

    .line 349
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing friends cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 354
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static saveImportedContacts(Ljava/util/List;IZ)V
    .locals 9
    .param p1, "service"    # I
    .param p2, "deleteOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 253
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 254
    if-eqz p2, :cond_0

    .line 255
    const-string v5, "imported_contacts"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "service="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v3, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 271
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 277
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 278
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_2
    sget-object v5, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 281
    return-void

    .line 257
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 258
    .local v2, "u":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 259
    const-string v5, "vk_id"

    iget v7, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v7, "external_id"

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-nez v5, :cond_2

    .line 262
    const-string v5, "external_name"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v5, "external_photo"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_2
    const-string v5, "service"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v5, "description"

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v5, "req_sent"

    iget-boolean v7, v2, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 269
    const-string v5, "imported_contacts"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v5, v7, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 272
    .end local v2    # "u":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 273
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error writing messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static setMessageID(II)V
    .locals 7
    .param p0, "mid"    # I
    .param p1, "newID"    # I

    .prologue
    .line 517
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 518
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 520
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
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

    .line 527
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 528
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    :goto_1
    return-void

    .line 523
    :catch_0
    move-exception v3

    .line 524
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 529
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

    .line 489
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 490
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 492
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

    .line 497
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 498
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    :goto_2
    return-void

    .line 492
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v2

    .line 494
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing messages cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 499
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static setMessageReadStateUpto(IIZZ)V
    .locals 9
    .param p0, "mid"    # I
    .param p1, "peer"    # I
    .param p2, "state"    # Z
    .param p3, "in"    # Z

    .prologue
    const/4 v3, 0x1

    .line 503
    new-instance v7, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 504
    .local v7, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v7}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 506
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    :goto_0
    move v1, p0

    move v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(IIIZI)V

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->apply(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 512
    invoke-virtual {v7}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 514
    :goto_2
    return-void

    .line 506
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v8

    .line 508
    .local v8, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    const-string v1, "Error writing messages cache DB!"

    invoke-static {v0, v1, v8}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 513
    .end local v8    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static setNeedUpdateChat(I)V
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 856
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SET NEED UPDATE CHAT "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 858
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 860
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "need_update_users"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
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

    .line 867
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 868
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 870
    :goto_1
    return-void

    .line 863
    :catch_0
    move-exception v3

    .line 864
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing messages cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 869
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
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const/4 v9, 0x0

    .line 955
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 956
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 957
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 960
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 961
    const-string v6, "title"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v6, "need_update_users"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
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

    .line 965
    :cond_0
    if-eqz p3, :cond_1

    .line 966
    const-string v6, "photo"

    invoke-virtual {v4, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
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

    .line 969
    :cond_1
    if-eqz p2, :cond_3

    .line 970
    const-string v6, "need_update_users"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
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

    .line 972
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

    .line 973
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_4

    .line 989
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 990
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 992
    :goto_2
    invoke-static {v2, v9}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 993
    return-void

    .line 973
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ChatUser;

    .line 974
    .local v3, "user":Lcom/vkontakte/android/ChatUser;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 975
    const-string v7, "cid"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string v7, "uid"

    iget-object v8, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v8, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v7, "inviter"

    iget-object v8, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v8, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    const-string v7, "invited"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    const-string v7, "chats_users"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 980
    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_5
    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 985
    .end local v3    # "user":Lcom/vkontakte/android/ChatUser;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 986
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error writing messages DB!"

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 991
    .end local v5    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static updateFriends(Ljava/util/ArrayList;Z)V
    .locals 13
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
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 285
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 286
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 288
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 289
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v5, "values":Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    const-string v7, "is_friend"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 293
    const-string v7, "users"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    const-string v7, "friends_hints_order"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    :cond_0
    const/4 v3, 0x0

    .line 297
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 329
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v3    # "i":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 335
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 336
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :goto_2
    sget-object v7, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 339
    return-void

    .line 297
    .restart local v3    # "i":I
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 298
    .local v4, "user":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 299
    const-string v7, "uid"

    iget v9, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v7, "firstname"

    iget-object v9, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v7, "lastname"

    iget-object v9, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v7, "photo_small"

    iget-object v9, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v7, "is_friend"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 304
    const-string v7, "f"

    iget-boolean v9, v4, Lcom/vkontakte/android/UserProfile;->f:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 305
    const-string v7, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    div-int/lit16 v9, v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v7, "users"

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v1, v7, v9, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 308
    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 309
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 310
    const-string v7, "uid"

    iget v9, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v7, "name_r"

    iget-object v9, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    const-string v9, "\\."

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "bd":[Ljava/lang/String;
    array-length v7, v0

    if-le v7, v11, :cond_2

    .line 315
    const-string v7, "bday"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v7, "bmonth"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    array-length v7, v0

    if-le v7, v12, :cond_4

    const-string v7, "byear"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    :cond_2
    :goto_3
    const-string v7, "birthdays"

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v1, v7, v9, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 322
    .end local v0    # "bd":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 324
    const-string v7, "uid"

    iget v9, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v9, "list_order"

    if-eqz p1, :cond_5

    move v7, v3

    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v7, "friends_hints_order"

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 318
    .restart local v0    # "bd":[Ljava/lang/String;
    :cond_4
    const-string v7, "byear"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 330
    .end local v0    # "bd":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 331
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    const-string v8, "Error writing friends cache DB!"

    invoke-static {v7, v8, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 325
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v4    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_5
    const v7, 0x5f5e0ff

    goto :goto_4

    .line 337
    .end local v3    # "i":I
    .end local v4    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v7

    goto/16 :goto_2
.end method

.method public static updateMessagesUnreadCount(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "counts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v2, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 399
    .local v2, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v3, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 413
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 414
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :goto_2
    return-void

    .line 403
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 404
    .local v1, "dlg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v5, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "update unread for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v7, "peer"

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v7, "unread_count"

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v5, "messages_unread_counters"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v5, v7, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 409
    .end local v1    # "dlg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 410
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error writing messages cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 415
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static updatePeers(Ljava/util/List;Z)V
    .locals 1
    .param p1, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;ZI)V

    .line 566
    return-void
.end method

.method public static updatePeers(Ljava/util/List;ZI)V
    .locals 13
    .param p1, "replace"    # Z
    .param p2, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    const v12, 0x77359400

    const/4 v6, 0x5

    .line 570
    new-instance v1, Lcom/vkontakte/android/cache/Cache$OpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 571
    .local v1, "helper":Lcom/vkontakte/android/cache/Cache$OpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 573
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 574
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 576
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 606
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 612
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 613
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :goto_2
    sget-object v5, Lcom/vkontakte/android/cache/Cache;->lockSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 616
    return-void

    .line 576
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 577
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-gez v5, :cond_2

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v8, -0x77359400

    if-gt v5, v8, :cond_0

    .line 578
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 579
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v5, v12, :cond_6

    .line 580
    const-string v5, "uid"

    iget v8, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v5, "firstname"

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v5, "lastname"

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    if-nez p2, :cond_4

    .line 584
    const-string v5, "photo_small"

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v5, "is_friend"

    iget-boolean v8, v2, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 586
    const-string v5, "f"

    iget-boolean v8, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 587
    const-string v5, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    const-string v8, "users"

    const/4 v9, 0x0

    if-eqz p1, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v0, v8, v9, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 607
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 608
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error writing users cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 588
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v2    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x4

    goto :goto_3

    .line 590
    :cond_4
    if-eqz p1, :cond_5

    .line 591
    :try_start_3
    const-string v5, "users_name_cases"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND name_case="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 593
    :cond_5
    const-string v5, "name_case"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v5, "users_name_cases"

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 598
    :cond_6
    const-string v5, "cid"

    iget v8, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sub-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v5, "title"

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v5, "admin"

    iget v8, v2, Lcom/vkontakte/android/UserProfile;->online:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v5, "photo"

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v5, "need_update_users"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    const-string v5, "chats"

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v0, v5, v8, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 614
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method
