.class final Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;
.super Ljava/lang/Object;
.source "NewsfeedCommentsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->replace(Ljava/util/ArrayList;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 74
    new-instance v2, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;

    iget-object v5, p0, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 75
    .local v2, "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :try_start_1
    const-string v5, "news_comments"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    iget-object v5, p0, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 80
    .local v1, "entry":Lcom/vkontakte/android/NewsEntry;
    const-string v5, "news_comments"

    invoke-virtual {v1, v0, v5}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    .end local v1    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 84
    .local v4, "x":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "vk"

    const-string v6, "Error writing news_comments cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v4    # "x":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->close()V

    .line 89
    iget-object v5, p0, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->setUpdateTime(Landroid/content/Context;I)V

    .line 90
    const-string v5, "vk"

    const-string v6, "Updated news comments cache"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 93
    return-void

    .line 82
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 91
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .restart local v4    # "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error updating comments cache"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
