.class public Lcom/vkontakte/android/NewsEntry;
.super Ljava/lang/Object;
.source "NewsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;
    }
.end annotation


# static fields
.field public static final A_APP:I = 0x8

.field public static final A_AUDIO:I = 0x3

.field public static final A_DOCUMENT:I = 0x9

.field public static final A_GEO:I = 0xa

.field public static final A_GRAFFITI:I = 0x6

.field public static final A_LINK:I = 0x5

.field public static final A_NOTE:I = 0x7

.field public static final A_PHOTO:I = 0x1

.field public static final A_POLL:I = 0x4

.field public static final A_POST:I = 0xb

.field public static final A_VIDEO:I = 0x2

.field public static final A_WIKI:I = 0xb

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CAN_COMMENT:I = 0x2

.field public static final FLAG_CAN_DELETE:I = 0x40

.field public static final FLAG_CAN_RETWEET:I = 0x1

.field public static final FLAG_GRAY_TEXT:I = 0x10

.field public static final FLAG_IS_RETWEET:I = 0x20

.field public static final FLAG_LIKED:I = 0x8

.field public static final FLAG_RETWEETED:I = 0x4

.field public static final TYPE_ADDED_PHOTO:I = 0x6

.field public static final TYPE_BIRTHDAY:I = 0x8

.field public static final TYPE_COMMENT:I = 0x5

.field public static final TYPE_NOTE:I = 0x3

.field public static final TYPE_PHOTO:I = 0x1

.field public static final TYPE_POST:I = 0x0

.field public static final TYPE_TAGGED_PHOTO:I = 0x7

.field public static final TYPE_TOPIC:I = 0x4

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field public attachData:Ljava/util/HashMap;
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

.field public attachTitle:Ljava/lang/String;

.field public attachType:I

.field public attachments:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public displayablePreviewText:Ljava/lang/CharSequence;

.field public displayableRetweetText:Ljava/lang/CharSequence;

.field public flags:I

.field public geoData:Lorg/json/JSONObject;

.field public lastComment:Ljava/lang/String;

.field public lastCommentUserName:Ljava/lang/String;

.field public lastCommentUserPhoto:Ljava/lang/String;

.field public numComments:I

.field public numLikes:I

.field public ownerID:I

.field public postID:I

.field public retweetText:Ljava/lang/String;

.field public retweetUID:I

.field public retweetUserName:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public time_l:I

.field public type:I

.field public userID:I

.field public userName:Ljava/lang/String;

