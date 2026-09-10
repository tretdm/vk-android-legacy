.class public Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGlError(Ljava/lang/String;)Z
    .locals 9
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "count":I
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    .local v1, "err":I
    if-nez v1, :cond_1

    .line 88
    :goto_0
    if-nez v0, :cond_2

    .line 89
    const-string v2, "%s - no errors"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-static {v2, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :goto_1
    if-lez v0, :cond_5

    move v2, v3

    :goto_2
    return v2

    .line 77
    :cond_1
    const-string v2, "%s - glError %d %016X"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 81
    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    .line 83
    const-string v2, "%s - too much errors"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-static {v2, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_2
    const-string v5, "%s - %s error%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p0, v6, v4

    if-ne v0, v3, :cond_3

    const-string v2, "one"

    :goto_3
    aput-object v2, v6, v3

    if-ne v0, v3, :cond_4

    const-string v2, ""

    :goto_4
    aput-object v2, v6, v8

    invoke-static {v5, v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const-string v2, "s"

    goto :goto_4

    :cond_5
    move v2, v4

    .line 93
    goto :goto_2
.end method

.method static getCommonShader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/AssetsProvider;->getFiltersFolder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "common/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 37
    .local v0, "stream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getFilterShader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/AssetsProvider;->getFiltersFolder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "normal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "common"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".fsh"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    .local v0, "stream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_0
    move-object v1, p0

    .line 44
    goto :goto_0
.end method

.method static getFilterTexture(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 55
    .local v0, "stream":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static getMutableBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 63
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 64
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 66
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v3, "\\A"

    invoke-virtual {v2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 25
    .local v1, "scanner":Ljava/util/Scanner;
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 28
    return-object v0

    .line 25
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
