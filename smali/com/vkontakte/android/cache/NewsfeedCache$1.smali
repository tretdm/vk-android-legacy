.class Lcom/vkontakte/android/cache/NewsfeedCache$1;
.super Ljava/lang/Object;
.source "NewsfeedCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/NewsfeedCache;->replace([Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$items:[Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$items:[Lcom/vkontakte/android/NewsEntry;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCache;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 105
    new-instance v2, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    iget-object v4, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :try_start_1
    const-string v4, "news"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$items:[Lcom/vkontakte/android/NewsEntry;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 119
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 120
    iget-object v4, p0, Lcom/vkontakte/android/cache/NewsfeedCache$1;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/NewsfeedCache;->setUpdateTime(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCache;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 123
    return-void

    .line 110
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :cond_0
    :try_start_3
    aget-object v1, v5, v4

    .line 111
    .local v1, "entry":Lcom/vkontakte/android/NewsEntry;
    const-string v7, "news"

    invoke-virtual {v1, v0, v7}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "entry":Lcom/vkontakte/android/NewsEntry;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "x":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "vk"

    const-string v5, "Error writing news cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 121
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_2
.end method