.field public userPhotoURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/vkontakte/android/NewsEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry$1;-><init>()V

    .line 430
    sput-object v0, Lcom/vkontakte/android/NewsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 94
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    .line 97
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 99
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x118

    const/4 v5, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 73
    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 74
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 75
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 89
    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 94
    iput-object v4, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 95
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    .line 97
    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 99
    iput-object v4, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 377
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_2

    .line 383
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 387
    :goto_1
    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v3, :cond_1

    .line 388
    :cond_0
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 389
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int v1, v3, v4

    .line 390
    .local v1, "tSize":I
    const/16 v3, 0x25c

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 391
    int-to-float v3, v1

    const v4, 0x3f2a7efa    # 0.666f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/NewsEntry;->processThumbs(II)V

    .line 393
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "tSize":I
    :cond_1
    return-void

    .line 380
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 385
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 94
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    .line 97
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 99
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 107
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 108
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 109
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 110
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 111
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 113
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 114
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 115
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 119
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 120
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 121
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 122
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    iget-object v1, p1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->flags:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 128
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 129
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "item"    # Lorg/json/JSONObject;
    .param p4, "ownerFldName"    # Ljava/lang/String;
    .param p5, "senderFldName"    # Ljava/lang/String;
    .param p6, "idFldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 30
    .param p1, "item"    # Lorg/json/JSONObject;
    .param p4, "ownerFldName"    # Ljava/lang/String;
    .param p5, "senderFldName"    # Ljava/lang/String;
    .param p6, "idFldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p7, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v2, "UNKNOWN"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 73
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 74
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 75
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 89
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 94
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 95
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    .line 97
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 99
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 139
    :try_start_0
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 140
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "topic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 141
    :cond_0
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 142
    :cond_1
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 143
    :cond_2
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 144
    :cond_3
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 145
    :cond_4
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo_tag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 148
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v2, p5

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v2, p5

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    const-string v3, "DELETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "vk"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .end local p5    # "senderFldName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 152
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 153
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_22

    .line 155
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 159
    :goto_3
    const-string v2, "copy_comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090177

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "copy_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "copy_post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 162
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <a href=\'http://vk.com\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 164
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 175
    :cond_9
    :goto_4
    const/4 v2, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 176
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 177
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 178
    :cond_a
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "can_post"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 180
    :goto_5
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 181
    :cond_b
    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "user_reposted"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 182
    :cond_c
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "can_publish"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 183
    :cond_d
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 184
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 185
    :cond_e
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "user_likes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 186
    :cond_f
    const-string v2, "copy_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 188
    const-string v2, "copy_commenter_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "copy_commenter_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_6
    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-eq v2, v3, :cond_29

    .line 190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 204
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 205
    const-string v2, "sizes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 206
    .local v22, "sizes":Lorg/json/JSONArray;
    if-eqz v22, :cond_2b

    .line 207
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v13, v2, :cond_2a

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v27, v0

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v4, "owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pid"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "aid"

    const/4 v7, -0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v13    # "i":I
    .end local v22    # "sizes":Lorg/json/JSONArray;
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v27, v0

    new-instance v2, Lcom/vkontakte/android/VideoAttachment;

    const-string v3, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    const-string v7, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_12
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 226
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 227
    .local v10, "atts":Lorg/json/JSONArray;
    new-instance v25, Ljava/util/Vector;

    invoke-direct/range {v25 .. v25}, Ljava/util/Vector;-><init>()V

    .line 228
    .local v25, "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_a
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v13, v2, :cond_2c

    .line 231
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 232
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 234
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v25    # "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    :cond_15
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 236
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 237
    .local v12, "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-static {v12}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v12    # "geo":Lorg/json/JSONObject;
    :cond_16
    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 240
    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile_photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 241
    sget-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 244
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 247
    :cond_17
    const-string v2, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "photo_tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 248
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_30

    const-string v2, "photos"

    :goto_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 249
    .local v20, "ph":Lorg/json/JSONArray;
    if-eqz p7, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v11, 0x1

    .line 250
    .local v11, "ff":Z
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_33

    .line 251
    if-eqz v11, :cond_32

    const v2, 0x7f0a0033

    :goto_f
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 255
    :goto_10
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 256
    const/4 v13, 0x1

    .restart local v13    # "i":I
    :goto_11
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v13, v2, :cond_35

    .line 266
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 268
    .end local v11    # "ff":Z
    .end local v13    # "i":I
    .end local v20    # "ph":Lorg/json/JSONArray;
    :cond_19
    const-string v2, "copy_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 269
    const-string v2, "copy_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_38

    .line 271
    const/4 v14, -0x1

    .line 272
    .local v14, "index":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_12
    const/4 v2, 0x6

    if-lt v13, v2, :cond_37

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x118

    add-int/lit8 v6, v14, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 280
    .end local v13    # "i":I
    .end local v14    # "index":I
    :cond_1a
    :goto_13
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 281
    const-string v2, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 282
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 283
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 284
    .local v18, "lca":Lorg/json/JSONArray;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 285
    .local v17, "lc":Lorg/json/JSONObject;
    const-string v2, "text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    const-string v3, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v4, "$4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 289
    :cond_1b
    const-string v2, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    .line 290
    const-string v2, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 292
    const-string v2, "date"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 303
    .end local v17    # "lc":Lorg/json/JSONObject;
    .end local v18    # "lca":Lorg/json/JSONArray;
    :cond_1c
    :goto_14
    const-string v2, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 304
    new-instance v16, Lcom/vkontakte/android/LinkAttachment;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://vkontakte.ru/id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "- "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v2}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v16, "la":Lcom/vkontakte/android/LinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v16    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_1d
    const-string v2, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 309
    new-instance v16, Lcom/vkontakte/android/LinkAttachment;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://vkontakte.ru/wall"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reply_post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .restart local v16    # "la":Lcom/vkontakte/android/LinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v16    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_1e
    :goto_15
    return-void

    .restart local p5    # "senderFldName":Ljava/lang/String;
    :cond_1f
    move-object/from16 v2, p4

    .line 148
    goto/16 :goto_0

    :cond_20
    move-object/from16 v2, p4

    .line 149
    goto/16 :goto_1

    :cond_21
    move-object/from16 p5, p4

    .line 151
    goto/16 :goto_2

    .line 157
    .end local p5    # "senderFldName":Ljava/lang/String;
    :cond_22
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 313
    :catch_0
    move-exception v26

    .local v26, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "vk"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 165
    .end local v26    # "x":Ljava/lang/Exception;
    :cond_23
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_25

    .line 166
    const/4 v14, -0x1

    .line 167
    .restart local v14    # "index":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_16
    const/4 v2, 0x6

    if-lt v13, v2, :cond_24

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x118

    add-int/lit8 v6, v14, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 167
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/16 v3, 0xa

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_16

    .line 169
    .end local v13    # "i":I
    .end local v14    # "index":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x118

    if-gt v2, v3, :cond_26

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 172
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x118

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 179
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    goto/16 :goto_5

    .line 188
    :cond_28
    const-string v2, "copy_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    .line 193
    :cond_29
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    goto/16 :goto_7

    .line 209
    .restart local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .restart local v13    # "i":I
    .restart local v22    # "sizes":Lorg/json/JSONArray;
    :cond_2a
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 210
    .local v23, "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    .line 214
    .end local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v13    # "i":I
    .end local v23    # "so":Lorg/json/JSONObject;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v27, v0

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const/4 v4, 0x0

    .line 215
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x6d

    const-string v7, "src"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 216
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x78

    const-string v7, "src_big"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 217
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x79

    const-string v7, "src_xbig"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    .line 218
    const-string v4, "owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pid"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "aid"

    const/4 v7, -0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    .line 214
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 229
    .end local v22    # "sizes":Lorg/json/JSONArray;
    .restart local v10    # "atts":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    .restart local v25    # "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    :cond_2c
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    :goto_17
    invoke-static {v3, v2}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    .line 229
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    goto :goto_17

    .line 231
    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .local v8, "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v8, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 232
    .end local v8    # "a":Lcom/vkontakte/android/Attachment;
    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .restart local v8    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v8, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 248
    .end local v8    # "a":Lcom/vkontakte/android/Attachment;
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v25    # "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    :cond_30
    const-string v2, "photo_tags"

    goto/16 :goto_d

    .line 249
    .restart local v20    # "ph":Lorg/json/JSONArray;
    :cond_31
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 251
    .restart local v11    # "ff":Z
    :cond_32
    const v2, 0x7f0a0032

    goto/16 :goto_f

    .line 253
    :cond_33
    if-eqz v11, :cond_34

    const v2, 0x7f0a0035

    :goto_18
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_10

    :cond_34
    const v2, 0x7f0a0034

    goto :goto_18

    .line 257
    .restart local v13    # "i":I
    :cond_35
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 258
    .local v21, "photo":Lorg/json/JSONObject;
    const-string v2, "sizes"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 259
    .restart local v22    # "sizes":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .restart local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_19
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v15, v2, :cond_36

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v27, v0

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v4, "owner_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "aid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_11

    .line 261
    :cond_36
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 262
    .restart local v23    # "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    .line 272
    .end local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v11    # "ff":Z
    .end local v15    # "j":I
    .end local v20    # "ph":Lorg/json/JSONArray;
    .end local v21    # "photo":Lorg/json/JSONObject;
    .end local v22    # "sizes":Lorg/json/JSONArray;
    .end local v23    # "so":Lorg/json/JSONObject;
    .restart local v14    # "index":I
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/16 v3, 0xa

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_12

    .line 274
    .end local v13    # "i":I
    .end local v14    # "index":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x118

    if-gt v2, v3, :cond_39

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_13

    .line 277
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x118

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_13

    .line 295
    :cond_3a
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3b

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_1c

    .line 296
    :cond_3b
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 297
    .local v19, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v24, v2, v3

    .line 298
    .local v24, "tSize":I
    const/16 v2, 0x25c

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 299
    move/from16 v0, v24

    int-to-float v2, v0

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->processThumbs(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_14
.end method

.method private _serializeAttachments()[B
    .locals 5

    .prologue
    .line 442
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 451
    :goto_0
    return-object v3

    .line 443
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 444
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 446
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 447
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 449
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 447
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 448
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 450
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private calculateMultiThumbsHeight(Ljava/util/List;FF)F
    .locals 2
    .param p2, "width"    # F
    .param p3, "margin"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "ratios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsEntry;->sum(Ljava/util/List;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private deserializeAttachments([B)V
    .locals 8
    .param p1, "b"    # [B

    .prologue
    .line 544
    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 547
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 549
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 550
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 551
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 552
    .local v4, "type":I
    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-static {v3, v4}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "type":I
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private oi(C)I
    .locals 1
    .param p1, "o"    # C

    .prologue
    const/4 v0, 0x0

    .line 814
    sparse-switch p1, :sswitch_data_0

    .line 822
    :goto_0
    :sswitch_0
    return v0

    .line 818
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 820
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 814
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x71 -> :sswitch_2
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;
    .locals 9
    .param p0, "photo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v6}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 318
    .local v6, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x1

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 319
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 320
    const-string v0, "owner_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 321
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 322
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 323
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 324
    iget-object v7, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    new-instance v0, Lcom/vkontakte/android/PhotoAttachment;

    const-string v1, "src"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "src_big"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "owner_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pid"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "aid"

    const/4 v8, -0x7

    invoke-virtual {p0, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 325
    return-object v6

    .line 319
    :cond_0
    const-string v0, "pid"

    goto :goto_0
.end method

.method public static parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;
    .locals 2
    .param p0, "topic"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 341
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 342
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 343
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 344
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 345
    return-object v0
.end method

.method public static parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;
    .locals 8
    .param p0, "video"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v6}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 330
    .local v6, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x2

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 331
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 332
    const-string v0, "owner_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 333
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 334
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 335
    iget-object v7, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    new-instance v0, Lcom/vkontakte/android/VideoAttachment;

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "owner_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "id"

    :goto_1
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "duration"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 336
    return-object v6

    .line 331
    :cond_0
    const-string v0, "vid"

    goto :goto_0

    .line 335
    :cond_1
    const-string v4, "vid"

    goto :goto_1
.end method

.method private serializeAttachments()Ljava/lang/String;
    .locals 8

    .prologue
    .line 455
    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 464
    :cond_0
    return-object v2

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->_serializeAttachments()[B

    move-result-object v1

    .line 457
    .local v1, "d":[B
    const-string v2, ""

    .line 458
    .local v2, "r":Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v0, v1, v4

    .line 459
    .local v0, "b":B
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 461
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected static stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 9
    .param p0, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 572
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p0, v6, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 573
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 580
    return-object p0

    .line 573
    :cond_0
    aget-object v1, v3, v5

    .line 574
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 575
    .local v4, "start":I
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 576
    .local v0, "end":I
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 577
    new-instance v2, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 578
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v2, v4, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 573
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private sum(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 827
    .local v1, "sum":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    return v1

    .line 827
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "f":F
    add-float/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v0, 0x0

    .line 567
    if-nez p1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public flag(IZ)V
    .locals 2
    .param p1, "f"    # I
    .param p2, "v"    # Z

    .prologue
    .line 562
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    goto :goto_0
.end method

.method public flag(I)Z
    .locals 1
    .param p1, "f"    # I

    .prologue
    .line 558
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processThumbs(II)V
    .locals 65
    .param p1, "maxW"    # I
    .param p2, "maxH"    # I

    .prologue
    .line 602
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v51, "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v59

    :cond_0
    :goto_0
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-nez v60, :cond_2

    .line 606
    const-string v41, ""

    .line 607
    .local v41, "orients":Ljava/lang/String;
    const/16 v59, 0x3

    move/from16 v0, v59

    new-array v0, v0, [I

    move-object/from16 v42, v0

    .line 608
    .local v42, "orients_cnt":[I
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v44, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 610
    .local v10, "cnt":I
    const/4 v7, 0x0

    .line 612
    .local v7, "bad":Z
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v59

    :goto_1
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-nez v60, :cond_3

    .line 622
    if-nez v7, :cond_1

    sget-boolean v59, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    if-eqz v59, :cond_7

    .line 811
    :cond_1
    :goto_2
    return-void

    .line 603
    .end local v7    # "bad":Z
    .end local v10    # "cnt":I
    .end local v41    # "orients":Ljava/lang/String;
    .end local v42    # "orients_cnt":[I
    .end local v44    # "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_2
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 604
    .local v5, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v60, v0

    if-eqz v60, :cond_0

    check-cast v5, Lcom/vkontakte/android/ThumbAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    .restart local v7    # "bad":Z
    .restart local v10    # "cnt":I
    .restart local v41    # "orients":Ljava/lang/String;
    .restart local v42    # "orients_cnt":[I
    .restart local v44    # "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_3
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/vkontakte/android/ThumbAttachment;

    .line 613
    .local v49, "thumb":Lcom/vkontakte/android/ThumbAttachment;
    invoke-interface/range {v49 .. v49}, Lcom/vkontakte/android/ThumbAttachment;->getRatio()F

    move-result v43

    .line 614
    .local v43, "ratio":F
    const/high16 v60, -0x40800000    # -1.0f

    cmpl-float v60, v43, v60

    if-nez v60, :cond_4

    .line 615
    const/4 v7, 0x1

    .line 617
    :cond_4
    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0x3ff3333333333333L    # 1.2

    cmpl-double v60, v60, v62

    if-lez v60, :cond_5

    const/16 v40, 0x77

    .line 618
    .local v40, "orient":C
    :goto_3
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v60

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 619
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewsEntry;->oi(C)I

    move-result v60

    aget v61, v42, v60

    add-int/lit8 v61, v61, 0x1

    aput v61, v42, v60

    .line 620
    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v44

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 617
    .end local v40    # "orient":C
    :cond_5
    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0x3fe999999999999aL    # 0.8

    cmpg-double v60, v60, v62

    if-gez v60, :cond_6

    const/16 v40, 0x6e

    goto :goto_3

    :cond_6
    const/16 v40, 0x71

    goto :goto_3

    .line 627
    .end local v43    # "ratio":F
    .end local v49    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    :cond_7
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v59

    if-nez v59, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewsEntry;->sum(Ljava/util/List;)F

    move-result v59

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    div-float v6, v59, v60

    .line 629
    .local v6, "avg_ratio":F
    :goto_4
    const/high16 v59, 0x40000000    # 2.0f

    invoke-static/range {v59 .. v59}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v59

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v32, v0

    .local v32, "margin_w":F
    const/high16 v59, 0x40000000    # 2.0f

    invoke-static/range {v59 .. v59}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v59

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v31, v0

    .line 630
    .local v31, "margin_h":F
    if-lez p1, :cond_9

    .line 631
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v35, v0

    .line 632
    .local v35, "max_w":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v33, v0

    .line 638
    .local v33, "max_h":F
    :goto_5
    div-float v34, v35, v33

    .line 640
    .local v34, "max_ratio":F
    const/16 v59, 0x1

    move/from16 v0, v59

    if-ne v10, v0, :cond_b

    .line 641
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x78

    invoke-interface/range {v59 .. v60}, Lcom/vkontakte/android/ThumbAttachment;->getWidth(C)I

    move-result v59

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    move/from16 v0, v35

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v35

    .line 642
    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    move/from16 v0, v59

    float-to-double v0, v0

    move-wide/from16 v59, v0

    const-wide/high16 v61, 0x3fe0000000000000L    # 0.5

    cmpl-double v59, v59, v61

    if-lez v59, :cond_a

    .line 643
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v35, v60

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v35

    move/from16 v2, v60

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 627
    .end local v6    # "avg_ratio":F
    .end local v31    # "margin_h":F
    .end local v32    # "margin_w":F
    .end local v33    # "max_h":F
    .end local v34    # "max_ratio":F
    .end local v35    # "max_w":F
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 634
    .restart local v6    # "avg_ratio":F
    .restart local v31    # "margin_h":F
    .restart local v32    # "margin_w":F
    :cond_9
    const/high16 v35, 0x43a00000    # 320.0f

    .line 635
    .restart local v35    # "max_w":F
    const/high16 v33, 0x43520000    # 210.0f

    .restart local v33    # "max_h":F
    goto :goto_5

    .line 645
    .restart local v34    # "max_ratio":F
    :cond_a
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/high16 v60, 0x40000000    # 2.0f

    mul-float v60, v60, v35

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v35

    move/from16 v2, v60

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 649
    :cond_b
    const/16 v59, 0x2

    move/from16 v0, v59

    if-ne v10, v0, :cond_f

    .line 650
    const-string v59, "ww"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_c

    float-to-double v0, v6

    move-wide/from16 v59, v0

    const-wide v61, 0x3ff6666666666666L    # 1.4

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v63, v0

    mul-double v61, v61, v63

    cmpl-double v59, v59, v61

    if-lez v59, :cond_c

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v60

    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    sub-float v59, v60, v59

    move/from16 v0, v59

    float-to-double v0, v0

    move-wide/from16 v59, v0

    const-wide v61, 0x3fc999999999999aL    # 0.2

    cmpg-double v59, v59, v61

    if-gez v59, :cond_c

    .line 651
    move/from16 v54, v35

    .line 652
    .local v54, "w":F
    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v60, v54, v59

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v54, v59

    sub-float v61, v33, v31

    const/high16 v62, 0x40000000    # 2.0f

    div-float v61, v61, v62

    move/from16 v0, v59

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v59

    move/from16 v0, v60

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 653
    .local v16, "h":F
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x1

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 654
    const/16 v59, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 655
    .end local v16    # "h":F
    .end local v54    # "w":F
    :cond_c
    const-string v59, "ww"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_d

    const-string v59, "qq"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_e

    .line 656
    :cond_d
    sub-float v59, v35, v32

    const/high16 v60, 0x40000000    # 2.0f

    div-float v54, v59, v60

    .line 657
    .restart local v54    # "w":F
    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v60, v54, v59

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v54, v59

    move/from16 v0, v59

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v59

    move/from16 v0, v60

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 658
    .restart local v16    # "h":F
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 659
    const/16 v59, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 661
    .end local v16    # "h":F
    .end local v54    # "w":F
    :cond_e
    sub-float v60, v35, v32

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v60, v60, v59

    const/high16 v61, 0x3f800000    # 1.0f

    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v61, v61, v59

    const/high16 v62, 0x3f800000    # 1.0f

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v62, v59

    add-float v59, v59, v61

    div-float v55, v60, v59

    .line 662
    .local v55, "w0":F
    sub-float v59, v35, v55

    sub-float v56, v59, v32

    .line 663
    .local v56, "w1":F
    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v60, v55, v59

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v56, v59

    move/from16 v0, v60

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v59

    move/from16 v0, v33

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 664
    .restart local v16    # "h":F
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 665
    const/16 v59, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v56

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 669
    .end local v16    # "h":F
    .end local v55    # "w0":F
    .end local v56    # "w1":F
    :cond_f
    const/16 v59, 0x3

    move/from16 v0, v59

    if-ne v10, v0, :cond_11

    .line 670
    const-string v59, "www"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_10

    .line 671
    move/from16 v54, v35

    .line 672
    .restart local v54    # "w":F
    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v54, v59

    sub-float v60, v33, v31

    const v61, 0x3f28f5c3    # 0.66f

    mul-float v60, v60, v61

    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 673
    .local v20, "h_cover":F
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x1

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v20

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 675
    sub-float v59, v35, v32

    const/high16 v60, 0x40000000    # 2.0f

    div-float v54, v59, v60

    .line 676
    sub-float v59, v33, v20

    sub-float v60, v59, v31

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v61, v54, v59

    const/16 v59, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v54, v59

    move/from16 v0, v61

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v59

    move/from16 v0, v60

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 677
    .restart local v16    # "h":F
    const/16 v59, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 678
    const/16 v59, 0x2

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v16

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 680
    .end local v16    # "h":F
    .end local v20    # "h_cover":F
    .end local v54    # "w":F
    :cond_10
    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v16, v0

    .line 681
    .local v16, "h":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    mul-float v59, v59, v60

    move/from16 v0, v59

    float-to-double v0, v0

    move-wide/from16 v59, v0

    sub-float v61, v35, v32

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v61, v0

    const-wide/high16 v63, 0x3fe8000000000000L    # 0.75

    mul-double v61, v61, v63

    invoke-static/range {v59 .. v62}, Ljava/lang/Math;->min(DD)D

    move-result-wide v59

    move-wide/from16 v0, v59

    double-to-int v0, v0

    move/from16 v58, v0

    .line 682
    .local v58, "w_cover":I
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v58

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 684
    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    sub-float v60, v33, v31

    mul-float v60, v60, v59

    const/16 v59, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v61

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    add-float v59, v59, v61

    div-float v18, v60, v59

    .line 685
    .local v18, "h1":F
    sub-float v59, v33, v18

    sub-float v17, v59, v31

    .line 686
    .local v17, "h0":F
    move/from16 v0, v58

    int-to-float v0, v0

    move/from16 v59, v0

    sub-float v59, v35, v59

    sub-float v60, v59, v32

    const/16 v59, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    mul-float v61, v18, v59

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    mul-float v59, v59, v17

    move/from16 v0, v61

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v59

    move/from16 v0, v60

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v54

    .line 688
    .restart local v54    # "w":F
    const/16 v59, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v17

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 689
    const/16 v59, 0x2

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v60, 0x0

    const/16 v61, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v54

    move/from16 v2, v18

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 693
    .end local v16    # "h":I
    .end local v17    # "h0":F
    .end local v18    # "h1":F
    .end local v54    # "w":F
    .end local v58    # "w_cover":I
    :cond_11
    const/16 v59, 0x4

    move/from16 v0, v59

    if-ne v10, v0, :cond_13

    .line 694
    const-string v59, "wwww"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_12

    .line 695
    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v54, v0

    .line 696
    .local v54, "w":I
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v60, v59

    move/from16 v0, v59

    float-to-double v0, v0

    move-wide/from16 v59, v0

    sub-float v61, v33, v31

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v61, v0

    const-wide v63, 0x3fe51eb851eb851fL    # 0.66

    mul-double v61, v61, v63

    invoke-static/range {v59 .. v62}, Ljava/lang/Math;->min(DD)D

    move-result-wide v59

    move-wide/from16 v0, v59

    double-to-int v0, v0

    move/from16 v20, v0

    .line 697
    .local v20, "h_cover":I
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x1

    const/16 v63, 0x0

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 699
    const/high16 v59, 0x40000000    # 2.0f

    mul-float v59, v59, v32

    sub-float v60, v35, v59

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v61

    const/16 v59, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    add-float v61, v61, v59

    const/16 v59, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    add-float v59, v59, v61

    div-float v59, v60, v59

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v16, v0

    .line 700
    .restart local v16    # "h":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    mul-float v59, v59, v60

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v55, v0

    .line 701
    .local v55, "w0":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    mul-float v59, v59, v60

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v56, v0

    .line 702
    .local v56, "w1":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    mul-float v59, v59, v60

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v57, v0

    .line 703
    .local v57, "w2":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v59, v0

    sub-float v59, v33, v59

    sub-float v59, v59, v31

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v60, v0

    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->min(FF)F

    move-result v59

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v16, v0

    .line 705
    const/16 v59, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 706
    const/16 v59, 0x2

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 707
    const/16 v59, 0x3

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 709
    .end local v16    # "h":I
    .end local v20    # "h_cover":I
    .end local v54    # "w":I
    .end local v55    # "w0":I
    .end local v56    # "w1":I
    .end local v57    # "w2":I
    :cond_12
    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v16, v0

    .line 710
    .restart local v16    # "h":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    mul-float v59, v59, v60

    move/from16 v0, v59

    float-to-double v0, v0

    move-wide/from16 v59, v0

    sub-float v61, v35, v32

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v61, v0

    const-wide v63, 0x3fe51eb851eb851fL    # 0.66

    mul-double v61, v61, v63

    invoke-static/range {v59 .. v62}, Ljava/lang/Math;->min(DD)D

    move-result-wide v59

    move-wide/from16 v0, v59

    double-to-int v0, v0

    move/from16 v58, v0

    .line 711
    .restart local v58    # "w_cover":I
    const/16 v59, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v58

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 713
    const/high16 v59, 0x40000000    # 2.0f

    mul-float v59, v59, v31

    sub-float v60, v33, v59

    const/high16 v61, 0x3f800000    # 1.0f

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v61, v61, v59

    const/high16 v62, 0x3f800000    # 1.0f

    const/16 v59, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v62, v59

    add-float v61, v61, v59

    const/high16 v62, 0x3f800000    # 1.0f

    const/16 v59, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v62, v59

    add-float v59, v59, v61

    div-float v59, v60, v59

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v54, v0

    .line 714
    .restart local v54    # "w":I
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v60, v59

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v17, v0

    .line 715
    .local v17, "h0":I
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v60, v59

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v18, v0

    .line 716
    .local v18, "h1":I
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    const/16 v59, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v59

    div-float v59, v60, v59

    add-float v59, v59, v31

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v19, v0

    .line 717
    .local v19, "h2":I
    move/from16 v0, v58

    int-to-float v0, v0

    move/from16 v59, v0

    sub-float v59, v35, v59

    sub-float v59, v59, v32

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->min(FF)F

    move-result v59

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v54, v0

    .line 719
    const/16 v59, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x1

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 720
    const/16 v59, 0x2

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x1

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 721
    const/16 v59, 0x3

    move-object/from16 v0, v51

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x1

    invoke-interface/range {v59 .. v63}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_2

    .line 726
    .end local v16    # "h":I
    .end local v17    # "h0":I
    .end local v18    # "h1":I
    .end local v19    # "h2":I
    .end local v54    # "w":I
    .end local v58    # "w_cover":I
    :cond_13
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v45, "ratios_cropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    float-to-double v0, v6

    move-wide/from16 v59, v0

    const-wide v61, 0x3ff199999999999aL    # 1.1

    cmpl-double v59, v59, v61

    if-lez v59, :cond_17

    .line 728
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :goto_6
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-nez v59, :cond_16

    .line 737
    :cond_14
    new-instance v53, Ljava/util/HashMap;

    invoke-direct/range {v53 .. v53}, Ljava/util/HashMap;-><init>()V

    .line 741
    .local v53, "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    new-instance v59, Ljava/lang/StringBuilder;

    move v15, v10

    .local v15, "first_line":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x1

    move/from16 v0, v60

    new-array v0, v0, [F

    move-object/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v35

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    move-object/from16 v0, v53

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const/4 v15, 0x1

    :goto_7
    add-int/lit8 v59, v10, -0x1

    move/from16 v0, v59

    if-le v15, v0, :cond_18

    .line 753
    const/4 v15, 0x1

    :goto_8
    add-int/lit8 v59, v10, -0x2

    move/from16 v0, v59

    if-le v15, v0, :cond_19

    .line 765
    const/16 v36, 0x0

    .line 766
    .local v36, "opt_conf":Ljava/lang/String;
    const/16 v37, 0x0

    .line 767
    .local v37, "opt_diff":F
    const/16 v38, 0x0

    .line 769
    .local v38, "opt_height":F
    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    .line 770
    .local v25, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :cond_15
    :goto_9
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-nez v59, :cond_1b

    .line 789
    const/4 v8, 0x0

    .line 791
    .local v8, "breakNext":Z
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/ArrayList;

    .line 792
    .local v52, "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/ArrayList;

    .line 793
    .local v46, "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const-string v59, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 794
    .local v9, "chunks":[Ljava/lang/String;
    move-object/from16 v0, v53

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [F

    .line 795
    .local v39, "opt_heights":[F
    array-length v0, v9

    move/from16 v59, v0

    add-int/lit8 v27, v59, -0x1

    .line 796
    .local v27, "last_row":I
    const/16 v24, 0x0

    .line 797
    .local v24, "k":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_a
    array-length v0, v9

    move/from16 v59, v0

    move/from16 v0, v22

    move/from16 v1, v59

    if-ge v0, v1, :cond_1

    .line 798
    aget-object v59, v9, v22

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 799
    .local v28, "line_chunks_num":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v30, "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v28

    if-lt v0, v1, :cond_20

    .line 801
    aget v29, v39, v24

    .line 802
    .local v29, "line_height":F
    add-int/lit8 v24, v24, 0x1

    .line 803
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v59

    add-int/lit8 v26, v59, -0x1

    .line 804
    .local v26, "last_column":I
    const/16 v23, 0x0

    :goto_c
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v59

    move/from16 v0, v23

    move/from16 v1, v59

    if-lt v0, v1, :cond_21

    .line 797
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 728
    .end local v8    # "breakNext":Z
    .end local v9    # "chunks":[Ljava/lang/String;
    .end local v15    # "first_line":I
    .end local v22    # "i":I
    .end local v23    # "j":I
    .end local v24    # "k":I
    .end local v25    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "last_column":I
    .end local v27    # "last_row":I
    .end local v28    # "line_chunks_num":I
    .end local v29    # "line_height":F
    .end local v30    # "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    .end local v36    # "opt_conf":Ljava/lang/String;
    .end local v37    # "opt_diff":F
    .end local v38    # "opt_height":F
    .end local v39    # "opt_heights":[F
    .end local v46    # "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v52    # "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    .end local v53    # "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    :cond_16
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v43

    .line 729
    .restart local v43    # "ratio":F
    const/high16 v59, 0x3f800000    # 1.0f

    move/from16 v0, v59

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v59

    move-object/from16 v0, v45

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 732
    .end local v43    # "ratio":F
    :cond_17
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :goto_d
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_14

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v43

    .line 733
    .restart local v43    # "ratio":F
    const/high16 v59, 0x3f800000    # 1.0f

    move/from16 v0, v59

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v59

    move-object/from16 v0, v45

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 745
    .end local v43    # "ratio":F
    .restart local v15    # "first_line":I
    .restart local v53    # "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    :cond_18
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, ","

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    sub-int v47, v10, v15

    .local v47, "second_line":I
    move-object/from16 v0, v59

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [F

    move-object/from16 v60, v0

    const/16 v61, 0x0

    .line 746
    const/16 v62, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v35

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    const/16 v61, 0x1

    .line 747
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v62

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v35

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    .line 745
    move-object/from16 v0, v53

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 754
    .end local v47    # "second_line":I
    :cond_19
    const/16 v47, 0x1

    .restart local v47    # "second_line":I
    :goto_e
    sub-int v59, v10, v15

    add-int/lit8 v59, v59, -0x1

    move/from16 v0, v47

    move/from16 v1, v59

    if-le v0, v1, :cond_1a

    .line 753
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 755
    :cond_1a
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, ","

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, ","

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    sub-int v60, v10, v15

    sub-int v48, v60, v47

    .local v48, "third_line":I
    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x3

    move/from16 v0, v60

    new-array v0, v0, [F

    move-object/from16 v60, v0

    const/16 v61, 0x0

    .line 756
    const/16 v62, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v35

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    const/16 v61, 0x1

    .line 757
    add-int v62, v15, v47

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v35

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    const/16 v61, 0x2

    .line 758
    add-int v62, v15, v47

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v45

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v35

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    .line 755
    move-object/from16 v0, v53

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_e

    .line 770
    .end local v47    # "second_line":I
    .end local v48    # "third_line":I
    .restart local v25    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v36    # "opt_conf":Ljava/lang/String;
    .restart local v37    # "opt_diff":F
    .restart local v38    # "opt_height":F
    :cond_1b
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 771
    .local v11, "conf":Ljava/lang/String;
    move-object/from16 v0, v53

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [F

    .line 772
    .local v21, "heights":[F
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v59, v0

    add-int/lit8 v59, v59, -0x1

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    mul-float v13, v31, v59

    .line 773
    .local v13, "conf_h":F
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v61, v0

    const/16 v59, 0x0

    :goto_f
    move/from16 v0, v59

    move/from16 v1, v61

    if-lt v0, v1, :cond_1f

    .line 774
    sub-float v59, v13, v33

    invoke-static/range {v59 .. v59}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 775
    .local v12, "conf_diff":F
    const/16 v59, 0x2c

    move/from16 v0, v59

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v59

    const/16 v61, -0x1

    move/from16 v0, v59

    move/from16 v1, v61

    if-eq v0, v1, :cond_1d

    .line 776
    const-string v59, ","

    move-object/from16 v0, v59

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 777
    .local v14, "conf_nums":[Ljava/lang/String;
    const/16 v59, 0x0

    aget-object v59, v14, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v61, 0x1

    aget-object v61, v14, v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    move/from16 v0, v59

    move/from16 v1, v61

    if-gt v0, v1, :cond_1c

    .line 778
    array-length v0, v14

    move/from16 v59, v0

    const/16 v61, 0x2

    move/from16 v0, v59

    move/from16 v1, v61

    if-le v0, v1, :cond_1d

    const/16 v59, 0x1

    aget-object v59, v14, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v61, 0x2

    aget-object v61, v14, v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    move/from16 v0, v59

    move/from16 v1, v61

    if-le v0, v1, :cond_1d

    .line 779
    :cond_1c
    float-to-double v0, v12

    move-wide/from16 v61, v0

    const-wide v63, 0x3ff199999999999aL    # 1.1

    mul-double v61, v61, v63

    move-wide/from16 v0, v61

    double-to-float v12, v0

    .line 782
    .end local v14    # "conf_nums":[Ljava/lang/String;
    :cond_1d
    if-eqz v36, :cond_1e

    cmpg-float v59, v12, v37

    if-gez v59, :cond_15

    .line 783
    :cond_1e
    move-object/from16 v36, v11

    .line 784
    move/from16 v37, v12

    .line 785
    goto/16 :goto_9

    .line 773
    .end local v12    # "conf_diff":F
    :cond_1f
    aget v16, v21, v59

    .local v16, "h":F
    add-float v13, v13, v16

    add-int/lit8 v59, v59, 0x1

    goto :goto_f

    .line 800
    .end local v11    # "conf":Ljava/lang/String;
    .end local v13    # "conf_h":F
    .end local v16    # "h":F
    .end local v21    # "heights":[F
    .restart local v8    # "breakNext":Z
    .restart local v9    # "chunks":[Ljava/lang/String;
    .restart local v22    # "i":I
    .restart local v23    # "j":I
    .restart local v24    # "k":I
    .restart local v27    # "last_row":I
    .restart local v28    # "line_chunks_num":I
    .restart local v30    # "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    .restart local v39    # "opt_heights":[F
    .restart local v46    # "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v52    # "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    :cond_20
    const/16 v59, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/vkontakte/android/ThumbAttachment;

    move-object/from16 v0, v30

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_b

    .line 805
    .restart local v26    # "last_column":I
    .restart local v29    # "line_height":F
    :cond_21
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/vkontakte/android/ThumbAttachment;

    .line 806
    .restart local v49    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    const/16 v59, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v50

    .line 807
    .local v50, "thumb_ratio":F
    mul-float v59, v50, v29

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    const/16 v59, 0x1

    :goto_10
    const/16 v62, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v60

    move/from16 v2, v61

    move/from16 v3, v59

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 804
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_c

    .line 807
    :cond_22
    const/16 v59, 0x0

    goto :goto_10
.end method

.method public readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xd

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/16 v5, 0x118

    .line 491
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 492
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 493
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 494
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 495
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 496
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 498
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 499
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 500
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 501
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 505
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V

    .line 506
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 507
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_0

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 508
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    shr-int/lit8 v2, v2, 0x18

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 513
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_1

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 515
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-le v2, v7, :cond_3

    .line 516
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    .line 517
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 518
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 528
    :cond_2
    :goto_0
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v2, v4, :cond_5

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <a href=\'http://vk.com\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 530
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 536
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_7

    .line 537
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 541
    :goto_2
    return-void

    .line 521
    :cond_3
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_2

    .line 522
    :cond_4
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 523
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 524
    .local v1, "tSize":I
    const/16 v2, 0x25c

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 525
    int-to-float v2, v1

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->processThumbs(II)V

    goto/16 :goto_0

    .line 531
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "tSize":I
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_6

    .line 532
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 534
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 539
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->_serializeAttachments()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 428
    return-void
.end method

.method public writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "pid"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    const-string v1, "uid"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    const-string v1, "text"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v1, "time"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    const-string v1, "likes"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    const-string v1, "comments"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const-string v1, "username"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "userphoto"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v3, "retweet_uid"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    const-string v3, "retweet_username"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v3, "attachments"

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->_serializeAttachments()[B

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 480
    const-string v1, "flags"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    const-string v3, "retweet_text"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "last_comment_name"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v1, "last_comment_photo"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "last_comment_text"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    invoke-virtual {p1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 488
    return-void

    .line 477
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 478
    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 479
    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 481
    goto :goto_3
.end method
