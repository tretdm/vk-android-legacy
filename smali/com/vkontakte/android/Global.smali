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

.field public static friends:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static httpclient:Lorg/apache/http/client/HttpClient;

.field public static inited:Z

.field public static isTablet:Z

.field public static longPoll:Lcom/vkontakte/android/LongPollService;

.field public static maxErrIdx:I

.field public static maybeTablet:Z

.field public static myFirstName:Ljava/lang/String;

.field public static myName:Ljava/lang/String;

.field public static myPhoto100:Ljava/lang/String;

.field public static myPhotoBitmap:Landroid/graphics/Bitmap;

.field public static myStatus:Ljava/lang/String;

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

.field public static placeIcons:[I

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/Global;->authOK:Z

    .line 62
    sput-object v1, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 65
    sput-object v1, Lcom/vkontakte/android/Global;->placeTypes:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/Global;->placeIcons:[I

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/Global;->realFriendCount:I

    .line 91
    sput-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Global;->openChats:Ljava/util/Vector;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Global;->errPosts:Ljava/util/HashMap;

    .line 99
    sput v2, Lcom/vkontakte/android/Global;->maxErrIdx:I

    .line 100
    sput-object v1, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 101
    sput-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    .line 104
    sput v2, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 105
    sput-boolean v2, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 106
    sput-object v1, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 108
    sput-object v1, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    .line 112
    const/16 v0, 0x75

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vkontakte/android/Global;->emojiChars:[C

    .line 232
    return-void

    .line 66
    :array_0
    .array-data 4
        0x7f0201f9
        0x7f020203
        0x7f0201fd
        0x7f0201f4
        0x7f0201f3
        0x7f0201ef
        0x7f0201f6
        0x7f0201fe
        0x7f0201ee
        0x7f0201ff
        0x7f0201fa
        0x7f0201f2
        0x7f0201f1
        0x7f0201fc
        0x7f020202
        0x7f0201f8
        0x7f0201f5
        0x7f0201fb
        0x7f020200
        0x7f0201f7
        0x7f0201f7
    .end array-data

    .line 112
    :array_1
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpParentViewHierarchy(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 590
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 593
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 594
    return-void

    .line 591
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "v":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public static dumpViewHierarchy(Landroid/view/View;I)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "depth"    # I

    .prologue
    .line 546
    const-string v1, ""

    .line 547
    .local v1, "logstr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " [\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\']"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 557
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 558
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " BG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    const-string v3, "vk"

    invoke-static {v3, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 561
    check-cast v2, Landroid/view/ViewGroup;

    .line 562
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 565
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 547
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 554
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " VISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 555
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " INVISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 556
    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " GONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 563
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 553
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
    .line 382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v2, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0440\u0444\u0420\u0424]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 384
    .local v1, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 385
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    return-object v2

    .line 386
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDeviceLang()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "l":Ljava/lang/String;
    const-string v1, "rus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ukr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "ru"

    .line 512
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "en"

    goto :goto_0
.end method

.method public static getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 395
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 396
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
    .locals 7
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 616
    const-string v2, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=16&size=300x130&sensor=false&scale=%3$d&language=%4$s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x3

    const-string v1, "user.language"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStaticMapURL(DDII)Ljava/lang/String;
    .locals 7
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 620
    const-string v2, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=16&size=%5$dx%6$d&sensor=false&scale=%3$d&language=%4$s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x3

    const-string v1, "user.language"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;)[B
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-static {p0, v0, v0}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .prologue
    .line 405
    sget-object v11, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    if-nez v11, :cond_0

    .line 406
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 407
    .local v2, "hParams":Lorg/apache/http/params/HttpParams;
    const/4 v11, 0x0

    invoke-static {v2, v11}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 408
    sget-object v11, Lcom/vkontakte/android/APIRequest;->USER_AGENT:Ljava/lang/String;

    invoke-static {v2, v11}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 409
    const/16 v11, 0x2000

    invoke-static {v2, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 410
    const/16 v11, 0x7530

    invoke-static {v2, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 411
    const/16 v11, 0x7530

    invoke-static {v2, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 412
    const/4 v11, 0x0

    invoke-static {v2, v11}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 413
    new-instance v9, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 414
    .local v9, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v11, Lorg/apache/http/conn/scheme/Scheme;

    const-string v12, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v13

    const/16 v14, 0x1bb

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v11}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 415
    new-instance v11, Lorg/apache/http/conn/scheme/Scheme;

    const-string v12, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v13

    const/16 v14, 0x50

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v11}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 416
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v12, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v12, v2, v9}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v11, v12, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v11, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 418
    .end local v2    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 419
    .local v3, "httppost":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 422
    :cond_1
    :try_start_0
    sget-object v11, Lcom/vkontakte/android/Global;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v11, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 423
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 424
    .local v4, "is":Ljava/io/InputStream;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v6, v11

    .line 425
    .local v6, "len":I
    const/4 v7, 0x0

    .line 426
    .local v7, "loaded":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x1400

    new-array v8, v11, [B

    .line 428
    .local v8, "rd":[B
    const/4 v5, 0x0

    .line 429
    .local v5, "l":I
    :cond_2
    :goto_0
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_4

    .line 436
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 437
    if-eqz p1, :cond_3

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 438
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 443
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "l":I
    .end local v6    # "len":I
    .end local v7    # "loaded":I
    .end local v8    # "rd":[B
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v11

    .line 430
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "l":I
    .restart local v6    # "len":I
    .restart local v7    # "loaded":I
    .restart local v8    # "rd":[B
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v1, v8, v11, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 431
    if-eqz p2, :cond_2

    .line 432
    add-int/2addr v7, v5

    .line 433
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v6}, Lcom/vkontakte/android/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "l":I
    .end local v6    # "len":I
    .end local v7    # "loaded":I
    .end local v8    # "rd":[B
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v11

    .line 442
    if-eqz p1, :cond_5

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 443
    :cond_5
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public static getUserOnlineStatus(Lorg/json/JSONObject;)I
    .locals 3
    .param p0, "user"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 624
    const-string v2, "online"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 625
    const-string v1, "online_mobile"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 626
    const-string v0, "online_app"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 627
    const/4 v0, 0x3

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 629
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 633
    goto :goto_0
.end method

.method public static hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 517
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 518
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

    .line 520
    .end local v0    # "pc":Ljava/lang/Class;
    :goto_0
    return v2

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "x":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static inArray(C[C)Z
    .locals 4
    .param p0, "c"    # C
    .param p1, "a"    # [C

    .prologue
    const/4 v1, 0x0

    .line 637
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 639
    :goto_1
    return v1

    .line 637
    :cond_0
    aget-char v0, p1, v2

    .line 638
    .local v0, "cc":C
    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 637
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

    .line 609
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return v0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 447
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 453
    :goto_0
    return v0

    .line 451
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

    .line 452
    :catch_0
    move-exception v0

    move v0, v1

    .line 453
    goto :goto_0
.end method

.method public static isPressed([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 748
    if-nez p0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return v1

    .line 749
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 750
    .local v0, "s":I
    const v4, 0x10100a7

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 749
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isPressedOrSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 764
    if-nez p0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v1

    .line 765
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 766
    .local v0, "s":I
    const v4, 0x10100a7

    if-eq v0, v4, :cond_2

    const v4, 0x10100a1

    if-ne v0, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 765
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 756
    if-nez p0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return v1

    .line 757
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 758
    .local v0, "s":I
    const v4, 0x10100a1

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 757
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static langDate(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "_dt"    # I

    .prologue
    .line 240
    if-nez p0, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 241
    :cond_0
    int-to-long v9, p1

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 242
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 243
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 244
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

    .line 245
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 246
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 247
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f090013

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

    .line 256
    :goto_0
    return-object v8

    .line 249
    :cond_1
    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    const-wide/32 v9, 0xa4cb800

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-lez v9, :cond_2

    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f0901bb

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

    .line 251
    goto :goto_0

    :cond_2
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_3

    cmp-long v9, v1, v4

    if-ltz v9, :cond_3

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f090014

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

    .line 253
    goto/16 :goto_0

    .line 254
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

    const/high16 v10, 0x7f0a0000

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

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f090015

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
.end method

.method public static langDateDay(I)Ljava/lang/String;
    .locals 13
    .param p0, "_dt"    # I

    .prologue
    .line 278
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 279
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 280
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 281
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 282
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

    .line 283
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 284
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 285
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    .line 286
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f090011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 294
    :goto_0
    return-object v8

    .line 287
    :cond_1
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    .line 288
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f090012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 289
    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 290
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

    const v11, 0x7f0a0001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 291
    goto :goto_0

    .line 292
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

    const/high16 v11, 0x7f0a0000

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
    const v6, 0x7f0a000d

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 299
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 300
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 306
    :goto_0
    return-object v2

    .line 301
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 302
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 303
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 304
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0a000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 305
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f090066

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 306
    :cond_6
    const v2, 0x7f0a000f

    invoke-static {v2, v0, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "dt"    # I
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const v6, 0x7f0a000d

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 311
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 312
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 318
    :goto_0
    return-object v2

    .line 313
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 314
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 315
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 316
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0a000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 317
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f090066

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 318
    :cond_6
    const v2, 0x7f0a000f

    invoke-static {v2, v0, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static langDateShort(I)Ljava/lang/String;
    .locals 13
    .param p0, "_dt"    # I

    .prologue
    .line 260
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 261
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 262
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 263
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 264
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

    .line 265
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 266
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 267
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    .line 268
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

    .line 274
    :goto_0
    return-object v8

    .line 269
    :cond_1
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    .line 270
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f090012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 271
    goto :goto_0

    .line 272
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

    const/high16 v11, 0x7f0a0000

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
    const/high16 v3, 0x42c80000    # 100.0f

    .line 322
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

    const v1, 0x7f09006b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 323
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

    const v1, 0x7f09006a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090069

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

    .line 496
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "rus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ukr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 499
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

    .line 505
    :goto_0
    return-object v1

    .line 500
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

    .line 501
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

    .line 502
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

    .line 504
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

    .line 505
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

.method public static logStats(Ljava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 779
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "stats"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 780
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 781
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 782
    .local v2, "os":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->getNetworkType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "d":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 784
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 785
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v0    # "d":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static removeImages(Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 597
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 598
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 600
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 601
    check-cast v1, Landroid/view/ViewGroup;

    .line 602
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 605
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 603
    .restart local v0    # "i":I
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->removeImages(Landroid/view/View;)V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 643
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move-object v6, p0

    .line 696
    :cond_1
    return-object v6

    .line 646
    :cond_2
    instance-of v8, p0, Landroid/text/Spannable;

    if-eqz v8, :cond_5

    move-object v6, p0

    .line 647
    check-cast v6, Landroid/text/Spannable;

    .line 655
    .local v6, "s":Landroid/text/Spannable;
    :goto_0
    const-wide/16 v0, 0x0

    .line 656
    .local v0, "buf":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 657
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 658
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

    .line 659
    :cond_3
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 660
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 656
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 649
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

    .line 661
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

    .line 662
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 663
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 664
    invoke-static {v0, v1}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 665
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_7

    .line 666
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 667
    .local v7, "span":Landroid/text/style/ImageSpan;
    const v8, 0xdde6

    if-lt v2, v8, :cond_8

    const v8, 0xddfa

    if-gt v2, v8, :cond_8

    .line 668
    add-int/lit8 v8, v5, -0x3

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 672
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_7
    :goto_3
    const-wide/16 v0, 0x0

    .line 673
    goto :goto_2

    .line 670
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_8
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 673
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_9
    const/16 v8, 0x20e3

    if-ne v2, v8, :cond_d

    .line 674
    if-lez v5, :cond_4

    .line 675
    add-int/lit8 v8, v5, -0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 676
    .local v3, "c2":C
    const/16 v8, 0x30

    if-lt v3, v8, :cond_a

    const/16 v8, 0x39

    if-le v3, v8, :cond_b

    :cond_a
    const/16 v8, 0x23

    if-ne v3, v8, :cond_4

    .line 677
    :cond_b
    int-to-long v0, v3

    .line 678
    const/16 v8, 0x10

    shl-long/2addr v0, v8

    .line 679
    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 680
    invoke-static {v0, v1}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 681
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_c

    .line 682
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 683
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 685
    .end local v7    # "span":Landroid/text/style/ImageSpan;
    :cond_c
    const-wide/16 v0, 0x0

    .line 688
    goto :goto_2

    .end local v3    # "c2":C
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d
    sget-object v8, Lcom/vkontakte/android/Global;->emojiChars:[C

    invoke-static {v2, v8}, Lcom/vkontakte/android/Global;->inArray(C[C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 689
    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/vkontakte/android/Emoji;->getEmojiDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 690
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    .line 691
    new-instance v7, Lcom/vkontakte/android/ui/XImageSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/vkontakte/android/ui/XImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 692
    .restart local v7    # "span":Landroid/text/style/ImageSpan;
    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v5, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2
.end method

.method public static replaceEmoji2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 709
    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->fillSmileys()V

    .line 710
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "ss":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 714
    return-object v1

    .line 712
    :cond_0
    sget-object v2, Lcom/vkontakte/android/EmojiPickerView;->textSmileys:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceEmojiRev(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->fillSmileys()V

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "ss":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 705
    return-object v1

    .line 703
    :cond_0
    sget-object v2, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/vkontakte/android/EmojiPickerView;->textSmileys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 334
    if-nez p0, :cond_0

    const-string v5, ""

    .line 370
    :goto_0
    return-object v5

    .line 335
    :cond_0
    const-string v6, "<br>"

    const-string v7, "\\n"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 345
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    if-nez v6, :cond_1

    const-string v6, "&([a-zA-Z0-9#]+);"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 346
    :cond_1
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 347
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v4, ""

    .line 348
    .local v4, "replacement":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    .line 367
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "result":Ljava/lang/String;
    goto :goto_0

    .line 349
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "entity":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 352
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-char v1, v6

    .line 353
    .local v1, "ch":C
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_3

    const-string v4, "\\\\\\\\"

    .line 365
    .end local v1    # "ch":C
    :goto_2
    invoke-virtual {v3, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 354
    .restart local v1    # "ch":C
    :cond_3
    const/16 v6, 0x22

    if-ne v1, v6, :cond_4

    const-string v4, "\\\\\""

    goto :goto_2

    .line 355
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, ""

    goto :goto_2

    .line 356
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 357
    goto :goto_2

    .line 358
    .end local v1    # "ch":C
    :cond_6
    const-string v6, "gt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v4, ">"

    goto :goto_2

    .line 359
    :cond_7
    const-string v6, "lt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v4, "<"

    goto :goto_2

    .line 360
    :cond_8
    const-string v6, "amp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "&"

    goto :goto_2

    .line 361
    :cond_9
    const-string v6, "quot"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v4, "\\\\\""

    goto :goto_2

    .line 362
    :cond_a
    const-string v6, "ndash"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v4, "-"

    goto :goto_2

    .line 363
    :cond_b
    const-string v4, "?"

    goto :goto_2
.end method

.method public static replaceMentions(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "\\[club(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/-$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "(#[0-9a-zA-Z\u0430-\u044f\u0410-\u042f\u0401\u0451_]+)"

    const-string v2, "<a href=\'vkontakte://search/$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0440\u0444\u0420\u0424]{2,4}[0-9a-zA-Z/?\\.=#!%&\\+_-]*(?<!\\.)(?<!!))"

    const-string v2, "<a href=\'vklink://view/?$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method public static scale(F)I
    .locals 1
    .param p0, "dip"    # F

    .prologue
    .line 541
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static setFontOnAll(Landroid/view/View;)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 718
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 745
    :cond_0
    return-void

    .line 719
    :cond_1
    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_2

    .line 720
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    .line 722
    :cond_2
    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_3

    .line 723
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/Roboto-Regular.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 725
    :cond_3
    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    move-object v2, p0

    .line 726
    check-cast v2, Landroid/widget/TextView;

    .line 733
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Typeface;->isBold()Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 734
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 735
    .local v1, "paint":Landroid/graphics/Paint;
    if-eqz v1, :cond_5

    .line 736
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 739
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_5
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 740
    check-cast v3, Landroid/view/ViewGroup;

    .line 741
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 742
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 733
    .end local v0    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_6
    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static setViewSel(Landroid/view/View;)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "iState":[I
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 527
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 528
    check-cast v3, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/HighlightDrawable;->setSel(Z)V

    .line 530
    :cond_0
    move-object v2, v1

    .line 531
    .local v2, "initialState":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 532
    new-instance v3, Lcom/vkontakte/android/Global$1;

    invoke-direct {v3, v0, p0}, Lcom/vkontakte/android/Global$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 537
    const-wide/16 v4, 0x1f4

    .line 532
    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    return-void
.end method

.method public static sortFriendList()V
    .locals 8

    .prologue
    .line 457
    sget v5, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-nez v5, :cond_5

    .line 458
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 490
    .end local v3    # "j":I
    .local v0, "ff":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .local v1, "i":I
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    :cond_1
    return-void

    .line 459
    .end local v0    # "ff":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "j":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_3

    .line 458
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_3
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v6, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    .line 461
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 462
    .local v4, "t":Lcom/vkontakte/android/UserProfile;
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v6, v5, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 463
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v4, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 459
    .end local v4    # "t":Lcom/vkontakte/android/UserProfile;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_5
    sget v5, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 469
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 470
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_6

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 471
    :cond_6
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v6, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    .line 472
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 473
    .restart local v4    # "t":Lcom/vkontakte/android/UserProfile;
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v6, v5, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 474
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v4, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 470
    .end local v4    # "t":Lcom/vkontakte/android/UserProfile;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 479
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_8
    sget v5, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 480
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    if-eqz v5, :cond_1

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 482
    .restart local v0    # "ff":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_9

    .line 485
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 486
    const/4 v1, 0x0

    :goto_5
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 487
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 483
    :cond_9
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static time(I)Ljava/lang/String;
    .locals 5
    .param p0, "t"    # I

    .prologue
    .line 328
    new-instance v0, Ljava/util/Date;

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 329
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

.method public static z(I)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 235
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
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
