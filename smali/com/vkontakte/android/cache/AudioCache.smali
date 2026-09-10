.class public Lcom/vkontakte/android/cache/AudioCache;
.super Ljava/lang/Object;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/AudioCache$FileRange;,
        Lcom/vkontakte/android/cache/AudioCache$RangesInfo;,
        Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;,
        Lcom/vkontakte/android/cache/AudioCache$Proxy;,
        Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
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

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    .line 46
    sput-boolean v1, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->retryIntervals:[J

    .line 58
    sput-boolean v1, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    return-void

    .line 51
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 43
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$602(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 43
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static checkFileSize(Ljava/lang/String;II)V
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 128
    new-instance v12, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v2, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 129
    .local v12, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 131
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "files"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "file_size"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 132
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 133
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 135
    .local v11, "fsize":I
    const/4 v14, 0x0

    .line 136
    .local v14, "updated":Z
    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/cache/AudioCache;->getFileSize(Ljava/lang/String;)I

    move-result v11

    .line 138
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v14, 0x1

    .line 141
    :cond_0
    const/4 v2, -0x1

    if-eq v11, v2, :cond_1

    .line 142
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/.vkontakte/cache/audio/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v11

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 144
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has incorrect size - deleting!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 146
    const-string v2, "files"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 148
    sget-object v2, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v13, "intent":Landroid/content/Intent;
    const-string v2, "reload_cached_list"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fsize":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "updated":Z
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 165
    return-void

    .line 153
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "fsize":I
    .restart local v14    # "updated":Z
    :cond_2
    :try_start_1
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "file_size"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v2, "files"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fsize":I
    .end local v14    # "updated":Z
    .end local v15    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v16

    .line 162
    .local v16, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static clear()V
    .locals 12

    .prologue
    .line 711
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 712
    .local v4, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 713
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "vk"

    const-string v10, "Clear audio cache"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :try_start_0
    const-string v9, "files"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 716
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, ".vkontakte/cache/audio/"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 717
    .local v3, "files":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 718
    .local v2, "f":Ljava/io/File;
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Deleting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 717
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 721
    .end local v2    # "f":Ljava/io/File;
    :cond_0
    const-string v9, "vk"

    const-string v10, "All deleted"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    sget-object v9, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 723
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "reload_cached_list"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "len$":I
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 730
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 731
    return-void

    .line 726
    :catch_0
    move-exception v8

    .line 727
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static dbgRanges(Ljava/util/ArrayList;I)V
    .locals 10
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
    .line 1142
    .local p0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    div-int/lit8 v0, p1, 0x1e

    .line 1143
    .local v0, "cs":I
    const-string v6, ""

    .line 1144
    .local v6, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0x1e

    if-ge v2, v7, :cond_3

    .line 1145
    mul-int v4, v0, v2

    .line 1146
    .local v4, "l":I
    const/4 v1, 0x0

    .line 1147
    .local v1, "f":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 1148
    .local v5, "rn":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v7, v5, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-gt v7, v4, :cond_0

    iget v7, v5, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-lt v7, v4, :cond_0

    .line 1149
    const/4 v1, 0x1

    .line 1153
    .end local v5    # "rn":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1144
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1154
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1156
    .end local v1    # "f":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":I
    :cond_3
    const-string v8, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    iget v7, v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    iget v7, v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public static deleteCurrent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 734
    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    .line 735
    .local v2, "f":Lcom/vkontakte/android/AudioFile;
    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    if-nez v7, :cond_0

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 736
    :cond_0
    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 737
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 738
    .local v4, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 740
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v7, "files"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

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

    .line 742
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 743
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 744
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "reload_cached_list"

    invoke-virtual {v5, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 748
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

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

    .line 750
    .local v3, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 751
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 752
    .local v6, "os":Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 753
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 755
    .end local v6    # "os":Ljava/io/FileOutputStream;
    :goto_1
    sput-boolean v10, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    .line 756
    return-void

    .line 754
    :catch_0
    move-exception v7

    goto :goto_1

    .line 741
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
    .line 681
    new-instance v9, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 682
    .local v9, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 684
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

    .line 685
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 686
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 687
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v12, v1, -0xa

    .line 688
    .local v12, "nDel":I
    const-string v13, ""

    .line 689
    .local v13, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 690
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 692
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".vkontakte/cache/audio/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 693
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 694
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 689
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 696
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 697
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 698
    const-string v1, "files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 699
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "reload_cached_list"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "nDel":I
    .end local v13    # "where":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 707
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 708
    return-void

    .line 703
    :catch_0
    move-exception v14

    .line 704
    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static deleteTempFile(II)V
    .locals 2
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 414
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$3;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/cache/AudioCache$3;-><init>(II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 432
    return-void
.end method

.method private static downloadParts(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V
    .locals 2
    .param p0, "ri"    # Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    .prologue
    .line 435
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/AudioCache$4;-><init>(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 488
    :cond_0
    return-void
.end method

.method public static endPlayback(IIII)V
    .locals 25
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "oldOid"    # I
    .param p3, "oldAid"    # I

    .prologue
    .line 294
    const-string v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "End playback for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-boolean v21, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    if-eqz v21, :cond_1

    .line 296
    const/16 v21, 0x0

    sput-boolean v21, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent:Z

    .line 297
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 301
    const-string v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Renaming file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ".vkontakte/cache/audio/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 304
    new-instance v20, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    .local v20, "to":Ljava/io/File;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 308
    .end local v20    # "to":Ljava/io/File;
    :cond_2
    new-instance v9, Ljava/io/File;

    .end local v9    # "f":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ".vkontakte/cache/audio/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".covers"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .restart local v9    # "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 310
    new-instance v21, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".covers"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 312
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p0

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/AudioCache;->setIDs(IIII)V

    .line 313
    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 314
    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_4
    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 316
    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_5
    new-instance v14, Landroid/content/Intent;

    const-string v21, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v14, "intent":Landroid/content/Intent;
    const-string v21, "reload_cached_list"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    sget-object v21, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v9    # "f":Ljava/io/File;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_6
    sget v21, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, p0

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 322
    :cond_7
    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 323
    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    .line 324
    .local v19, "rn":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    if-nez v19, :cond_8

    .line 325
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0

    .line 328
    :cond_8
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 329
    .local v10, "fr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    new-instance v21, Lcom/vkontakte/android/cache/AudioCache$2;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/cache/AudioCache$2;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 334
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->l:I

    move/from16 v16, v0

    .line 335
    .local v16, "l":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 336
    .local v18, "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v5, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/vkontakte/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 340
    .end local v5    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v18    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_a

    .line 341
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0

    .line 345
    :cond_a
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_e

    .line 346
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_d

    .line 347
    if-ne v15, v11, :cond_c

    .line 346
    :cond_b
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 348
    :cond_c
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 349
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .local v4, "a":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 350
    .local v6, "b":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v0, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v21, v0

    iget v0, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    iget v0, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    iget v0, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    .line 351
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v10, v15, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 345
    .end local v4    # "a":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v6    # "b":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 355
    .end local v15    # "j":I
    :cond_e
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 357
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 358
    .local v17, "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_11

    .line 359
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 360
    .restart local v18    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    if-nez v18, :cond_f

    .line 358
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 361
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_10

    .line 362
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 363
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v10, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 365
    :cond_10
    move-object/from16 v17, v18

    goto :goto_6

    .line 367
    .end local v18    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_11
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 368
    const-string v21, "vk"

    const-string v22, "After remove overlapping"

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 370
    .restart local v18    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .restart local v5    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/vkontakte/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    goto :goto_7

    .line 374
    .end local v5    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v18    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v21, v0

    if-nez v21, :cond_13

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_13

    .line 375
    const-string v21, "vk"

    const-string v22, "We already have full file"

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :cond_13
    sget-object v21, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 379
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v8, "dl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    check-cast v17, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 381
    .restart local v17    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    const/4 v11, 0x1

    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_14

    .line 382
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 383
    .restart local v18    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    new-instance v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 384
    .local v7, "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 385
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 386
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    move-object/from16 v17, v18

    .line 381
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 389
    .end local v7    # "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v18    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_14
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_15

    .line 390
    new-instance v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 391
    .restart local v7    # "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 392
    move/from16 v0, v16

    iput v0, v7, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 393
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v7    # "d":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_15
    const-string v21, "vk"

    const-string v22, "need to download: "

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    move/from16 v0, v16

    invoke-static {v8, v0}, Lcom/vkontakte/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    .line 397
    new-instance v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 398
    .local v13, "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    move/from16 v0, v16

    iput v0, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->l:I

    .line 399
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    .line 400
    iput-object v8, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 401
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    .line 402
    invoke-static {v13}, Lcom/vkontakte/android/cache/AudioCache;->downloadParts(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V

    goto/16 :goto_0

    .line 405
    .end local v8    # "dl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v13    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    :cond_16
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    .line 409
    .end local v10    # "fr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "l":I
    .end local v17    # "prev":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v19    # "rn":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    :cond_17
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v21

    if-nez v21, :cond_0

    .line 410
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0
.end method

.method public static fillIDs(Landroid/content/Context;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    sget-boolean v3, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    if-eqz v3, :cond_0

    .line 288
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 170
    const/4 v15, 0x0

    .line 171
    .local v15, "deleted":Z
    new-instance v21, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 172
    .local v21, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 174
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

    move-result-object v13

    .line 175
    .local v13, "cursor":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 177
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 179
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 181
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 182
    .local v19, "fn":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 183
    .local v20, "fsize":I
    new-instance v17, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/.vkontakte/cache/audio/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v17, "file":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v16, "dfile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".covers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v12, "cfile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS DELETED!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v3

    move/from16 v0, v20

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 191
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_4
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    .end local v12    # "cfile":Ljava/io/File;
    .end local v16    # "dfile":Ljava/io/File;
    .end local v17    # "file":Ljava/io/File;
    .end local v19    # "fn":Ljava/lang/String;
    .end local v20    # "fsize":I
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 203
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 205
    if-eqz v15, :cond_6

    .line 206
    new-instance v24, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v24, "intent":Landroid/content/Intent;
    const-string v3, "reload_cached_list"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    .end local v24    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/.vkontakte/cache/audio/"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    .line 211
    .local v18, "files":[Ljava/io/File;
    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    .line 212
    .local v23, "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v11, v18

    .local v11, "arr$":[Ljava/io/File;
    array-length v0, v11

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    aget-object v17, v11, v22

    .line 213
    .restart local v17    # "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    .line 214
    .local v26, "name":Ljava/lang/String;
    const-string v3, ".covers"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 212
    :cond_7
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 192
    .end local v11    # "arr$":[Ljava/io/File;
    .end local v18    # "files":[Ljava/io/File;
    .end local v22    # "i$":I
    .end local v23    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v25    # "len$":I
    .end local v26    # "name":Ljava/lang/String;
    .restart local v12    # "cfile":Ljava/io/File;
    .restart local v16    # "dfile":Ljava/io/File;
    .restart local v19    # "fn":Ljava/lang/String;
    .restart local v20    # "fsize":I
    :cond_8
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 194
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 195
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 196
    :cond_b
    const/4 v15, 0x1

    .line 197
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from DB (file on SD not found or is incomplete)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "files"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 285
    .end local v12    # "cfile":Ljava/io/File;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v16    # "dfile":Ljava/io/File;
    .end local v17    # "file":Ljava/io/File;
    .end local v19    # "fn":Ljava/lang/String;
    .end local v20    # "fsize":I
    :catch_0
    move-exception v3

    .line 286
    :cond_c
    :goto_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 287
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto/16 :goto_0

    .line 215
    .restart local v11    # "arr$":[Ljava/io/File;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "files":[Ljava/io/File;
    .restart local v22    # "i$":I
    .restart local v23    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v25    # "len$":I
    .restart local v26    # "name":Ljava/lang/String;
    :cond_d
    :try_start_1
    const-string v3, ".deleted"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_7

    .line 217
    :try_start_2
    new-instance v16, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v16    # "dfile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 219
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 220
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 221
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".covers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 222
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

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

    goto/16 :goto_3

    .line 235
    .end local v16    # "dfile":Ljava/io/File;
    :catch_1
    move-exception v30

    .line 236
    .local v30, "x":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 237
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".covers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 225
    .end local v30    # "x":Ljava/lang/Exception;
    .restart local v16    # "dfile":Ljava/io/File;
    :cond_e
    :try_start_4
    const-string v3, "_"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 226
    .local v29, "sp":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v29, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .local v27, "oid":I
    const/4 v3, 0x1

    aget-object v3, v29, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 227
    .local v10, "aid":I
    const-string v3, "files"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "`oid`="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

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

    move-result-object v14

    .line 228
    .local v14, "cursor1":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_f

    const/16 v28, 0x1

    .line 229
    .local v28, "result":Z
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 230
    if-nez v28, :cond_7

    .line 231
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "need get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

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

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

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

    goto/16 :goto_3

    .line 228
    .end local v28    # "result":Z
    :cond_f
    const/16 v28, 0x0

    goto :goto_5

    .line 240
    .end local v10    # "aid":I
    .end local v14    # "cursor1":Landroid/database/Cursor;
    .end local v16    # "dfile":Ljava/io/File;
    .end local v17    # "file":Ljava/io/File;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "oid":I
    .end local v29    # "sp":[Ljava/lang/String;
    :cond_10
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 241
    new-instance v3, Lcom/vkontakte/android/api/AudioGetById;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lcom/vkontakte/android/api/AudioGetById;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$1;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/vkontakte/android/cache/AudioCache$1;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/AudioGetById;->setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4
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
    .line 759
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte/cache/audio/"

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 760
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 763
    :cond_0
    new-instance v12, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 764
    .local v12, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 765
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
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

    .line 769
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 770
    const/4 v13, 0x0

    .line 771
    .local v13, "i":I
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 775
    .local v15, "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {v9, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 776
    new-instance v11, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v11}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .line 777
    .local v11, "file":Lcom/vkontakte/android/AudioFile;
    const-string v2, "oid"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 778
    const-string v2, "aid"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 779
    const-string v2, "title"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 780
    const-string v2, "artist"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 781
    const-string v2, "duration"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 782
    const-string v2, "lyrics_id"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    .line 783
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

    .line 785
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v13, v13, 0x1

    .line 788
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 789
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v13    # "i":I
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 792
    invoke-virtual {v12}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 794
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    .line 795
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteOld()V

    .line 797
    return-object v14

    .line 790
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
    .line 555
    const/4 v10, 0x0

    .line 556
    .local v10, "result":I
    new-instance v9, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 557
    .local v9, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 559
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cover_version"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 560
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 561
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 562
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 571
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 572
    return v10

    .line 563
    :catch_0
    move-exception v11

    .line 564
    .local v11, "x":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no such column"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 565
    const-string v1, "ALTER TABLE files ADD cover_version int not null default 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 566
    const-string v1, "ALTER TABLE files ADD lyrics text"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    :cond_0
    const-string v1, "vk"

    invoke-static {v1, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 116
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 119
    .local v1, "len":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "len":I
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLyrics(II)Ljava/lang/String;
    .locals 12
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 607
    const/4 v10, 0x0

    .line 608
    .local v10, "result":Ljava/lang/String;
    new-instance v9, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 609
    .local v9, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 611
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lyrics"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 612
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 613
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 614
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 623
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 624
    return-object v10

    .line 615
    :catch_0
    move-exception v11

    .line 616
    .local v11, "x":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no such column"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 617
    const-string v1, "ALTER TABLE files ADD cover_version int not null default 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    const-string v1, "ALTER TABLE files ADD lyrics text"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 620
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

    .line 834
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 838
    .local v1, "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-lt v6, v7, :cond_1

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v6, v7, :cond_1

    .line 839
    iput-boolean v10, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 840
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 844
    :cond_1
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v6, v7, :cond_2

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-le v6, v7, :cond_2

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v6, v7, :cond_2

    .line 845
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 846
    .local v2, "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 847
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 848
    iput-boolean v9, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 849
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v3, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 851
    .local v3, "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 852
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 853
    iput-boolean v10, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 854
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 858
    .end local v2    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v3    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_2
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-le v6, v7, :cond_3

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-ge v6, v7, :cond_3

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-le v6, v7, :cond_3

    .line 859
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 860
    .restart local v2    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 861
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 862
    iput-boolean v10, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 863
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v3, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 865
    .restart local v3    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 866
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 867
    iput-boolean v9, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 868
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 872
    .end local v2    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v3    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_3
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v6, v7, :cond_0

    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    if-le v6, v7, :cond_0

    .line 873
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 874
    .restart local v2    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 875
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 876
    iput-boolean v9, v2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 877
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v3, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 879
    .restart local v3    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 880
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 881
    iput-boolean v10, v3, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 882
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-direct {v4, v8}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$1;)V

    .line 884
    .local v4, "r3":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    iget v6, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 885
    iget v6, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 886
    iput-boolean v9, v4, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 887
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 890
    .end local v1    # "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v2    # "r1":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v3    # "r2":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v4    # "r3":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 891
    iput-boolean v9, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 892
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_5
    return-object v5
.end method

.method public static isCached(II)Z
    .locals 14
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 642
    sget-boolean v1, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 643
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/cache/audio/"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 644
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 645
    :cond_1
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 658
    :goto_0
    return v11

    .line 646
    :cond_2
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 648
    :cond_3
    const/4 v11, 0x0

    .line 649
    .local v11, "result":Z
    new-instance v10, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 650
    .local v10, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 652
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "`oid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 653
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

    .line 654
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 657
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto :goto_0

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v11, v13

    .line 653
    goto :goto_1

    .line 655
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

    .line 662
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 677
    :goto_0
    return v11

    .line 663
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/cache/audio/"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 664
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 665
    :cond_1
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne p0, v1, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 667
    :cond_2
    const/4 v11, 0x0

    .line 668
    .local v11, "result":Z
    new-instance v10, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 669
    .local v10, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 671
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "`oid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 672
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

    .line 673
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 676
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto/16 :goto_0

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    move v11, v13

    .line 672
    goto :goto_1

    .line 674
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static refillIDs(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 110
    invoke-static {p0}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public static saveCurrent(Z)V
    .locals 2
    .param p0, "forced"    # Z

    .prologue
    .line 538
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 539
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    invoke-static {p0, v0}, Lcom/vkontakte/android/cache/AudioCache;->saveFile(ZLcom/vkontakte/android/AudioFile;)V

    .line 540
    return-void
.end method

.method public static saveFile(ZLcom/vkontakte/android/AudioFile;)V
    .locals 12
    .param p0, "forced"    # Z
    .param p1, "file"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 491
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

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

    .line 492
    iget v7, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v7, v8}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 493
    if-eqz p0, :cond_0

    .line 494
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 495
    .local v3, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 497
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 499
    const-string v7, "files"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

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

    .line 501
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 502
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 535
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    :cond_0
    :goto_1
    return-void

    .line 506
    :cond_1
    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v7, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v4, "intent":Landroid/content/Intent;
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 511
    .restart local v3    # "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 514
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 515
    .restart local v5    # "values":Landroid/content/ContentValues;
    const-string v7, "aid"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v7, "oid"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v7, "artist"

    iget-object v8, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v7, "title"

    iget-object v8, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v7, "duration"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->duration:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const-string v7, "lastplay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const-string v7, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 522
    const-string v7, "lyrics_id"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v7, "file_size"

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->fileSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inserting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v7, "files"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 529
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 530
    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 531
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

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

    .line 533
    .local v2, "f":Ljava/io/File;
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "del "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

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

    .line 534
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 526
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 527
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    const-string v8, "Error inserting audio cache file"

    invoke-static {v7, v8, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 500
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
    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "result":I
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 630
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 632
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "lyrics"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    .line 636
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 637
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 638
    return v2

    .line 635
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
    .line 576
    const/4 v2, 0x0

    .line 577
    .local v2, "result":I
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 578
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 580
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 581
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "cover_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const-string v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    .line 586
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 587
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 588
    return v2

    .line 583
    :catch_0
    move-exception v4

    .line 584
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setIDs(IIII)V
    .locals 7
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "newOid"    # I
    .param p3, "newAid"    # I

    .prologue
    .line 592
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v4, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 593
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 595
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 596
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "oid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    const-string v4, "aid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v4, "files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND oid="

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

    .line 602
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 603
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 604
    return-void

    .line 599
    :catch_0
    move-exception v3

    .line 600
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updatePlayTime(II)V
    .locals 9
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 543
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v4, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 544
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 546
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 547
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

    .line 548
    const-string v4, "files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    .line 550
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 551
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 552
    return-void

    .line 549
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
