.class public Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;
.super Ljava/lang/Object;
.source "GalleryPickerProvider.java"


# static fields
.field private static final DEFAULT_BIG_IMAGE_SIZE:I = 0x500

.field private static final DEFAULT_SMALL_IMAGE_SIZE:I = 0x400

.field public static final STYLED_IMAGE_URI_SCHEME:Ljava/lang/String; = "impick"

.field public static final STYLED_IMAGE_URI_START:Ljava/lang/String; = "impick://"

.field public static final UNSTYLED_URI_SCHEME:Ljava/lang/String; = "file://"

.field private static final instance:Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance:Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOriginalUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v2, "impick://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 94
    :cond_0
    move-object v0, p0

    .line 95
    .local v0, "path":Ljava/lang/String;
    const-string v2, "impick://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v2, 0x0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static instance()Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance:Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    return-object v0
.end method


# virtual methods
.method public getNeedUseStyledThumb(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 82
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 84
    .local v0, "params":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "filter="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enhanced=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "crop="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 82
    .end local v0    # "params":Ljava/lang/String;
    :cond_1
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    .restart local v0    # "params":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPathForStyledImage(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "compression"    # I
    .param p4, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 167
    :try_start_0
    new-instance v7, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 168
    .local v7, "lock":Ljava/util/concurrent/Semaphore;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 170
    .local v6, "result":[Ljava/lang/String;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v9

    new-instance v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;-><init>(Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;Ljava/lang/String;ILjava/lang/String;I[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v9, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->dispatchHighload(Ljava/lang/Runnable;)V

    .line 300
    const-string v0, "ImagePickerProvider, near 274"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 304
    const/4 v0, 0x0

    aget-object v0, v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v6    # "result":[Ljava/lang/String;
    .end local v7    # "lock":Ljava/util/concurrent/Semaphore;
    :goto_0
    return-object v0

    .line 306
    :catch_0
    move-exception v8

    .line 308
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string v0, "Some errors in getStyledImagePath"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 310
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestedSizeLimit(Ljava/lang/String;I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "defaultSize"    # I

    .prologue
    const/16 v8, 0x1e0

    .line 45
    if-eqz p1, :cond_0

    const-string v7, "filter=0"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "enhanced=0"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, p2

    .line 77
    :goto_0
    return v5

    .line 53
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 54
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    .local v6, "width":I
    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .local v1, "height":I
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 57
    .local v0, "density":F
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 58
    .local v2, "max":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 60
    .local v4, "min":I
    const/16 v7, 0x2d0

    if-ge v4, v7, :cond_2

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_3

    .line 62
    :cond_2
    const/16 v5, 0x500

    .local v5, "result":I
    goto :goto_0

    .line 64
    .end local v5    # "result":I
    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_4

    if-gt v2, v8, :cond_5

    .line 66
    :cond_4
    const/16 v5, 0x280

    .restart local v5    # "result":I
    goto :goto_0

    .line 68
    .end local v5    # "result":I
    :cond_5
    const/16 v7, 0x320

    if-ge v2, v7, :cond_6

    if-gt v4, v8, :cond_6

    .line 70
    const/16 v5, 0x2d0

    .restart local v5    # "result":I
    goto :goto_0

    .line 74
    .end local v5    # "result":I
    :cond_6
    const/16 v5, 0x400

    .restart local v5    # "result":I
    goto :goto_0
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "thumbPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 105
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 109
    .local v5, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

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

    invoke-direct {v1, v8, v6, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(ILjava/lang/String;I)V

    .line 111
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    const-string v6, "temp"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setIsTemp(Z)V

    .line 114
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->isCached(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->get(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 118
    .local v4, "thumb":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v2, "stream":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x59

    invoke-virtual {v4, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 129
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 130
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "thumb":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 132
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .restart local v4    # "thumb":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 134
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "Cannot store thumbnail"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 155
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "thumb":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 157
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    const-string v6, "Cannot get thumbnail"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 159
    const/4 v4, 0x0

    goto :goto_0

    .line 141
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_2
    const/4 v4, 0x0

    .line 145
    .restart local v4    # "thumb":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    goto :goto_0

    .line 147
    :catch_2
    move-exception v3

    .line 149
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    :try_start_4
    const-string v6, "Cannot read thumbnail from disk"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method
