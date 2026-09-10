.class public Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActivityClassProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider$AnimationDuration;,
        Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider$Color;
    }
.end annotation


# static fields
.field protected static context:Landroid/content/Context;

.field private static density:F

.field private static density_inited:Z

.field private static impact:Landroid/graphics/Typeface;

.field private static list_padding:I

.field private static lobster:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->density_inited:Z

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->density:F

    .line 79
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->list_padding:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 162
    return-void
.end method

.method public static dp(F)I
    .locals 2
    .param p0, "size"    # F

    .prologue
    .line 60
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDensity()F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dp(FF)I
    .locals 2
    .param p0, "size"    # F
    .param p1, "maximumDensity"    # F

    .prologue
    .line 50
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDensity()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getDefaultTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDefaultTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeface(Z)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "isBold"    # Z

    .prologue
    .line 102
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getDensity()F
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->density_inited:Z

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->density:F

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->density_inited:Z

    .line 45
    :cond_0
    sget v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->density:F

    return v0
.end method

.method public static getImpactTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->impact:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "impact.ttf"

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/AssetsProvider;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->impact:Landroid/graphics/Typeface;

    .line 115
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->impact:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getLobsterTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->lobster:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "lobster.ttf"

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/AssetsProvider;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->lobster:Landroid/graphics/Typeface;

    .line 123
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->lobster:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getScreenMaxSize()I
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 67
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getScreenMinSize()I
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public static getStaticLocalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 55
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDensity()F

    move-result v0

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected static setStaticLocalContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sput-object p0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method protected static setStaticTestApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sput-object p0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method protected blockOrientation()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->setRequestedOrientation(I)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public getListPadding()I
    .locals 3

    .prologue
    .line 83
    sget v1, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->list_padding:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 85
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getScreenMinSize()I

    move-result v0

    .line 87
    .local v0, "screen":I
    int-to-float v1, v0

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->px(F)I

    move-result v1

    const/16 v2, 0x140

    if-le v1, v2, :cond_1

    .line 88
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    sput v1, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->list_padding:I

    .line 93
    .end local v0    # "screen":I
    :cond_0
    :goto_0
    sget v1, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->list_padding:I

    return v1

    .line 90
    .restart local v0    # "screen":I
    :cond_1
    const/4 v1, 0x0

    sput v1, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->list_padding:I

    goto :goto_0
.end method

.method protected unblockOrientation()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->setRequestedOrientation(I)V

    .line 139
    return-void
.end method
