.class Lcom/vkontakte/android/ImageCache$SqlRunner;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SqlRunner"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ImageCache$SqlRunner;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/vkontakte/android/ImageCache$SqlRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkontakte/android/ImageCache;->sqlRunning:Z

    .line 372
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/ImageCache;->access$1()V

    .line 373
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->access$2()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .local v0, "q":Ljava/lang/String;
    :try_start_1
    sget-object v1, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    .end local v0    # "q":Ljava/lang/String;
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v1

    goto :goto_0

    .line 376
    .restart local v0    # "q":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
