.class public Lcom/vkontakte/android/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static final FONT_SIZE_MULTIPLIER:F = 2.0f

.field public static accessToken:Ljava/lang/String;

.field public static authOK:Z

.field public static boldFont:Landroid/graphics/Typeface;

.field public static displayDensity:F

.field private static final emojiChars:[C

.field private static emojiReplacements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static entitiesPtn:Ljava/util/regex/Pattern;

.field public static friendHints:[I

.field private static httpclient:Lorg/apache/http/client/HttpClient;

.field public static inited:Z

.field public static isTablet:Z

.field public static longPoll:Lcom/vkontakte/android/LongPollService;

.field public static maxErrIdx:I

.field public static maybeTablet:Z

.field public static myPhotoBitmap:Landroid/graphics/Bitmap;

.field public static placeTypes:[Ljava/lang/String;

.field public static realFriendCount:I

.field public static regFont:Landroid/graphics/Typeface;

.field public static res:Landroid/content/res/Resources;

.field public static secret:Ljava/lang/String;

.field public static timeDiff:I

.field public static uid:I

.field public static useBitmapHack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 60
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 62
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 63
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 65
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "sid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "uid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 68
    const-string v2, "sid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 69
    const-string v2, "secret"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 70
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    const-string v3, "vk_uid"

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/Global;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    sput-boolean v8, Lcom/vkontakte/android/Global;->authOK:Z

    .line 81
    sput-object v6, Lcom/vkontakte/android/Global;->placeTypes:[Ljava/lang/String;

    .line 82
    const/4 v2, -0x1

    sput v2, Lcom/vkontakte/android/Global;->realFriendCount:I

    .line 83
    sput-object v6, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 89
    sput v7, Lcom/vkontakte/android/Global;->maxErrIdx:I

    .line 90
    sput-object v6, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 91
    sput-boolean v7, Lcom/vkontakte/android/Global;->inited:Z

    .line 94
    sput v7, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 95
    sput-boolean v7, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 96
    sput-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 102
    const/16 v2, 0x72

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/vkontakte/android/Global;->emojiChars:[C

    .line 221
    return-void

    .line 74
    :catch_0
    move-exception v2

    goto :goto_0

    .line 102
    :array_0
    .array-data 2
        0x203cs
        0x2049s
        0x2139s
        0x2194s
        0x2195s
        0x2196s
        0x2197s
        0x2198s
        0x2199s
        0x21a9s
        0x21aas
        0x231as
        0x231bs
        0x23e9s
        0x23eas
        0x23ebs
        0x23ecs
        0x23f0s
        0x23f3s
        0x24c2s
        0x25aas
        0x25abs
        0x25b6s
        0x25c0s
        0x25fbs
        0x25fcs
        0x25fds
        0x25fes
        0x2600s
        0x2601s
        0x260es
        0x2611s
        0x2614s
        0x2615s
        0x261ds
        0x263as
        0x2648s
        0x2649s
        0x264as
        0x264bs
        0x264cs
        0x264ds
        0x264es
        0x264fs
        0x2650s
        0x2651s
        0x2652s
        0x2653s
        0x2660s
        0x2663s
        0x2665s
        0x2666s
        0x2668s
        0x267bs
        0x267fs
        0x2693s
        0x26a0s
        0x26a1s
        0x26aas
        0x26abs
        0x26bds
        0x26bes
        0x26c4s
        0x26c5s
        0x26ces
        0x26d4s
        0x26eas
        0x26f2s
        0x26f3s
        0x26f5s
        0x26fas
        0x26fds
        0x2702s
        0x2705s
        0x2708s
        0x2709s
        0x270as
        0x270bs
        0x270cs
        0x270fs
        0x2712s
        0x2714s
        0x2716s
        0x2728s
        0x2733s
        0x2734s
        0x2744s
        0x2747s
        0x274cs
        0x274es
        0x2753s
        0x2754s
        0x2755s
        0x2757s
        0x2764s
        0x2795s
        0x2796s
        0x2797s
        0x27a1s
        0x27b0s
        0x27bfs
        0x2934s
        0x2935s
        0x2b05s
        0x2b06s
        0x2b07s
        0x2b1bs
        0x2b1cs
        0x2b50s
        0x2b55s
        0x3030s
        0x303ds
        0x3297s
        0x3299s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpParentViewHierarchy(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 559
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 562
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 563
    return-void

    .line 560
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "v":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public static dumpViewHierarchy(Landroid/view/View;I)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "depth"    # I

    .prologue
    .line 507
    const-string v1, ""

    .line 508
    .local v1, "logstr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_4

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " [\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v4, p0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\']"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 518
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 519
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " BG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    instance-of v4, p0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " FG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v4, p0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " pad="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 526
    .local v2, "pp":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " margins="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .end local v2    # "pp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const-string v4, "vk"

    invoke-static {v4, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v3, p0

    .line 530
    check-cast v3, Landroid/view/ViewGroup;

    .line 531
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_5

    .line 534
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_3
    return-void

    .line 508
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 515
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " VISIBLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 516
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " INVISIBLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 517
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " GONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 532
    .restart local v3    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static extractLinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v2, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9\\.-]+\\.[a-zA-Z\u0440\u0444\u0420\u0424]{2,4}[0-9a-zA-Z~/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 387
    .local v1, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 388
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    return-object v2

    .line 389
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static formatFloat(F)Ljava/lang/String;
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    float-to-int v1, p0

    int-to-float p0, v1

    .end local p0    # "f":F
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceLang()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "l":Ljava/lang/String;
    const-string v1, "rus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ru"

    .line 489
    :goto_0
    return-object v1

    .line 488
    :cond_0
    const-string v1, "ukr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ua"

    goto :goto_0

    .line 489
    :cond_1
    const-string v1, "en"

    goto :goto_0
.end method

.method public static getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 399
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStaticMapURL(DD)Ljava/lang/String;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 585
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=16&size=300x130&sensor=false&scale=%3$d&language=%4$s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x3

    const-string v1, "user.language"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStaticMapURL(DDII)Ljava/lang/String;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 589
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=16&size=%5$dx%6$d&sensor=false&scale=%3$d&language=%4$s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x3

    const-string v1, "user.language"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStaticMapURL(DDIII)Ljava/lang/String;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "zoom"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 593
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=%7$d&size=%5$dx%6$d&sensor=false&scale=%3$d&language=%4$s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x3

    const-string v1, "user.language"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;)[B
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 403
    invoke-static {p0, v0, v0}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .prologue
    .line 408
    sget-object v16, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    if-nez v16, :cond_0

    .line 409
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 410
    .local v6, "hParams":Lorg/apache/http/params/HttpParams;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 411
    sget-object v16, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 412
    const/16 v16, 0x2000

    move/from16 v0, v16

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 413
    const/16 v16, 0x7530

    move/from16 v0, v16

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 414
    const/16 v16, 0x7530

    move/from16 v0, v16

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 417
    new-instance v14, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v14}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 418
    .local v14, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v16, Lorg/apache/http/conn/scheme/Scheme;

    const-string v17, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v18

    const/16 v19, 0x1bb

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 419
    new-instance v16, Lorg/apache/http/conn/scheme/Scheme;

    const-string v17, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v18

    const/16 v19, 0x50

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 420
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v6, v14}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 421
    .local v3, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v16, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v16, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 423
    .end local v3    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v6    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v14    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 424
    .local v7, "httppost":Lorg/apache/http/client/methods/HttpGet;
    const-string v16, ".jpg"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, ".gif"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, ".png"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 425
    const-string v16, "Accept-Encoding"

    const-string v17, "gzip"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 429
    :cond_2
    :try_start_0
    sget-object v16, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 432
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 434
    .local v8, "is":Ljava/io/InputStream;
    const-string v16, "Content-Encoding"

    invoke-interface/range {v15 .. v16}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 435
    .local v4, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v4, :cond_3

    const-string v16, "gzip"

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    move-object v8, v9

    .line 437
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_3
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    .line 438
    .local v11, "len":I
    const/4 v12, 0x0

    .line 439
    .local v12, "loaded":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 440
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x1400

    move/from16 v0, v16

    new-array v13, v0, [B

    .line 441
    .local v13, "rd":[B
    const/4 v10, 0x0

    .line 442
    .local v10, "l":I
    :cond_4
    :goto_0
    invoke-virtual {v8, v13}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-gtz v10, :cond_6

    .line 449
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 450
    if-eqz p1, :cond_5

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 451
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 457
    .end local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "contentEncoding":Lorg/apache/http/Header;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "l":I
    .end local v11    # "len":I
    .end local v12    # "loaded":I
    .end local v13    # "rd":[B
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v16

    .line 443
    .restart local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v10    # "l":I
    .restart local v11    # "len":I
    .restart local v12    # "loaded":I
    .restart local v13    # "rd":[B
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 444
    if-eqz p2, :cond_4

    .line 445
    add-int/2addr v12, v10

    .line 446
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v11}, Lcom/vkontakte/android/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "contentEncoding":Lorg/apache/http/Header;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "l":I
    .end local v11    # "len":I
    .end local v12    # "loaded":I
    .end local v13    # "rd":[B
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v5

    .line 453
    .local v5, "e":Ljava/lang/Throwable;
    sget-object v16, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;

    if-eqz v16, :cond_7

    .line 454
    const-string v16, "vk"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Error downloading "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    :cond_7
    if-eqz p1, :cond_8

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 457
    :cond_8
    const/16 v16, 0x0

    goto :goto_1
.end method

.method public static getUserOnlineStatus(Lorg/json/JSONObject;)I
    .locals 3
    .param p0, "user"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 597
    const-string v2, "online"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 598
    const-string v1, "online_mobile"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 599
    const-string v0, "online_app"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 600
    const/4 v0, 0x3

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 606
    goto :goto_0
.end method

.method public static hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 495
    .local v0, "pc":Ljava/lang/Class;
    const-string v3, "hasSystemFeature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 497
    .end local v0    # "pc":Ljava/lang/Class;
    :goto_0
    return v2

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "x":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static inArray(C[C)Z
    .locals 4
    .param p0, "c"    # C
    .param p1, "a"    # [C

    .prologue
    const/4 v1, 0x0

    .line 610
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 612
    :goto_1
    return v1

    .line 610
    :cond_0
    aget-char v0, p1, v2

    .line 611
    .local v0, "cc":C
    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 610
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 578
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 461
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 467
    :goto_0
    return v0

    .line 465
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v2, "isHardwareAccelerated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    move v0, v1

    .line 467
    goto :goto_0
.end method

.method public static isPressed([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 670
    if-nez p0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v1

    .line 671
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 672
    .local v0, "s":I
    const v4, 0x10100a7

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 671
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isPressedOrSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 686
    if-nez p0, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v1

    .line 687
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 688
    .local v0, "s":I
    const v4, 0x10100a7

    if-eq v0, v4, :cond_2

    const v4, 0x10100a1

    if-ne v0, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 687
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 678
    if-nez p0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v1

    .line 679
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 680
    .local v0, "s":I
    const v4, 0x10100a1

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 679
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isTouchwiz()Z
    .locals 2

    .prologue
    .line 698
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/SecLauncher2.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static langDate(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "_dt"    # I

    .prologue
    .line 224
    if-nez p0, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 225
    :cond_0
    int-to-long v9, p1

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 226
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 227
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 228
    .local v6, "now":J
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v9

    const v10, 0x36ee80

    mul-int/2addr v9, v10

    int-to-long v9, v9

    sub-long v9, v6, v9

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v11

    const v12, 0xea60

    mul-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long v1, v9, v11

    .line 229
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 230
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 231
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1

    .line 232
    const-string v9, "%s %d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f080039

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 246
    :goto_0
    return-object v8

    .line 233
    :cond_1
    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    const-wide/32 v9, 0xa4cb800

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-lez v9, :cond_2

    .line 234
    const-string v9, "%s %d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f08016a

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 235
    goto :goto_0

    :cond_2
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_3

    cmp-long v9, v1, v4

    if-ltz v9, :cond_3

    .line 236
    const-string v9, "%s %d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f08003a

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 237
    goto :goto_0

    .line 238
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x7f0d0000

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 244
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " %s %d:%02d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f08003b

    invoke-virtual {p0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 242
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v10, 0x7f0d0001

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static langDateDay(I)Ljava/lang/String;
    .locals 13
    .param p0, "_dt"    # I

    .prologue
    .line 268
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 269
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 270
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 271
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 272
    .local v6, "now":J
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v9

    const v10, 0x36ee80

    mul-int/2addr v9, v10

    int-to-long v9, v9

    sub-long v9, v6, v9

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v11

    const v12, 0xea60

    mul-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long v1, v9, v11

    .line 273
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 274
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 275
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1

    .line 276
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f080037

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    :goto_0
    return-object v8

    .line 277
    :cond_1
    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    const-wide/32 v9, 0xa4cb800

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-lez v9, :cond_2

    .line 278
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f080163

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 279
    goto :goto_0

    :cond_2
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_3

    cmp-long v9, v1, v4

    if-ltz v9, :cond_3

    .line 280
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f080038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 281
    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 282
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v11, 0x7f0d0001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    goto :goto_0

    .line 284
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v11, 0x7f0d0001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "dt"    # I
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const v6, 0x7f0d000d

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 291
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 292
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 298
    :goto_0
    return-object v2

    .line 293
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 294
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 295
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 296
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0d000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 297
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f080077

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 298
    :cond_6
    const v2, 0x7f0d000f

    invoke-static {v2, v0, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "dt"    # I
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const v6, 0x7f0d000d

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 303
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 304
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 310
    :goto_0
    return-object v2

    .line 305
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 306
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 307
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 308
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0d000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 309
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f080077

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 310
    :cond_6
    const v2, 0x7f0d000f

    invoke-static {v2, v0, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static langDateShort(I)Ljava/lang/String;
    .locals 13
    .param p0, "_dt"    # I

    .prologue
    .line 250
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 251
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 252
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 253
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 254
    .local v6, "now":J
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v9

    const v10, 0x36ee80

    mul-int/2addr v9, v10

    int-to-long v9, v9

    sub-long v9, v6, v9

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v11

    const v12, 0xea60

    mul-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long v1, v9, v11

    .line 255
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 256
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 257
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    .line 258
    const-string v9, "%d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 264
    :goto_0
    return-object v8

    .line 259
    :cond_1
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    cmp-long v9, v1, v4

    if-ltz v9, :cond_2

    .line 260
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f080038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 261
    goto :goto_0

    .line 262
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const/high16 v11, 0x7f0d0000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .param p0, "sz"    # J
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 318
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x4e800000

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Lcom/vkontakte/android/Global;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08007c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 319
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Lcom/vkontakte/android/Global;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08007a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080079

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .param p0, "rID"    # I
    .param p1, "n"    # I
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 472
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "rus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ukr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 475
    :cond_0
    div-int/lit8 v1, p1, 0xa

    rem-int/lit8 v1, v1, 0xa

    if-ne v1, v3, :cond_1

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 481
    :goto_0
    return-object v1

    .line 476
    :cond_1
    rem-int/lit8 v1, p1, 0xa

    if-ne v1, v3, :cond_2

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 477
    :cond_2
    rem-int/lit8 v1, p1, 0xa

    const/4 v2, 0x4

    if-gt v1, v2, :cond_3

    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 478
    :cond_4
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 480
    :cond_5
    if-ne p1, v3, :cond_6

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 481
    :cond_6
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeImages(Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 566
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 567
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 569
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 570
    check-cast v1, Landroid/view/ViewGroup;

    .line 571
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 574
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 572
    .restart local v0    # "i":I
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->removeImages(Landroid/view/View;)V

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 616
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move-object v6, p0

    .line 666
    :cond_1
    return-object v6

    .line 619
    :cond_2
    instance-of v8, p0, Landroid/text/Spannable;

    if-eqz v8, :cond_5

    move-object v6, p0

    .line 620
    check-cast v6, Landroid/text/Spannable;

    .line 624
    .local v6, "s":Landroid/text/Spannable;
    :goto_0
    const-wide/16 v0, 0x0

    .line 625
    .local v0, "buf":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 626
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 627
    .local v2, "c":C
    const v8, 0xd83c

    if-eq v2, v8, :cond_3

    const v8, 0xd83d

    if-eq v2, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_6

    const-wide v8, -0x100000000L

    and-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    const v8, 0xdde6

    if-lt v2, v8, :cond_6

    const v8, 0xddfa

    if-gt v2, v8, :cond_6

    .line 628
    :cond_3
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 629
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 625
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 622
    .end local v0    # "buf":J
    .end local v2    # "c":C
    .end local v5    # "i":I
    .end local v6    # "s":Landroid/text/Spannable;
    :cond_5
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .restart local v6    # "s":Landroid/text/Spannable;
    goto :goto_0

    .line 630
    .restart local v0    # "buf":J
    .restart local v2    # "c":C
    .restart local v5    # "i":I
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_9

    const v8, 0xf000

    and-int/2addr v8, v2

    const v9, 0xd000

    if-ne v8, v9, :cond_9

    .line 631
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 632
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 633
    invoke-static {v0, v1}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 634
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_7

    .line 635
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 636
    .local v7, "span":Landroid/text/style/ImageSpan;
    const v8, 0xdde6

    if-lt v2, v8, :cond_8

    const v8, 0xddfa

    if-gt v2, v8, :cond_8

    .line 637
    add-int/lit8 v8, v5, -0x3

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 641
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_7
    :goto_3
    const-wide/16 v0, 0x0

    .line 642
    goto :goto_2

    .line 639
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_8
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 642
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_9
    const/16 v8, 0x20e3

    if-ne v2, v8, :cond_d

    .line 643
    if-lez v5, :cond_4

    .line 644
    add-int/lit8 v8, v5, -0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 645
    .local v3, "c2":C
    const/16 v8, 0x30

    if-lt v3, v8, :cond_a

    const/16 v8, 0x39

    if-le v3, v8, :cond_b

    :cond_a
    const/16 v8, 0x23

    if-ne v3, v8, :cond_4

    .line 646
    :cond_b
    int-to-long v0, v3

    .line 647
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 648
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 650
    invoke-static {v0, v1}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 651
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_c

    .line 652
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 653
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 655
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_c
    const-wide/16 v0, 0x0

    .line 658
    goto :goto_2

    .end local v3    # "c2":C
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d
    sget-object v8, Lcom/vkontakte/android/Global;->emojiChars:[C

    invoke-static {v2, v8}, Lcom/vkontakte/android/Global;->inArray(C[C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 659
    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 660
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    .line 661
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 662
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v5, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2
.end method

.method public static replaceHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 331
    if-nez p0, :cond_0

    const-string v5, ""

    .line 367
    :goto_0
    return-object v5

    .line 332
    :cond_0
    const-string v6, "<br>"

    const-string v7, "\\n"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 341
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    if-nez v6, :cond_1

    const-string v6, "&([a-zA-Z0-9#]+);"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 343
    :cond_1
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 344
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v4, ""

    .line 345
    .local v4, "replacement":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    .line 364
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, "result":Ljava/lang/String;
    goto :goto_0

    .line 346
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "entity":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 349
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-char v1, v6

    .line 350
    .local v1, "ch":C
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_3

    const-string v4, "\\\\\\\\"

    .line 362
    .end local v1    # "ch":C
    :goto_2
    invoke-virtual {v3, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 351
    .restart local v1    # "ch":C
    :cond_3
    const/16 v6, 0x22

    if-ne v1, v6, :cond_4

    const-string v4, "\\\\\""

    goto :goto_2

    .line 352
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, ""

    goto :goto_2

    .line 353
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 354
    goto :goto_2

    .line 355
    .end local v1    # "ch":C
    :cond_6
    const-string v6, "gt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v4, ">"

    goto :goto_2

    .line 356
    :cond_7
    const-string v6, "lt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v4, "<"

    goto :goto_2

    .line 357
    :cond_8
    const-string v6, "amp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "&"

    goto :goto_2

    .line 358
    :cond_9
    const-string v6, "quot"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v4, "\\\\\""

    goto :goto_2

    .line 359
    :cond_a
    const-string v6, "ndash"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v4, "-"

    goto :goto_2

    .line 360
    :cond_b
    const-string v4, "?"

    goto :goto_2
.end method

.method public static replaceMentions(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v1, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string v1, "\\[club(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/-$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v1, "(#[\u0401\u0451\u0404\u0454\u00cf\u00ef@0-9a-zA-Z\u0430-\u044f\u0410-\u042f_]+)"

    const-string v2, "<a href=\'vkontakte://search/$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9\\.-]+\\.[a-zA-Z\u0440\u0444\u0420\u0424]{2,4}[0-9a-zA-Z~/?\\.=#!%&\\+_-]*(?<!\\.)(?<!!))"

    const-string v2, "<a href=\'vklink://view/?$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    return-object v0
.end method

.method public static scale(F)I
    .locals 1
    .param p0, "dip"    # F

    .prologue
    .line 502
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static showViewAnimated(Landroid/view/View;ZI)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "show"    # Z
    .param p2, "duration"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 719
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 722
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 723
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 725
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 784
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 731
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 732
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 733
    .local v1, "t":J
    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 734
    new-instance v3, Lcom/vkontakte/android/Global$1;

    invoke-direct {v3, v1, v2, p2, p0}, Lcom/vkontakte/android/Global$1;-><init>(JILandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 754
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static stringToIntArray(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "s":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 715
    return-object v0

    .line 709
    :cond_0
    aget-object v2, v1, v3

    .line 710
    .local v2, "si":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 709
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 712
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 713
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static time(I)Ljava/lang/String;
    .locals 5
    .param p0, "t"    # I

    .prologue
    .line 325
    new-instance v0, Ljava/util/Date;

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 326
    .local v0, "d":Ljava/util/Date;
    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unwrapMentions(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 379
    if-nez p0, :cond_0

    const-string v0, ""

    .line 380
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v1, "$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "\\[club(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "$2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
