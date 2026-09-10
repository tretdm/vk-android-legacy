.class public Lcom/vkontakte/android/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/Emoji$DrawableInfo;,
        Lcom/vkontakte/android/Emoji$EmojiDrawable;
    }
.end annotation


# static fields
.field private static final ROW_SIZES:[I

.field private static bigImgSize:I

.field private static bmps:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static drawImgSize:I

.field private static drawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkontakte/android/Emoji$EmojiDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static imgSize:I

.field private static inited:Z

.field private static loading:[Z

.field private static placeholderPaint:Landroid/graphics/Paint;

.field private static rects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/vkontakte/android/Emoji$DrawableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/high16 v8, 0x41f00000    # 30.0f

    const/4 v7, 0x5

    .line 25
    new-array v4, v7, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/vkontakte/android/Emoji;->ROW_SIZES:[I

    .line 26
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/vkontakte/android/Emoji;->rects:Ljava/util/HashMap;

    .line 28
    const/4 v4, 0x1

    sput-boolean v4, Lcom/vkontakte/android/Emoji;->inited:Z

    .line 31
    new-array v4, v7, [Z

    sput-object v4, Lcom/vkontakte/android/Emoji;->loading:[Z

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/vkontakte/android/Emoji;->drawables:Ljava/util/ArrayList;

    .line 36
    new-array v4, v7, [Ljava/lang/ref/WeakReference;

    sput-object v4, Lcom/vkontakte/android/Emoji;->bmps:[Ljava/lang/ref/WeakReference;

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/vkontakte/android/Emoji;->bmps:[Ljava/lang/ref/WeakReference;

    array-length v4, v4

    if-lt v0, v4, :cond_1

    .line 39
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    const/16 v4, 0x1c

    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sput v4, Lcom/vkontakte/android/Emoji;->imgSize:I

    .line 40
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sput v4, Lcom/vkontakte/android/Emoji;->drawImgSize:I

    .line 41
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sput v4, Lcom/vkontakte/android/Emoji;->bigImgSize:I

    .line 42
    sget v4, Lcom/vkontakte/android/Emoji;->imgSize:I

    sget v5, Lcom/vkontakte/android/Emoji;->bigImgSize:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v7, :cond_0

    sget v4, Lcom/vkontakte/android/Emoji;->imgSize:I

    sput v4, Lcom/vkontakte/android/Emoji;->bigImgSize:I

    .line 45
    :cond_0
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_2
    sget-object v4, Lcom/vkontakte/android/EmojiView;->data:[[J

    array-length v4, v4

    if-lt v1, v4, :cond_3

    .line 52
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/vkontakte/android/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    .line 53
    sget-object v4, Lcom/vkontakte/android/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x55000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    return-void

    .line 38
    .end local v1    # "j":I
    :cond_1
    sget-object v4, Lcom/vkontakte/android/Emoji;->bmps:[Ljava/lang/ref/WeakReference;

    new-instance v5, Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_2
    const/16 v4, 0x38

    goto :goto_1

    .line 46
    .restart local v1    # "j":I
    :cond_3
    sget-object v4, Lcom/vkontakte/android/Emoji;->ROW_SIZES:[I

    add-int/lit8 v5, v1, -0x1

    aget v3, v4, v5

    .line 47
    .local v3, "rsize":I
    const/4 v0, 0x0

    :goto_3
    sget-object v4, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v4, v4, v1

    array-length v4, v4

    if-lt v0, v4, :cond_4

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    rem-int v4, v0, v3

    sget v5, Lcom/vkontakte/android/Emoji;->imgSize:I

    mul-int/2addr v4, v5

    div-int v5, v0, v3

    sget v6, Lcom/vkontakte/android/Emoji;->imgSize:I

    mul-int/2addr v5, v6

    rem-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    sget v7, Lcom/vkontakte/android/Emoji;->imgSize:I

    mul-int/2addr v6, v7

    div-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    sget v8, Lcom/vkontakte/android/Emoji;->imgSize:I

    mul-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    .local v2, "rect":Landroid/graphics/Rect;
    sget-object v4, Lcom/vkontakte/android/Emoji;->rects:Ljava/util/HashMap;

    sget-object v5, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v5, v5, v1

    aget-wide v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/Emoji$DrawableInfo;

    add-int/lit8 v7, v1, -0x1

    invoke-direct {v6, v2, v7}, Lcom/vkontakte/android/Emoji$DrawableInfo;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 25
    :array_0
    .array-data 4
        0x1b
        0x1d
        0x21
        0x22
        0x22
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/vkontakte/android/Emoji;->bmps:[Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkontakte/android/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2(I)V
    .locals 0

    .prologue
    .line 159
    invoke-static {p0}, Lcom/vkontakte/android/Emoji;->loadPageAsync(I)V

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/vkontakte/android/Emoji;->bigImgSize:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/vkontakte/android/Emoji;->drawImgSize:I

    return v0
.end method

.method static synthetic access$5(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 168
    invoke-static {p0}, Lcom/vkontakte/android/Emoji;->invalidateAll(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/vkontakte/android/Emoji;->loadPage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7()[Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/vkontakte/android/Emoji;->loading:[Z

    return-object v0
.end method

.method public static getEmojiBigDrawable(J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "code"    # J

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-static {p0, p1}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;

    .line 201
    .local v0, "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 204
    .end local v0    # "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    :goto_0
    return-object v0

    .line 202
    .restart local v0    # "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    :cond_0
    sget v1, Lcom/vkontakte/android/Emoji;->bigImgSize:I

    sget v2, Lcom/vkontakte/android/Emoji;->bigImgSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->setBounds(IIII)V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    goto :goto_0
.end method

.method public static getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "code"    # J

    .prologue
    const/4 v8, 0x0

    .line 181
    sget-object v3, Lcom/vkontakte/android/Emoji;->rects:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Emoji$DrawableInfo;

    .line 182
    .local v1, "info":Lcom/vkontakte/android/Emoji$DrawableInfo;
    if-nez v1, :cond_1

    .line 183
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No emoji drawable for code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%016X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    new-instance v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Emoji$EmojiDrawable;-><init>(Lcom/vkontakte/android/Emoji$DrawableInfo;)V

    .line 187
    .local v0, "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    sget v3, Lcom/vkontakte/android/Emoji;->drawImgSize:I

    sget v4, Lcom/vkontakte/android/Emoji;->drawImgSize:I

    invoke-virtual {v0, v8, v8, v3, v4}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->setBounds(IIII)V

    .line 189
    sget-object v3, Lcom/vkontakte/android/Emoji;->drawables:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/Emoji;->drawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static invalidateAll(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 170
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 171
    check-cast v0, Landroid/view/ViewGroup;

    .line 172
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 178
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 173
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Emoji;->invalidateAll(Landroid/view/View;)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_2
    instance-of v2, p0, Lcom/vkontakte/android/ui/DialogEntryView;

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method private static loadPage(I)Landroid/graphics/Bitmap;
    .locals 29
    .param p0, "page"    # I

    .prologue
    .line 59
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/Emoji;->ROW_SIZES:[I

    aget v25, v4, p0

    .line 61
    .local v25, "rsize":I
    new-instance v24, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 62
    .local v24, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 66
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    .line 67
    const/4 v4, 0x2

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 70
    :cond_0
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Load emoji page "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "emoji"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "c.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 76
    .local v22, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 77
    .local v2, "color":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V

    .line 78
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "emoji"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "a.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 79
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 80
    .local v10, "alpha":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 82
    .local v5, "iw":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 83
    .local v9, "ih":I
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EMOJI INIT: c: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", a: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 85
    .local v3, "cpx":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    mul-int v4, v5, v9

    new-array v11, v4, [I

    .line 88
    .local v11, "apx":[I
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 89
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    array-length v4, v3

    move/from16 v0, v21

    if-lt v0, v4, :cond_4

    .line 96
    const/4 v11, 0x0

    .line 97
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 100
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 101
    .local v12, "bmp":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    move v15, v5

    move/from16 v18, v5

    move/from16 v19, v9

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 102
    const/4 v3, 0x0

    .line 109
    sget v4, Lcom/vkontakte/android/Emoji;->imgSize:I

    int-to-double v6, v4

    move/from16 v0, v25

    int-to-double v13, v0

    mul-double/2addr v6, v13

    int-to-double v13, v9

    int-to-double v15, v5

    div-double/2addr v13, v15

    mul-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v9, v6

    .line 110
    sget v4, Lcom/vkontakte/android/Emoji;->imgSize:I

    mul-int v5, v4, v25

    .line 111
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EMOJI INIT: resizing to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v5, v4, :cond_1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v9, v4, :cond_1

    .line 116
    const/4 v4, 0x1

    invoke-static {v12, v5, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 117
    :cond_1
    const-string v4, "vk"

    const-string v6, "Emoji init ok"

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    .local v26, "toInvalidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    :try_start_1
    sget-object v4, Lcom/vkontakte/android/Emoji;->drawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_5

    .line 138
    .end local v23    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    :goto_2
    :try_start_2
    sget-object v4, Lcom/vkontakte/android/Emoji;->bmps:[Ljava/lang/ref/WeakReference;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, p0

    .line 140
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 141
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lcom/vkontakte/android/Emoji$1;

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Lcom/vkontakte/android/Emoji$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    .end local v2    # "color":Landroid/graphics/Bitmap;
    .end local v3    # "cpx":[I
    .end local v5    # "iw":I
    .end local v9    # "ih":I
    .end local v10    # "alpha":Landroid/graphics/Bitmap;
    .end local v11    # "apx":[I
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v21    # "i":I
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v24    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v25    # "rsize":I
    .end local v26    # "toInvalidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    :cond_3
    :goto_3
    return-object v12

    .line 93
    .restart local v2    # "color":Landroid/graphics/Bitmap;
    .restart local v3    # "cpx":[I
    .restart local v5    # "iw":I
    .restart local v9    # "ih":I
    .restart local v10    # "alpha":Landroid/graphics/Bitmap;
    .restart local v11    # "apx":[I
    .restart local v21    # "i":I
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v24    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v25    # "rsize":I
    :cond_4
    aget v4, v3, v21

    const v6, 0xffffff

    and-int/2addr v4, v6

    aget v6, v11, v21

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v4, v6

    aput v4, v3, v21
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 125
    .restart local v12    # "bmp":Landroid/graphics/Bitmap;
    .restart local v23    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    .restart local v26    # "toInvalidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    :cond_5
    :try_start_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/ref/WeakReference;

    .line 126
    .local v27, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 127
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 136
    .end local v23    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    .end local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    :catch_0
    move-exception v4

    goto :goto_2

    .line 129
    .restart local v23    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    .restart local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    :cond_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/Emoji$EmojiDrawable;

    .line 130
    .local v20, "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v0, v20

    iget v4, v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->page:I

    move/from16 v0, p0

    if-ne v4, v0, :cond_2

    .line 132
    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 155
    .end local v2    # "color":Landroid/graphics/Bitmap;
    .end local v3    # "cpx":[I
    .end local v5    # "iw":I
    .end local v9    # "ih":I
    .end local v10    # "alpha":Landroid/graphics/Bitmap;
    .end local v11    # "apx":[I
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v20    # "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    .end local v21    # "i":I
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v23    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;>;"
    .end local v24    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v25    # "rsize":I
    .end local v26    # "toInvalidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    .end local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkontakte/android/Emoji$EmojiDrawable;>;"
    :catch_1
    move-exception v28

    .local v28, "x":Ljava/lang/Throwable;
    const-string v4, "vk"

    const-string v6, "Error loading emoji"

    move-object/from16 v0, v28

    invoke-static {v4, v6, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private static loadPageAsync(I)V
    .locals 2
    .param p0, "page"    # I

    .prologue
    .line 160
    sget-object v0, Lcom/vkontakte/android/Emoji;->loading:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/vkontakte/android/Emoji;->loading:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    .line 162
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/Emoji$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/Emoji$2;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
