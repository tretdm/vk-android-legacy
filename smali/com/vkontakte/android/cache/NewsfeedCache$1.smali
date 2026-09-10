.class final Lcom/vkontakte/android/cache/NewsfeedCache$1;
.super Ljava/lang/Object;
.source "NewsfeedCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/NewsfeedCache;->replace(Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCache;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 125
    new-instance v2, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    iget-object v5, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 126
    .local v2, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :try_start_1
    const-string v5, "news"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 131
    .local v1, "entry":Lcom/vkontakte/android/NewsEntry;
    const-string v5, "news"

    invoke-virtual {v1, v0, v5}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 135
    .local v4, "x":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "vk"

    const-string v6, "Error writing news cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v4    # "x":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 139
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 140
    iget-object v5, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/NewsfeedCache;->setUpdateTime(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCache;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 143
    return-void

    .line 133
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 141
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    goto :goto_2
.end method
