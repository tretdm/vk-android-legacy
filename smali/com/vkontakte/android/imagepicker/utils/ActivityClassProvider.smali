.class public Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActivityClassProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider$AnimationDuration;,
        Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider$Color;,
        Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider$Localization;,
        Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider$LocalizedString;,
        Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider$ResourceId;,
        Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider$ViewId;
    }
.end annotation


# static fields
.field protected static context:Landroid/content/Context;

.field private static density:F

.field private static density_inited:Z

.field private static impact:Landroid/graphics/Typeface;

.field private static list_padding:I

.field private static list_padding_inited:Z

.field private static lobster:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->density_inited:Z

    .line 165
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->density:F

    .line 367
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->list_padding_inited:Z

    .line 368
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static checkLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 227
    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static dp(F)I
    .locals 2
    .param p0, "size"    # F

    .prologue
    .line 190
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDensity()F

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
    .line 180
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDensity()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAssetsBaseFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "imagepicker/"

    return-object v0
.end method

.method public static getAssetsFiltersFolder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getAssetsBaseFolder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "filters/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetsFiltersPreviewsFolder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getAssetsBaseFolder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "previews/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDefaultTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeface(Z)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "isBold"    # Z

    .prologue
    .line 341
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
    .line 169
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->density_inited:Z

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->density:F

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->density_inited:Z

    .line 175
    :cond_0
    sget v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->density:F

    return v0
.end method

.method public static getImpactTypeface()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 353
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->impact:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getAssetsBaseFolder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "impact.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->impact:Landroid/graphics/Typeface;

    .line 356
    :cond_0
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->impact:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getLobsterTypeface()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 361
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->lobster:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getAssetsBaseFolder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "lobster.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->lobster:Landroid/graphics/Typeface;

    .line 364
    :cond_0
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->lobster:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getLocalizedPluralString(II)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .param p1, "count"    # I

    .prologue
    .line 213
    packed-switch p0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 217
    :pswitch_0
    const v0, 0x7f0d0040

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public static getLocalizedString(I)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # I

    .prologue
    const v4, 0x7f060251

    const v3, 0x7f060250

    const v2, 0x7f060238

    .line 232
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 236
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 312
    :pswitch_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 240
    :pswitch_1
    const-string v1, "ru"

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 249
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 252
    :pswitch_5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 255
    :pswitch_6
    const v1, 0x7f06024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 258
    :pswitch_7
    const v1, 0x7f06024e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 261
    :pswitch_8
    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :pswitch_9
    const v1, 0x7f060239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 267
    :pswitch_a
    const v1, 0x7f06023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    :pswitch_b
    const v1, 0x7f06023b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    :pswitch_c
    const v1, 0x7f06023c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 276
    :pswitch_d
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 279
    :pswitch_e
    const v1, 0x7f06023d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 282
    :pswitch_f
    const v1, 0x7f06023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    :pswitch_10
    const v1, 0x7f0601bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 288
    :pswitch_11
    const v1, 0x7f0600c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 291
    :pswitch_12
    const v1, 0x7f06023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 294
    :pswitch_13
    const v1, 0x7f060240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 297
    :pswitch_14
    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 300
    :pswitch_15
    const v1, 0x7f06024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 303
    :pswitch_16
    const v1, 0x7f060241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 306
    :pswitch_17
    const v1, 0x7f06024d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 309
    :pswitch_18
    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_e
        :pswitch_10
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static getScreenMaxSize()I
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 197
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
    .line 202
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public static getStaticContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getStaticLocalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 185
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDensity()F

    move-result v0

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected static setStaticContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sput-object p0, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method protected blockOrientation()V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 391
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->setRequestedOrientation(I)V

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public getListPadding()I
    .locals 4

    .prologue
    .line 372
    sget-boolean v2, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->list_padding_inited:Z

    if-nez v2, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 375
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 377
    .local v1, "screen":I
    int-to-float v2, v1

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->px(F)I

    move-result v2

    const/16 v3, 0x140

    if-le v2, v3, :cond_1

    .line 378
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    sput v2, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->list_padding:I

    .line 382
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->list_padding_inited:Z

    .line 385
    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v1    # "screen":I
    :cond_0
    sget v2, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->list_padding:I

    return v2

    .line 380
    .restart local v0    # "display":Landroid/util/DisplayMetrics;
    .restart local v1    # "screen":I
    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->list_padding:I

    goto :goto_0
.end method

.method protected unblockOrientation()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->setRequestedOrientation(I)V

    .line 399
    return-void
.end method
