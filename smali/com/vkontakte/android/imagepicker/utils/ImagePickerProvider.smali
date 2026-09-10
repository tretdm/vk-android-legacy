.class public Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;
.super Ljava/lang/Object;
.source "ImagePickerProvider.java"


# static fields
.field public static final StyledImageUriType:Ljava/lang/String; = "impick://"

.field private static instance:Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->instance:Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;Ljava/util/HashMap;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->parseImageFromValues(Ljava/util/HashMap;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->instance:Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

    return-object v0
.end method

.method private parseImageFromValues(Ljava/util/HashMap;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    invoke-direct {v5}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;-><init>()V

    .line 134
    .local v5, "style":Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    const-string v7, "filter"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    const-string v7, "filter"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setFiltered(I)V

    .line 137
    :cond_0
    const-string v7, "text"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    const-string v7, "text"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setText(Ljava/lang/String;)V

    .line 140
    :cond_1
    const-string v7, "crop"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    const-string v7, "crop"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "vals":[Ljava/lang/String;
    array-length v7, v6

    new-array v0, v7, [F

    .line 146
    .local v0, "coords":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-lt v1, v7, :cond_4

    .line 149
    invoke-virtual {v5, v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setCropped([F)V

    .line 152
    .end local v0    # "coords":[F
    .end local v1    # "i":I
    .end local v6    # "vals":[Ljava/lang/String;
    :cond_2
    const-string v7, "enhanced"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setEnhanced(Z)V

    .line 157
    :cond_3
    const-string v7, "image_id"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, "imageId":I
    const-string v7, "orientation"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "orientation":I
    new-instance v2, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    const-string v7, "path"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v2, v3, v7, v4}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(ILjava/lang/String;I)V

    .line 162
    .local v2, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v2, v5}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setStyle(Lcom/vkontakte/android/imagepicker/entries/StyleEntry;)V

    .line 164
    return-object v2

    .line 147
    .end local v2    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v3    # "imageId":I
    .end local v4    # "orientation":I
    .restart local v0    # "coords":[F
    .restart local v1    # "i":I
    .restart local v6    # "vals":[Ljava/lang/String;
    :cond_4
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v0, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 36
    const-string v9, "\\?"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "res":[Ljava/lang/String;
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v4, v6, v9

    .line 41
    .local v4, "params":Ljava/lang/String;
    array-length v9, v6

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 43
    aget-object v5, v6, v10

    .line 55
    .local v5, "realPath":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v8, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "&"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "parameters":[Ljava/lang/String;
    array-length v11, v3

    move v9, v10

    :goto_1
    if-lt v9, v11, :cond_2

    .line 65
    const-string v9, "path"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "impick://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v8

    .line 47
    .end local v3    # "parameters":[Ljava/lang/String;
    .end local v5    # "realPath":Ljava/lang/String;
    .end local v8    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    if-lt v0, v9, :cond_1

    .line 52
    const-string v9, "?"

    invoke-static {v9, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realPath":Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v5    # "realPath":Ljava/lang/String;
    :cond_1
    aget-object v9, v6, v0

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "parameters":[Ljava/lang/String;
    .restart local v5    # "realPath":Ljava/lang/String;
    .restart local v8    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    aget-object v2, v3, v9

    .line 61
    .local v2, "param":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "v":[Ljava/lang/String;
    aget-object v12, v7, v10

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPathForStyledImage(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "compression"    # I
    .param p4, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 171
    :try_start_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 172
    .local v2, "lock":Ljava/util/concurrent/Semaphore;
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    .line 174
    .local v7, "result":[Ljava/lang/String;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v9

    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;Ljava/util/concurrent/Semaphore;Ljava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->dispatchHighload(Ljava/lang/Runnable;)V

    .line 285
    const-string v0, "ImagePickerProvider, near 274"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 289
    const/4 v0, 0x0

    aget-object v0, v7, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v2    # "lock":Ljava/util/concurrent/Semaphore;
    .end local v7    # "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v8

    .line 293
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string v0, "Some errors in getStyledImagePath"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "thumbPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 76
    .local v5, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    const-string v6, "image_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v6, "path"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "orientation"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v1, v8, v6, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(ILjava/lang/String;I)V

    .line 78
    .local v1, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    const-string v6, "temp"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setIsTemp(Z)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsStyledThumbCachedSync(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getStyledThumbSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 85
    .local v4, "thumb":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v2, "stream":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x59

    invoke-virtual {v4, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 96
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "thumb":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 99
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .restart local v4    # "thumb":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "Cannot store thumbnail"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 122
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "thumb":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 124
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    const-string v6, "Cannot get thumbnail"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 126
    const/4 v4, 0x0

    goto :goto_0

    .line 108
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_2
    const/4 v4, 0x0

    .line 112
    .restart local v4    # "thumb":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    goto :goto_0

    .line 114
    :catch_2
    move-exception v3

    .line 116
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    :try_start_4
    const-string v6, "Cannot read thumbnail from disk"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method
