.class public Lcom/vkontakte/android/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static accessToken:Ljava/lang/String;

.field public static authOK:Z

.field public static boldFont:Landroid/graphics/Typeface;

.field public static currentContext:Landroid/content/Context;

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

.field public static errPosts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/NewPostActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static friendHints:[I

.field private static httpclient:Lorg/apache/http/client/HttpClient;

.field public static inited:Z

.field public static isTablet:Z

.field private static lightItalicTypeface:Landroid/graphics/Typeface;

.field private static lightTypeface:Landroid/graphics/Typeface;

.field public static longPoll:Lcom/vkontakte/android/LongPollService;

.field public static maxErrIdx:I

.field public static maybeTablet:Z

.field public static myPhotoBitmap:Landroid/graphics/Bitmap;

.field public static openChats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ChatState;",
            ">;"
        }
    .end annotation
.end field

.field public static placeTypes:[Ljava/lang/String;

.field public static prefNotifyRingtone:Landroid/net/Uri;

.field public static realFriendCount:I

.field public static regFont:Landroid/graphics/Typeface;

.field public static res:Landroid/content/res/Resources;

.field public static secret:Ljava/lang/String;

.field public static supportsVoip:Z

.field public static supportsVoipVideo:Z

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

    .line 57
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 59
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 60
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 62
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "sid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "uid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 65
    const-string v2, "sid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 66
    const-string v2, "secret"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 67
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

    .line 70
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/Global;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    sput-boolean v8, Lcom/vkontakte/android/Global;->authOK:Z

    .line 77
    sput-object v6, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 79
    sput-object v6, Lcom/vkontakte/android/Global;->placeTypes:[Ljava/lang/String;

    .line 80
    const/4 v2, -0x1

    sput v2, Lcom/vkontakte/android/Global;->realFriendCount:I

    .line 81
    sput-object v6, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 82
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    sput-object v2, Lcom/vkontakte/android/Global;->openChats:Ljava/util/Vector;

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/vkontakte/android/Global;->errPosts:Ljava/util/HashMap;

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

    .line 98
    sput-object v6, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    .line 102
    const/16 v2, 0x75

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/vkontakte/android/Global;->emojiChars:[C

    .line 222
    return-void

    .line 71
    :catch_0
    move-exception v2

    goto :goto_0

    .line 102
    :array_0
    .array-data 2
        0xa9s
        0xaes
        0x203cs
        0x2049s
        0x2122s
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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpParentViewHierarchy(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 571
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 574
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 575
    return-void

    .line 572
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
    .line 500
    const-string v1, ""

    .line 501
    .local v1, "logstr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 502
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

    .line 503
    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 504
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

    .line 506
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

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 511
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 512
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

    .line 513
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

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 516
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

    .line 518
    .end local v2    # "pp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const-string v4, "vk"

    invoke-static {v4, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 520
    check-cast v3, Landroid/view/ViewGroup;

    .line 521
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 524
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_2
    return-void

    .line 501
    :cond_3
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

    .line 508
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

    .line 509
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

    .line 510
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

    .line 522
    .restart local v3    # "vg":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 507
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
    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v2, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9\\.-]+\\.[a-zA-Z\u0440\u0444\u0420\u0424]{2,4}[0-9a-zA-Z~/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 386
    .local v1, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 387
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    return-object v2

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDeviceLang()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "l":Ljava/lang/String;
    const-string v1, "rus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ru"

    .line 482
    :goto_0
    return-object v1

    .line 481
    :cond_0
    const-string v1, "ukr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ua"

    goto :goto_0

    .line 482
    :cond_1
    const-string v1, "en"

    goto :goto_0
.end method

.method public static getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 397
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 398
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

.method public static getRobotoLight()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 527
    sget-object v0, Lcom/vkontakte/android/Global;->lightTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Lcom/vkontakte/android/Global;->lightTypeface:Landroid/graphics/Typeface;

    .line 534
    :goto_0
    return-object v0

    .line 529
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 530
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->lightTypeface:Landroid/graphics/Typeface;

    .line 534
    :goto_1
    sget-object v0, Lcom/vkontakte/android/Global;->lightTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 532
    :cond_1
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->lightTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method public static getRobotoLightItalic()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 538
    sget-object v0, Lcom/vkontakte/android/Global;->lightItalicTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/vkontakte/android/Global;->lightItalicTypeface:Landroid/graphics/Typeface;

    .line 545
    :goto_0
    return-object v0

    .line 540
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 541
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->lightItalicTypeface:Landroid/graphics/Typeface;

    .line 545
    :goto_1
    sget-object v0, Lcom/vkontakte/android/Global;->lightItalicTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 543
    :cond_1
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->lightItalicTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method public static getStaticMapURL(DD)Ljava/lang/String;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 597
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

    .line 601
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

    .line 605
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

    .line 402
    invoke-static {p0, v0, v0}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .prologue
    .line 407
    sget-object v13, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    if-nez v13, :cond_0

    .line 408
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 409
    .local v4, "hParams":Lorg/apache/http/params/HttpParams;
    const/4 v13, 0x0

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 410
    sget-object v13, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 411
    const/16 v13, 0x2000

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 412
    const/16 v13, 0x7530

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 413
    const/16 v13, 0x7530

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 416
    new-instance v11, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v11}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 417
    .local v11, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v13, Lorg/apache/http/conn/scheme/Scheme;

    const-string v14, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v15

    const/16 v16, 0x1bb

    invoke-direct/range {v13 .. v16}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v11, v13}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 418
    new-instance v13, Lorg/apache/http/conn/scheme/Scheme;

    const-string v14, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v15

    const/16 v16, 0x50

    invoke-direct/range {v13 .. v16}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v11, v13}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 419
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v4, v11}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 420
    .local v2, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13, v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v13, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 422
    .end local v2    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v4    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v11    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 423
    .local v5, "httppost":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 426
    :cond_1
    :try_start_0
    sget-object v13, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 429
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 430
    .local v6, "is":Ljava/io/InputStream;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    long-to-int v8, v13

    .line 431
    .local v8, "len":I
    const/4 v9, 0x0

    .line 432
    .local v9, "loaded":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x1400

    new-array v10, v13, [B

    .line 434
    .local v10, "rd":[B
    const/4 v7, 0x0

    .line 435
    .local v7, "l":I
    :cond_2
    :goto_0
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_4

    .line 442
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 443
    if-eqz p1, :cond_3

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 444
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 450
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "l":I
    .end local v8    # "len":I
    .end local v9    # "loaded":I
    .end local v10    # "rd":[B
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v13

    .line 436
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "l":I
    .restart local v8    # "len":I
    .restart local v9    # "loaded":I
    .restart local v10    # "rd":[B
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 437
    if-eqz p2, :cond_2

    .line 438
    add-int/2addr v9, v7

    .line 439
    move-object/from16 v0, p2

    invoke-interface {v0, v9, v8}, Lcom/vkontakte/android/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "l":I
    .end local v8    # "len":I
    .end local v9    # "loaded":I
    .end local v10    # "rd":[B
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 446
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v13, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;

    if-eqz v13, :cond_5

    .line 447
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error downloading "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    :cond_5
    if-eqz p1, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 450
    :cond_6
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static getUserOnlineStatus(Lorg/json/JSONObject;)I
    .locals 3
    .param p0, "user"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 609
    const-string v2, "online"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 610
    const-string v1, "online_mobile"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 611
    const-string v0, "online_app"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 612
    const/4 v0, 0x3

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 618
    goto :goto_0
.end method

.method public static hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 487
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 488
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

    .line 490
    .end local v0    # "pc":Ljava/lang/Class;
    :goto_0
    return v2

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "x":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static inArray(C[C)Z
    .locals 4
    .param p0, "c"    # C
    .param p1, "a"    # [C

    .prologue
    const/4 v1, 0x0

    .line 622
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 624
    :goto_1
    return v1

    .line 622
    :cond_0
    aget-char v0, p1, v2

    .line 623
    .local v0, "cc":C
    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 622
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

    .line 590
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return v0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 454
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 460
    :goto_0
    return v0

    .line 458
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

    .line 459
    :catch_0
    move-exception v0

    move v0, v1

    .line 460
    goto :goto_0
.end method

.method public static isPressed([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 682
    if-nez p0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v1

    .line 683
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 684
    .local v0, "s":I
    const v4, 0x10100a7

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 683
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isPressedOrSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 698
    if-nez p0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 700
    .local v0, "s":I
    const v4, 0x10100a7

    if-eq v0, v4, :cond_2

    const v4, 0x10100a1

    if-ne v0, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 699
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 690
    if-nez p0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 692
    .local v0, "s":I
    const v4, 0x10100a1

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 691
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static langDate(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "_dt"    # I

    .prologue
    .line 230
    if-nez p0, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 231
    :cond_0
    int-to-long v9, p1

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 232
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 233
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 234
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

    .line 235
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 236
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 237
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f06001f

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v10

    invoke-static {v10}, Lcom/vkontakte/android/Global;->z(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 252
    :goto_0
    return-object v8

    .line 239
    :cond_1
    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    const-wide/32 v9, 0xa4cb800

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-lez v9, :cond_2

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f060151

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v10

    invoke-static {v10}, Lcom/vkontakte/android/Global;->z(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    goto :goto_0

    :cond_2
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_3

    cmp-long v9, v1, v4

    if-ltz v9, :cond_3

    .line 242
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f060020

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v10

    invoke-static {v10}, Lcom/vkontakte/android/Global;->z(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 243
    goto/16 :goto_0

    .line 244
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

    .line 245
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 246
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

    .line 250
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f060021

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v10

    invoke-static {v10}, Lcom/vkontakte/android/Global;->z(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 248
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
    .locals 14
    .param p0, "_dt"    # I

    .prologue
    const v13, 0x7f0d0001

    .line 274
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 275
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 276
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 277
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 278
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

    .line 279
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 280
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 281
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    .line 282
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f06001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 290
    :goto_0
    return-object v8

    .line 283
    :cond_1
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    .line 284
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f06001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 285
    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 286
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

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 287
    goto :goto_0

    .line 288
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

    sget-object v10, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

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

.method public static langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "dt"    # I
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const v6, 0x7f0d000d

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 295
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 296
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 302
    :goto_0
    return-object v2

    .line 297
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 298
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 299
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 300
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0d000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 301
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f06005d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 302
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

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 307
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 308
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 314
    :goto_0
    return-object v2

    .line 309
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 310
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 311
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 312
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0d000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 313
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f06005d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 314
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
    .line 256
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 257
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 258
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 259
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 260
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

    .line 261
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 262
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 263
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v10

    invoke-static {v10}, Lcom/vkontakte/android/Global;->z(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 270
    :goto_0
    return-object v8

    .line 265
    :cond_1
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    .line 266
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f06001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 267
    goto :goto_0

    .line 268
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

.method public static langFileSize(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p0, "sz"    # I
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 318
    const/high16 v0, 0x100000

    if-le p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    int-to-float v1, p0

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060061

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 319
    :cond_0
    const/16 v0, 0x400

    if-le p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    int-to-float v1, p0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06005f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    .line 465
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "rus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ukr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 468
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

    .line 474
    :goto_0
    return-object v1

    .line 469
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

    .line 470
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

    .line 471
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

    .line 473
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

    .line 474
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
    .line 578
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 579
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 581
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 582
    check-cast v1, Landroid/view/ViewGroup;

    .line 583
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 586
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 584
    .restart local v0    # "i":I
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->removeImages(Landroid/view/View;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 628
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move-object v6, p0

    .line 678
    :cond_1
    return-object v6

    .line 631
    :cond_2
    instance-of v8, p0, Landroid/text/Spannable;

    if-eqz v8, :cond_5

    move-object v6, p0

    .line 632
    check-cast v6, Landroid/text/Spannable;

    .line 636
    .local v6, "s":Landroid/text/Spannable;
    :goto_0
    const-wide/16 v0, 0x0

    .line 637
    .local v0, "buf":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 638
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 639
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

    .line 640
    :cond_3
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 641
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 637
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 634
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

    .line 642
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

    .line 643
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 644
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 645
    invoke-static {v0, v1}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 646
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_7

    .line 647
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 648
    .local v7, "span":Landroid/text/style/ImageSpan;
    const v8, 0xdde6

    if-lt v2, v8, :cond_8

    const v8, 0xddfa

    if-gt v2, v8, :cond_8

    .line 649
    add-int/lit8 v8, v5, -0x3

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 653
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_7
    :goto_3
    const-wide/16 v0, 0x0

    .line 654
    goto :goto_2

    .line 651
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_8
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 654
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_9
    const/16 v8, 0x20e3

    if-ne v2, v8, :cond_d

    .line 655
    if-lez v5, :cond_4

    .line 656
    add-int/lit8 v8, v5, -0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 657
    .local v3, "c2":C
    const/16 v8, 0x30

    if-lt v3, v8, :cond_a

    const/16 v8, 0x39

    if-le v3, v8, :cond_b

    :cond_a
    const/16 v8, 0x23

    if-ne v3, v8, :cond_4

    .line 658
    :cond_b
    int-to-long v0, v3

    .line 659
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 660
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 662
    invoke-static {v0, v1}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 663
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_c

    .line 664
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 665
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 667
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_c
    const-wide/16 v0, 0x0

    .line 670
    goto :goto_2

    .end local v3    # "c2":C
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d
    sget-object v8, Lcom/vkontakte/android/Global;->emojiChars:[C

    invoke-static {v2, v8}, Lcom/vkontakte/android/Global;->inArray(C[C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 671
    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 672
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    .line 673
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 674
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

    .line 330
    if-nez p0, :cond_0

    const-string v5, ""

    .line 366
    :goto_0
    return-object v5

    .line 331
    :cond_0
    const-string v6, "<br>"

    const-string v7, "\\n"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 340
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    if-nez v6, :cond_1

    const-string v6, "&([a-zA-Z0-9#]+);"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 342
    :cond_1
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 343
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v4, ""

    .line 344
    .local v4, "replacement":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    .line 363
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "result":Ljava/lang/String;
    goto :goto_0

    .line 345
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "entity":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 348
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-char v1, v6

    .line 349
    .local v1, "ch":C
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_3

    const-string v4, "\\\\\\\\"

    .line 361
    .end local v1    # "ch":C
    :goto_2
    invoke-virtual {v3, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 350
    .restart local v1    # "ch":C
    :cond_3
    const/16 v6, 0x22

    if-ne v1, v6, :cond_4

    const-string v4, "\\\\\""

    goto :goto_2

    .line 351
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, ""

    goto :goto_2

    .line 352
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 353
    goto :goto_2

    .line 354
    .end local v1    # "ch":C
    :cond_6
    const-string v6, "gt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v4, ">"

    goto :goto_2

    .line 355
    :cond_7
    const-string v6, "lt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v4, "<"

    goto :goto_2

    .line 356
    :cond_8
    const-string v6, "amp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "&"

    goto :goto_2

    .line 357
    :cond_9
    const-string v6, "quot"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v4, "\\\\\""

    goto :goto_2

    .line 358
    :cond_a
    const-string v6, "ndash"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v4, "-"

    goto :goto_2

    .line 359
    :cond_b
    const-string v4, "?"

    goto :goto_2
.end method

.method public static replaceMentions(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string v1, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v1, "\\[club(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/-$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string v1, "(#[0-9a-zA-Z\u0430-\u044f\u0410-\u042f\u0401\u0451_]+)"

    const-string v2, "<a href=\'vkontakte://search/$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v1, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9\\.-]+\\.[a-zA-Z\u0440\u0444\u0420\u0424]{2,4}[0-9a-zA-Z~/?\\.=#!%&\\+_-]*(?<!\\.)(?<!!))"

    const-string v2, "<a href=\'vklink://view/?$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    return-object v0
.end method

.method public static scale(F)I
    .locals 1
    .param p0, "dip"    # F

    .prologue
    .line 495
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

    .line 706
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 707
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 709
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 710
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 711
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 770
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 717
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 718
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 719
    .local v1, "t":J
    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 720
    new-instance v3, Lcom/vkontakte/android/Global$1;

    invoke-direct {v3, v1, v2, p2, p0}, Lcom/vkontakte/android/Global$1;-><init>(JILandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 740
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static time(I)Ljava/lang/String;
    .locals 5
    .param p0, "t"    # I

    .prologue
    .line 324
    new-instance v0, Ljava/util/Date;

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 325
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
    .line 378
    if-nez p0, :cond_0

    const-string v0, ""

    .line 379
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v1, "$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, "\\[club(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "$2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static z(I)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 225
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
