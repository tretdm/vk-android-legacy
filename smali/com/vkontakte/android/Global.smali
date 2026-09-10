.class public Lcom/vkontakte/android/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static accessToken:Ljava/lang/String;

.field public static authOK:Z

.field public static boldFont:Landroid/graphics/Typeface;

.field public static currentContext:Landroid/content/Context;

.field public static displayDensity:F

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

.field public static inited:Z

.field public static isTablet:Z

.field public static longPoll:Lcom/vkontakte/android/LongPollService;

.field public static maxErrIdx:I

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

.field public static timeDiff:I

.field public static uid:I

.field public static useBitmapHack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/Global;->authOK:Z

    .line 47
    sput-object v1, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 50
    sput-object v1, Lcom/vkontakte/android/Global;->placeTypes:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/Global;->placeIcons:[I

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/Global;->realFriendCount:I

    .line 76
    new-instance v0, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0}, Lcom/vkontakte/android/LongPollService;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Global;->openChats:Ljava/util/Vector;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Global;->errPosts:Ljava/util/HashMap;

    .line 84
    sput v2, Lcom/vkontakte/android/Global;->maxErrIdx:I

    .line 85
    sput-object v1, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 86
    sput-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    .line 89
    sput v2, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 90
    sput-boolean v2, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 92
    sput-object v1, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 94
    sput-object v1, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    .line 42
    return-void

    .line 51
    :array_0
    .array-data 4
        0x7f0201d9
        0x7f0201e3
        0x7f0201dd
        0x7f0201d4
        0x7f0201d3
        0x7f0201cf
        0x7f0201d6
        0x7f0201de
        0x7f0201ce
        0x7f0201df
        0x7f0201da
        0x7f0201d2
        0x7f0201d1
        0x7f0201dc
        0x7f0201e2
        0x7f0201d8
        0x7f0201d5
        0x7f0201db
        0x7f0201e0
        0x7f0201d7
        0x7f0201d7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpParentViewHierarchy(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 416
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 419
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 420
    return-void

    .line 417
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
    .line 372
    const-string v1, ""

    .line 373
    .local v1, "logstr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 376
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

    .line 378
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

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 383
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 384
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

    .line 385
    const-string v3, "vk"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 387
    check-cast v2, Landroid/view/ViewGroup;

    .line 388
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 391
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 373
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

    .line 380
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

    .line 381
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

    .line 382
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

    .line 389
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->dumpViewHierarchy(Landroid/view/View;I)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 379
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
    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 248
    .local v1, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 249
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    return-object v2

    .line 250
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 258
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

    .line 442
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

    .line 446
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
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 266
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 267
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    invoke-static {v8, v9}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 268
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-static {v8, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 269
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p1, :cond_0

    iput-object v2, p1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 272
    :cond_0
    :try_start_0
    const-string v8, "Connection"

    const-string v9, "Close"

    invoke-virtual {v2, v8, v9}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 274
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 275
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 276
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v5, v8, [B

    .line 277
    .local v5, "rd":[B
    const/4 v4, 0x0

    .line 278
    .local v4, "l":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_3

    .line 279
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 280
    if-eqz p1, :cond_1

    const/4 v8, 0x0

    iput-object v8, p1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 285
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-object v7

    .line 278
    .restart local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "l":I
    .restart local v5    # "rd":[B
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 284
    if-eqz p1, :cond_2

    iput-object v7, p1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_1
.end method

.method public static hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 344
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

    .line 346
    .end local v0    # "pc":Ljava/lang/Class;
    :goto_0
    return v2

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "x":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 435
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return v0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPressed([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 479
    if-nez p0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 481
    .local v0, "s":I
    const v4, 0x10100a7

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 480
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isPressedOrSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 495
    if-nez p0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v1

    .line 496
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 497
    .local v0, "s":I
    const v4, 0x10100a7

    if-eq v0, v4, :cond_2

    const v4, 0x10100a1

    if-ne v0, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 496
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSelected([I)Z
    .locals 5
    .param p0, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 487
    if-nez p0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v1

    .line 488
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 489
    .local v0, "s":I
    const v4, 0x10100a1

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 488
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static langDate(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "_dt"    # I

    .prologue
    .line 102
    if-nez p0, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 103
    :cond_0
    int-to-long v9, p1

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 104
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 105
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 106
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

    .line 107
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 108
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 109
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1

    .line 110
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

    .line 118
    :goto_0
    return-object v8

    .line 111
    :cond_1
    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    const-wide/32 v9, 0xa4cb800

    add-long/2addr v9, v1

    cmp-long v9, v9, v4

    if-lez v9, :cond_2

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f0901ba

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

    goto :goto_0

    .line 113
    :cond_2
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_3

    cmp-long v9, v1, v4

    if-ltz v9, :cond_3

    .line 114
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

    goto/16 :goto_0

    .line 116
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
    .line 140
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 141
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 142
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 143
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 144
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

    .line 145
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 146
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 147
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    .line 148
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f090011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 156
    :goto_0
    return-object v8

    .line 149
    :cond_1
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    .line 150
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f090012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 152
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

    goto :goto_0

    .line 154
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

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 161
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 162
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 168
    :goto_0
    return-object v2

    .line 163
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 164
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 165
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 166
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0a000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f090065

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 168
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

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 173
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 174
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_0
    return-object v2

    .line 175
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 176
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 177
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    .line 178
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    const v2, 0x7f0a000e

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3, p1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 179
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    const v2, 0x7f090065

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 180
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
    .line 122
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    if-nez v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 123
    :cond_0
    int-to-long v9, p0

    const-wide/16 v11, 0x3e8

    mul-long v4, v9, v11

    .line 124
    .local v4, "dt":J
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 125
    .local v3, "dnow":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 126
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

    .line 127
    .local v1, "daystart":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 128
    .local v0, "d":Ljava/util/Date;
    const-string v8, ""

    .line 129
    .local v8, "r":Ljava/lang/String;
    cmp-long v9, v1, v4

    if-gez v9, :cond_1

    .line 130
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

    .line 136
    :goto_0
    return-object v8

    .line 131
    :cond_1
    const-wide/32 v9, 0x5265c00

    sub-long v9, v1, v9

    cmp-long v9, v9, v4

    if-gez v9, :cond_2

    .line 132
    sget-object v9, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v10, 0x7f090012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 134
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

    .line 184
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

    const v1, 0x7f09006a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    .line 185
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

    const v1, 0x7f090069

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090068

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

    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "rus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ukr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
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

    .line 337
    :goto_0
    return-object v1

    .line 332
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

    .line 333
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

    .line 334
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

    .line 336
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

    .line 337
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
    .line 423
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 424
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 426
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 427
    check-cast v1, Landroid/view/ViewGroup;

    .line 428
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 431
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 429
    .restart local v0    # "i":I
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->removeImages(Landroid/view/View;)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 198
    if-nez p0, :cond_0

    const-string v5, ""

    .line 234
    :goto_0
    return-object v5

    .line 199
    :cond_0
    const-string v6, "<br>"

    const-string v7, "\\n"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    if-nez v6, :cond_1

    const-string v6, "&([a-zA-Z0-9#]+);"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 210
    :cond_1
    sget-object v6, Lcom/vkontakte/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 211
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v4, ""

    .line 212
    .local v4, "replacement":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    .line 231
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "result":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "entity":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 216
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-char v1, v6

    .line 217
    .local v1, "ch":C
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_3

    const-string v4, "\\\\\\\\"

    .line 229
    .end local v1    # "ch":C
    :goto_2
    invoke-virtual {v3, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 218
    .restart local v1    # "ch":C
    :cond_3
    const/16 v6, 0x22

    if-ne v1, v6, :cond_4

    const-string v4, "\\\\\""

    goto :goto_2

    .line 219
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, ""

    goto :goto_2

    .line 220
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 222
    .end local v1    # "ch":C
    :cond_6
    const-string v6, "gt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v4, ">"

    goto :goto_2

    .line 223
    :cond_7
    const-string v6, "lt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v4, "<"

    goto :goto_2

    .line 224
    :cond_8
    const-string v6, "amp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "&"

    goto :goto_2

    .line 225
    :cond_9
    const-string v6, "quot"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v4, "\\\\\""

    goto :goto_2

    .line 226
    :cond_a
    const-string v6, "ndash"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v4, "-"

    goto :goto_2

    .line 227
    :cond_b
    const-string v4, "?"

    goto :goto_2
.end method

.method public static replaceMentions(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v1, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "\\[club(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "<a href=\'vkontakte://profile/-$1\'>$2</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "(#[0-9a-zA-Z\u0430-\u044f\u0410-\u042f\u0401\u0451_]+)"

    const-string v2, "<a href=\'vkontakte://search/$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    const-string v2, "<a href=\'vklink://view/?$1\'>$1</a>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    return-object v0
.end method

.method public static scale(F)I
    .locals 1
    .param p0, "dip"    # F

    .prologue
    .line 367
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
    .line 450
    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_0

    .line 451
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/MyriadPro-Bold.otf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    .line 453
    :cond_0
    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_1

    .line 454
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/MyriadPro-Regular.otf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 456
    :cond_1
    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    move-object v2, p0

    .line 457
    check-cast v2, Landroid/widget/TextView;

    .line 458
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v4, v5, :cond_3

    instance-of v4, v2, Landroid/widget/EditText;

    if-nez v4, :cond_3

    instance-of v4, v2, Landroid/widget/Button;

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/SingleLineTransformationMethod;

    if-nez v4, :cond_3

    .line 459
    :cond_2
    const/4 v4, 0x0

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 461
    :cond_3
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 464
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Typeface;->isBold()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_5
    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 465
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 466
    .local v1, "paint":Landroid/graphics/Paint;
    if-eqz v1, :cond_6

    .line 467
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 470
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_6
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    move-object v3, p0

    .line 471
    check-cast v3, Landroid/view/ViewGroup;

    .line 472
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_9

    .line 476
    .end local v0    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_7
    return-void

    .line 464
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_8
    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    goto :goto_0

    .line 473
    .end local v2    # "tv":Landroid/widget/TextView;
    .restart local v0    # "i":I
    .restart local v3    # "vg":Landroid/view/ViewGroup;
    :cond_9
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setViewSel(Landroid/view/View;)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 351
    const/4 v1, 0x0

    check-cast v1, [I

    .line 352
    .local v1, "iState":[I
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 354
    check-cast v3, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/HighlightDrawable;->setSel(Z)V

    .line 356
    :cond_0
    move-object v2, v1

    .line 357
    .local v2, "initialState":[I
    invoke-virtual {p0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 358
    new-instance v3, Lcom/vkontakte/android/Global$1;

    invoke-direct {v3, v0, p0}, Lcom/vkontakte/android/Global$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 363
    const-wide/16 v4, 0x1f4

    .line 358
    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    return-void
.end method

.method private static showException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    const-string v0, "vk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    return-void
.end method

.method public static sortFriendList()V
    .locals 8

    .prologue
    .line 289
    sget v5, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-nez v5, :cond_5

    .line 290
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 322
    .end local v3    # "j":I
    .local v0, "ff":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .local v1, "i":I
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    :cond_1
    return-void

    .line 291
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

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
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

    .line 293
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 294
    .local v4, "t":Lcom/vkontakte/android/UserProfile;
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v6, v5, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 295
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v4, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 291
    .end local v4    # "t":Lcom/vkontakte/android/UserProfile;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_5
    sget v5, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 301
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 302
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_6

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 303
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

    .line 304
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 305
    .restart local v4    # "t":Lcom/vkontakte/android/UserProfile;
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v6, v5, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 306
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v4, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 302
    .end local v4    # "t":Lcom/vkontakte/android/UserProfile;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 311
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_8
    sget v5, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 312
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    if-eqz v5, :cond_1

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 314
    .restart local v0    # "ff":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_9

    .line 317
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 318
    const/4 v1, 0x0

    :goto_5
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 319
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 315
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

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static z(I)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 97
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
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
