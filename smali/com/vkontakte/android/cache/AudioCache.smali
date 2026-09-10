.class public Lcom/vkontakte/android/cache/AudioCache;
.super Ljava/lang/Object;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;,
        Lcom/vkontakte/android/cache/AudioCache$FileRange;,
        Lcom/vkontakte/android/cache/AudioCache$Proxy;,
        Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;,
        Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    }
.end annotation


# static fields
.field public static final ACTION_ALBUM_ART_AVAILABLE:Ljava/lang/String; = "com.vkontakte.android.ALBUM_ART_AVAILABLE"

.field public static final ACTION_FILE_ADDED:Ljava/lang/String; = "com.vkontakte.android.AUDIO_FILE_ADDED"

.field public static final ACTION_FILE_DELETED:Ljava/lang/String; = "com.vkontakte.android.AUDIO_FILE_DELETED"

.field private static final COPY_BUFFER_SIZE:I = 0x2800

.field public static final ID3_MAX_SIZE:I = 0xfa000

.field private static final PROXY_PORT:I = 0xbcc9

.field public static cacheReqs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static cachedIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field private static deleteCurrent:Z

.field private static dlPartsThread:Ljava/lang/Thread;

.field private static dlRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/cache/AudioCache$RangesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static filledIDs:Z

.field private static ranges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/cache/AudioCache$RangesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final retryIntervals:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    .line 47
    sput-boolean v1, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->retryIntervals:[J

    .line 59
    sput-boolean v1, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    .line 233
    return-void

    .line 52
    :array_0
    .array-data 8
        0x3e8
        0x7d0
        0x1388
        0x2710
        0x3a98
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 233
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    return-void
.end method

.method public static clear()V
    .locals 11

    .prologue
    .line 609
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 610
    .local v3, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 611
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "vk"

    const-string v7, "Clear audio cache"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :try_start_0
    const-string v6, "files"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 615
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 619
    const-string v6, "vk"

    const-string v7, "All deleted"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v6, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 621
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "reload_cached_list"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v2    # "files":[Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 628
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 629
    return-void

    .line 615
    .restart local v2    # "files":[Ljava/io/File;
    :cond_0
    :try_start_1
    aget-object v1, v2, v6

    .line 616
    .local v1, "f":Ljava/io/File;
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Deleting: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 615
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 624
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :catch_0
    move-exception v5

    .line 625
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static dbgRanges(Ljava/util/ArrayList;I)V
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/cache/AudioCache$FileRange;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    div-int/lit8 v0, p1, 0x1e

    .line 1027
    .local v0, "cs":I
    const-string v5, ""

    .line 1028
    .local v5, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x1e

    if-lt v2, v6, :cond_0

    .line 1040
    const-string v7, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    iget v6, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    iget v6, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    return-void

    .line 1029
    :cond_0
    mul-int v3, v0, v2

    .line 1030
    .local v3, "l":I
    const/4 v1, 0x0

    .line 1031
    .local v1, "f":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1037
    :goto_1
    if-eqz v1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1028
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1031
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 1032
    .local v4, "rn":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v7, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-gt v7, v3, :cond_1

    iget v7, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-lt v7, v3, :cond_1

    .line 1033
    const/4 v1, 0x1

    .line 1034
    goto :goto_1

    .line 1038
    .end local v4    # "rn":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static deleteCurrent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 632
    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    .line 633
    .local v2, "f":Lcom/vkontakte/android/AudioFile;
    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    if-nez v7, :cond_0

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 634
    :cond_0
    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 635
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 636
    .local v4, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 638
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v7, "files"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "aid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and oid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 641
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 642
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "reload_cached_list"

    invoke-virtual {v5, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 645
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 646
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".deleted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    .local v3, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 649
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 650
    .local v6, "os":Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 651
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 653
    .end local v6    # "os":Ljava/io/FileOutputStream;
    :goto_1
    sput-boolean v10, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    .line 654
    return-void

    .line 652
    :catch_0
    move-exception v7

    goto :goto_1

    .line 639
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static deleteOld()V
    .locals 15

    .prologue
    .line 579
    new-instance v9, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 580
    .local v9, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 582
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x0

    const-string v3, "user=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "lastplay asc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 583
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 584
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 585
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v12, v1, -0xa

    .line 586
    .local v12, "nDel":I
    const-string v13, ""

    .line 587
    .local v13, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v12, :cond_1

    .line 594
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 595
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 596
    const-string v1, "files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 597
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "reload_cached_list"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "nDel":I
    .end local v13    # "where":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 605
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 606
    return-void

    .line 588
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v12    # "nDel":I
    .restart local v13    # "where":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted audio "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "or(oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 590
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".vkontakte/cache/audio/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 591
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 592
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 587
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 601
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v12    # "nDel":I
    .end local v13    # "where":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 602
    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private static deleteTempFile(II)V
    .locals 2
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 330
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$3;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/cache/AudioCache$3;-><init>(II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    return-void
.end method

.method private static downloadParts(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V
    .locals 2
    .param p0, "ri"    # Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    .prologue
    .line 351
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$4;

    invoke-direct {v1}, Lcom/vkontakte/android/cache/AudioCache$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    .line 399
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 401
    :cond_0
    return-void
.end method

.method public static endPlayback(II)V
    .locals 16
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 236
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "End playback for "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-boolean v13, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    if-eqz v13, :cond_1

    .line 238
    const/4 v13, 0x0

    sput-boolean v13, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    .line 239
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    sget v13, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, p0

    if-eq v0, v13, :cond_2

    sget-object v13, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 243
    :cond_2
    sget-object v13, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 244
    sget-object v13, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    iget-object v6, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 245
    .local v6, "fr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    new-instance v13, Lcom/vkontakte/android/cache/AudioCache$2;

    invoke-direct {v13}, Lcom/vkontakte/android/cache/AudioCache$2;-><init>()V

    invoke-static {v6, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    sget-object v13, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    iget v10, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->l:I

    .line 251
    .local v10, "l":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 256
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 257
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0

    .line 251
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 252
    .local v12, "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {v2, v10}, Lcom/vkontakte/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 261
    .end local v2    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v12    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_4
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v7, v13, :cond_7

    .line 271
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 273
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 274
    .local v11, "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v7, v13, :cond_b

    .line 283
    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 284
    const-string v13, "vk"

    const-string v14, "After remove overlapping"

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_e

    .line 290
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    iget v13, v13, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-nez v13, :cond_f

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    iget v13, v13, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-ne v13, v10, :cond_f

    .line 291
    const-string v13, "vk"

    const-string v14, "We already have full file"

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    .end local v11    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_7
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v9, v13, :cond_8

    .line 261
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 263
    :cond_8
    if-ne v9, v7, :cond_a

    .line 262
    :cond_9
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 264
    :cond_a
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 265
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .local v1, "a":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 266
    .local v3, "b":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v13, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v14, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-lt v13, v14, :cond_9

    iget v13, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v14, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v13, v14, :cond_9

    .line 267
    const/4 v13, 0x0

    invoke-virtual {v6, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 275
    .end local v1    # "a":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v3    # "b":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v9    # "j":I
    .restart local v11    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_b
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 276
    .restart local v12    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    if-nez v12, :cond_c

    .line 274
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 277
    :cond_c
    iget v13, v12, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v14, v11, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v13, v14, :cond_d

    .line 278
    iget v13, v12, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v13, v11, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 279
    const/4 v13, 0x0

    invoke-virtual {v6, v7, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 281
    :cond_d
    move-object v11, v12

    goto :goto_7

    .line 285
    .end local v12    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_e
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 286
    .restart local v12    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .restart local v2    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {v2, v10}, Lcom/vkontakte/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    goto/16 :goto_4

    .line 294
    .end local v2    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v12    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_f
    sget-object v13, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v5, "dl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    check-cast v11, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 297
    .restart local v11    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    const/4 v7, 0x1

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v7, v13, :cond_11

    .line 305
    iget v13, v11, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-ge v13, v10, :cond_10

    .line 306
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 307
    .local v4, "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v13, v11, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v13, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 308
    iput v10, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 309
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v4    # "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_10
    const-string v13, "vk"

    const-string v14, "need to download: "

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {v5, v10}, Lcom/vkontakte/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    .line 313
    new-instance v8, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    const/4 v13, 0x0

    invoke-direct {v8, v13}, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;-><init>(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V

    .line 314
    .local v8, "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    iput v10, v8, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->l:I

    .line 315
    sget-object v13, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    iget-object v13, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    iput-object v13, v8, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    .line 316
    iput-object v5, v8, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 317
    sget-object v13, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    iget-object v13, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    iput-object v13, v8, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    .line 318
    invoke-static {v8}, Lcom/vkontakte/android/cache/AudioCache;->downloadParts(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V

    goto/16 :goto_0

    .line 298
    .end local v8    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    :cond_11
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 299
    .restart local v12    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 300
    .restart local v4    # "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v13, v11, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v13, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 301
    iget v13, v12, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v13, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 302
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    move-object v11, v12

    .line 297
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 321
    .end local v4    # "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v5    # "dl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v12    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_12
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    .line 325
    .end local v6    # "fr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v7    # "i":I
    .end local v10    # "l":I
    .end local v11    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_13
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v13

    if-nez v13, :cond_0

    .line 326
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0
.end method

.method public static fillIDs(Landroid/content/Context;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    sget-boolean v3, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    if-eqz v3, :cond_0

    .line 230
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 117
    const/4 v14, 0x0

    .line 118
    .local v14, "deleted":Z
    new-instance v20, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 119
    .local v20, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 121
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "files"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "oid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "aid"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "file_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 122
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 124
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 127
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 128
    .local v18, "fn":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 129
    .local v19, "fsize":I
    new-instance v16, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/.vkontakte/cache/audio/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v16, "file":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v15, "dfile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".covers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v11, "cfile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " IS DELETED!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v3

    move/from16 v0, v19

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 134
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_4
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    .end local v11    # "cfile":Ljava/io/File;
    .end local v15    # "dfile":Ljava/io/File;
    .end local v16    # "file":Ljava/io/File;
    .end local v18    # "fn":Ljava/lang/String;
    .end local v19    # "fsize":I
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 146
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 147
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 148
    if-eqz v14, :cond_6

    .line 149
    new-instance v22, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v22, "intent":Landroid/content/Intent;
    const-string v3, "reload_cached_list"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/.vkontakte/cache/audio/"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 154
    .local v17, "files":[Ljava/io/File;
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 155
    .local v21, "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    const/4 v3, 0x0

    move/from16 v28, v3

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_c

    .line 183
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 184
    new-instance v3, Lcom/vkontakte/android/api/AudioGetById;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/vkontakte/android/api/AudioGetById;-><init>(Ljava/util/Vector;)V

    .line 185
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$1;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/vkontakte/android/cache/AudioCache$1;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/AudioGetById;->setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v17    # "files":[Ljava/io/File;
    .end local v21    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 229
    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto/16 :goto_0

    .line 135
    .restart local v11    # "cfile":Ljava/io/File;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "dfile":Ljava/io/File;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v18    # "fn":Ljava/lang/String;
    .restart local v19    # "fsize":I
    :cond_8
    :try_start_1
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 137
    :cond_9
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 138
    :cond_a
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 139
    :cond_b
    const/4 v14, 0x1

    .line 140
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from DB (file on SD not found or is incomplete)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v3, "files"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 227
    .end local v11    # "cfile":Ljava/io/File;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "dfile":Ljava/io/File;
    .end local v16    # "file":Ljava/io/File;
    .end local v18    # "fn":Ljava/lang/String;
    .end local v19    # "fsize":I
    :catch_0
    move-exception v3

    goto :goto_3

    .line 155
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "files":[Ljava/io/File;
    .restart local v21    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_c
    aget-object v16, v17, v28

    .line 156
    .restart local v16    # "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    .line 157
    .local v23, "name":Ljava/lang/String;
    const-string v3, ".covers"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 155
    :cond_d
    :goto_4
    add-int/lit8 v3, v28, 0x1

    move/from16 v28, v3

    goto/16 :goto_2

    .line 158
    :cond_e
    const-string v3, ".deleted"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_d

    .line 160
    :try_start_2
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v15    # "dfile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 162
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 163
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 164
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".covers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 165
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleted "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because it still existed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 178
    .end local v15    # "dfile":Ljava/io/File;
    :catch_1
    move-exception v27

    .line 179
    .local v27, "x":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 180
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".covers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 168
    .end local v27    # "x":Ljava/lang/Exception;
    .restart local v15    # "dfile":Ljava/io/File;
    :cond_f
    :try_start_4
    const-string v3, "_"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 169
    .local v26, "sp":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v26, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .local v24, "oid":I
    const/4 v3, 0x1

    aget-object v3, v26, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 170
    .local v10, "aid":I
    const-string v3, "files"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "`oid`="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and `aid`="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 171
    .local v13, "cursor1":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_10

    const/16 v25, 0x1

    .line 172
    .local v25, "result":Z
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 173
    if-nez v25, :cond_d

    .line 174
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "need get "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 171
    .end local v25    # "result":Z
    :cond_10
    const/16 v25, 0x0

    goto :goto_5
.end method

.method public static getCachedList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte/cache/audio/"

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 658
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 661
    :cond_0
    new-instance v12, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 662
    .local v12, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 663
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DB version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :try_start_0
    const-string v2, "files"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 667
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 668
    const/4 v13, 0x0

    .line 669
    .local v13, "i":I
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v15, "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {v9, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 674
    new-instance v11, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v11}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .line 675
    .local v11, "file":Lcom/vkontakte/android/AudioFile;
    const-string v2, "oid"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 676
    const-string v2, "aid"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 677
    const-string v2, "title"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 678
    const-string v2, "artist"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 679
    const-string v2, "duration"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 680
    const-string v2, "lyrics_id"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    .line 681
    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v11, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v11, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    .line 683
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v13, v13, 0x1

    .line 686
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 687
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v13    # "i":I
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 690
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 692
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    .line 693
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteOld()V

    .line 695
    return-object v14

    .line 688
    :catch_0
    move-exception v16

    .local v16, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCoverVersion(II)I
    .locals 12
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 468
    const/4 v10, 0x0

    .line 469
    .local v10, "result":I
    new-instance v9, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 470
    .local v9, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 472
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cover_version"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 473
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 474
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 475
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 484
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 485
    return v10

    .line 476
    :catch_0
    move-exception v11

    .line 477
    .local v11, "x":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no such column"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 478
    const-string v1, "ALTER TABLE files ADD cover_version int not null default 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 479
    const-string v1, "ALTER TABLE files ADD lyrics text"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    :cond_0
    const-string v1, "vk"

    invoke-static {v1, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLyrics(II)Ljava/lang/String;
    .locals 12
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 505
    const/4 v10, 0x0

    .line 506
    .local v10, "result":Ljava/lang/String;
    new-instance v9, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 507
    .local v9, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 509
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lyrics"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 510
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 511
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 512
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 521
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 522
    return-object v10

    .line 513
    :catch_0
    move-exception v11

    .line 514
    .local v11, "x":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no such column"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 515
    const-string v1, "ALTER TABLE files ADD cover_version int not null default 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 516
    const-string v1, "ALTER TABLE files ADD lyrics text"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    :cond_0
    const-string v1, "vk"

    invoke-static {v1, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static intersectRanges(Ljava/util/ArrayList;Lcom/vkontakte/android/cache/AudioCache$FileRange;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "b"    # Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/cache/AudioCache$FileRange;",
            ">;",
            "Lcom/vkontakte/android/cache/AudioCache$FileRange;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/cache/AudioCache$FileRange;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 721
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 777
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 778
    iput-boolean v9, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 779
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_1
    return-object v4

    .line 722
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 725
    .local v0, "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-lt v6, v7, :cond_3

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v6, v7, :cond_3

    .line 726
    iput-boolean v10, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 727
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    :cond_3
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v6, v7, :cond_4

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-le v6, v7, :cond_4

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v6, v7, :cond_4

    .line 732
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v1, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 733
    .local v1, "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 734
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 735
    iput-boolean v9, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 736
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 738
    .local v2, "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 739
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 740
    iput-boolean v10, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 741
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    .end local v1    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v2    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_4
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-le v6, v7, :cond_5

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-ge v6, v7, :cond_5

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-le v6, v7, :cond_5

    .line 746
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v1, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 747
    .restart local v1    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 748
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 749
    iput-boolean v10, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 750
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 752
    .restart local v2    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 753
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 754
    iput-boolean v9, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 755
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 759
    .end local v1    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v2    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_5
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v6, v7, :cond_0

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-le v6, v7, :cond_0

    .line 760
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v1, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 761
    .restart local v1    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 762
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 763
    iput-boolean v9, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 764
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 766
    .restart local v2    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 767
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 768
    iput-boolean v10, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 769
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v3, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 771
    .local v3, "r3":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 772
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 773
    iput-boolean v9, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 774
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static isCached(II)Z
    .locals 14
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 540
    sget-boolean v1, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 541
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/cache/audio/"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 543
    :cond_1
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v11, v12

    .line 556
    :goto_0
    return v11

    .line 544
    :cond_2
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v11, v12

    goto :goto_0

    .line 546
    :cond_3
    const/4 v11, 0x0

    .line 547
    .local v11, "result":Z
    new-instance v10, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 548
    .local v10, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 550
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "`oid`="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and `aid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 551
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_4

    move v11, v12

    .line 552
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 555
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto :goto_0

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v11, v13

    .line 551
    goto :goto_1

    .line 553
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static isCachedByUser(II)Z
    .locals 14
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 560
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v11, v12

    .line 575
    :goto_0
    return v11

    .line 561
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/cache/audio/"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 562
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 563
    :cond_1
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne p0, v1, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    goto :goto_0

    .line 565
    :cond_2
    const/4 v11, 0x0

    .line 566
    .local v11, "result":Z
    new-instance v10, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 567
    .local v10, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 569
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "`oid`="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and `aid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and `user`=1"

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

    .line 570
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    move v11, v12

    .line 571
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 574
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto/16 :goto_0

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    move v11, v13

    .line 570
    goto :goto_1

    .line 572
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static refillIDs(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 111
    invoke-static {p0}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public static saveCurrent(Z)V
    .locals 2
    .param p0, "forced"    # Z

    .prologue
    .line 451
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 452
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    invoke-static {p0, v0}, Lcom/vkontakte/android/cache/AudioCache;->saveFile(ZLcom/vkontakte/android/AudioFile;)V

    .line 453
    return-void
.end method

.method public static saveFile(ZLcom/vkontakte/android/AudioFile;)V
    .locals 12
    .param p0, "forced"    # Z
    .param p1, "file"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 404
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Save file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget v7, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v7, v8}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 406
    if-eqz p0, :cond_0

    .line 407
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 408
    .local v3, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 410
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 412
    const-string v7, "files"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "aid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and oid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 415
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 448
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    :cond_0
    :goto_1
    return-void

    .line 419
    :cond_1
    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v4, "intent":Landroid/content/Intent;
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local v3    # "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 427
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 428
    .restart local v5    # "values":Landroid/content/ContentValues;
    const-string v7, "aid"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string v7, "oid"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v7, "artist"

    iget-object v8, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v7, "title"

    iget-object v8, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v7, "duration"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->duration:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const-string v7, "lastplay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string v7, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 435
    const-string v7, "lyrics_id"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v7, "file_size"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->fileSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Inserting: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v7, "files"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 443
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 444
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".deleted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .local v2, "f":Ljava/io/File;
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "del "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 439
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 440
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    const-string v8, "Error inserting audio cache file"

    invoke-static {v7, v8, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 413
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method public static saveLyrics(IILjava/lang/String;)I
    .locals 8
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "l"    # Ljava/lang/String;

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "result":I
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 528
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 530
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "lyrics"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "aid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND oid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 535
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 536
    return v2

    .line 533
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setCoverVersion(III)I
    .locals 8
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "ver"    # I

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 490
    .local v2, "result":I
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 491
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 493
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "cover_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    const-string v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "aid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND oid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 500
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 501
    return v2

    .line 496
    :catch_0
    move-exception v4

    .line 497
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updatePlayTime(II)V
    .locals 9
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 456
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v4, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 457
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 459
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "lastplay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v4, "files"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "aid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and oid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 464
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 465
    return-void

    .line 462
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
