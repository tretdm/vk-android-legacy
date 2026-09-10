.class public Lcom/vkontakte/android/NewsEntry;
.super Ljava/lang/Object;
.source "NewsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;,
        Lcom/vkontakte/android/NewsEntry$XColorSpan;
    }
.end annotation


# static fields
.field public static final A_ALBUM:I = 0xd

.field public static final A_APP:I = 0x8

.field public static final A_AUDIO:I = 0x3

.field public static final A_DOCUMENT:I = 0x9

.field public static final A_GEO:I = 0xa

.field public static final A_GRAFFITI:I = 0x6

.field public static final A_LINK:I = 0x5

.field public static final A_NOTE:I = 0x7

.field public static final A_PHOTO:I = 0x1

.field public static final A_POLL:I = 0x4

.field public static final A_POST:I = 0xc

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

.field public static final FLAG_CAN_EDIT:I = 0x80

.field public static final FLAG_CAN_RETWEET:I = 0x1

.field public static final FLAG_GRAY_FIRST_LINE:I = 0x100

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

.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 509
    new-instance v0, Lcom/vkontakte/android/NewsEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry$1;-><init>()V

    .line 508
    sput-object v0, Lcom/vkontakte/android/NewsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 517
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 100
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 103
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 105
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 109
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x6

    const/16 v9, 0x118

    const/4 v8, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v5, "UNKNOWN"

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 79
    iput v8, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 80
    const-string v5, ""

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 81
    const-string v5, ""

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 95
    iput v8, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 100
    iput-object v6, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 103
    iput v8, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 105
    iput-object v6, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 392
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_3

    .line 396
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 400
    :goto_1
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 401
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-le v5, v10, :cond_5

    .line 402
    const/4 v1, -0x1

    .line 403
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v10, :cond_4

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 412
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_0
    :goto_3
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    sget-boolean v5, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v5, :cond_2

    .line 413
    :cond_1
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 414
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int v3, v5, v6

    .line 415
    .local v3, "tSize":I
    const/16 v5, 0x25c

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 416
    int-to-float v5, v3

    const v6, 0x3f2a7efa    # 0.666f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v3, v5, v6}, Lcom/vkontakte/android/NewsEntry;->processThumbs(IILjava/util/ArrayList;)V

    .line 418
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "tSize":I
    :cond_2
    return-void

    .line 393
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 398
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 403
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    :cond_4
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/16 v6, 0xa

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 405
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_6

    .line 406
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 408
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 100
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 103
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 105
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 113
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 114
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 115
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 116
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 117
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 119
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 120
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 121
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 125
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 126
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 127
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 128
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->flags:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 134
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 135
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x118

    const/4 v7, 0x0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v5, "UNKNOWN"

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 79
    iput v7, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 80
    const-string v5, ""

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 81
    const-string v5, ""

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 95
    iput v7, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 100
    iput-object v6, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 103
    iput v7, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 105
    iput-object v6, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 423
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 424
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 425
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 426
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 429
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 430
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 431
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 432
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 434
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 435
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 441
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 442
    .local v1, "len":I
    new-array v0, v1, [B

    .line 443
    .local v0, "atts":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 444
    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "atts":[B
    .end local v1    # "len":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_2

    .line 448
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 452
    :goto_1
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    sget-boolean v5, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v5, :cond_1

    .line 453
    :cond_0
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 454
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int v3, v5, v6

    .line 455
    .local v3, "tSize":I
    const/16 v5, 0x25c

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 456
    int-to-float v5, v3

    const v6, 0x3f2a7efa    # 0.666f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v3, v5, v6}, Lcom/vkontakte/android/NewsEntry;->processThumbs(IILjava/util/ArrayList;)V

    .line 458
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "tSize":I
    :cond_1
    return-void

    .line 445
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 450
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_1
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
    .line 140
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

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 32
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
    .line 143
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p7, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v2, "UNKNOWN"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 79
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 80
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 81
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 95
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 100
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 105
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 145
    :try_start_0
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
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

    .line 147
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

    .line 148
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

    .line 149
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

    .line 150
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

    .line 151
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

    .line 153
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 154
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

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

    .line 155
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

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

    .line 156
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

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .end local p5    # "senderFldName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 160
    const-string v2, "copy_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 162
    const-string v2, "copy_commenter_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "copy_commenter_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-eq v2, v3, :cond_25

    .line 164
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 165
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

    .line 171
    :cond_8
    :goto_4
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_26

    .line 173
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 177
    :goto_5
    const-string v2, "copy_comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090178

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

    .line 181
    :cond_9
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 182
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 183
    .local v11, "atts":Lorg/json/JSONArray;
    new-instance v27, Ljava/util/Vector;

    invoke-direct/range {v27 .. v27}, Ljava/util/Vector;-><init>()V

    .line 184
    .local v27, "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v14, v2, :cond_27

    .line 196
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 197
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 198
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 202
    .end local v11    # "atts":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v27    # "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090192

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

    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 216
    :cond_e
    :goto_a
    const/4 v2, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 217
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 218
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 219
    :cond_f
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "can_post"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 221
    :goto_b
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 222
    :cond_10
    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "user_reposted"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 223
    :cond_11
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "can_publish"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 224
    :cond_12
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 225
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 226
    :cond_13
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "user_likes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 227
    :cond_14
    const-string v2, "can_edit"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 236
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 237
    const-string v2, "sizes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 238
    .local v24, "sizes":Lorg/json/JSONArray;
    if-eqz v24, :cond_33

    .line 239
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v9, "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_c
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v14, v2, :cond_32

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v29, v0

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

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v14    # "i":I
    .end local v24    # "sizes":Lorg/json/JSONArray;
    :cond_16
    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v29, v0

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

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_17
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 259
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 260
    .local v13, "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v13    # "geo":Lorg/json/JSONObject;
    :cond_18
    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 263
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

    if-eqz v2, :cond_19

    .line 264
    sget-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 270
    :cond_19
    const-string v2, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "photo_tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 271
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_34

    const-string v2, "photos"

    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 272
    .local v21, "ph":Lorg/json/JSONArray;
    if-eqz p7, :cond_35

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

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

    if-eqz v2, :cond_35

    const/4 v12, 0x1

    .line 273
    .local v12, "ff":Z
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_37

    .line 274
    if-eqz v12, :cond_36

    const v2, 0x7f0a0033

    :goto_10
    const/4 v3, 0x0

    move-object/from16 v0, v21

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

    .line 278
    :goto_11
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 279
    const/4 v14, 0x1

    .restart local v14    # "i":I
    :goto_12
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v14, v2, :cond_39

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 291
    .end local v12    # "ff":Z
    .end local v14    # "i":I
    .end local v21    # "ph":Lorg/json/JSONArray;
    :cond_1b
    const-string v2, "copy_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 292
    const-string v2, "copy_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_3c

    .line 294
    const/4 v15, -0x1

    .line 295
    .local v15, "index":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_13
    const/4 v2, 0x6

    if-lt v14, v2, :cond_3b

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x118

    add-int/lit8 v6, v15, -0x1

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

    .line 303
    .end local v14    # "i":I
    .end local v15    # "index":I
    :cond_1c
    :goto_14
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

    .line 304
    const-string v2, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 305
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 306
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 307
    .local v19, "lca":Lorg/json/JSONArray;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 308
    .local v18, "lc":Lorg/json/JSONObject;
    const-string v2, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 309
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1d

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    const-string v3, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v4, "$4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 312
    :cond_1d
    const-string v2, "uid"

    move-object/from16 v0, v18

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

    .line 313
    const-string v2, "uid"

    move-object/from16 v0, v18

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

    .line 315
    const-string v2, "date"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 326
    .end local v18    # "lc":Lorg/json/JSONObject;
    .end local v19    # "lca":Lorg/json/JSONArray;
    :cond_1e
    :goto_15
    const-string v2, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 327
    new-instance v17, Lcom/vkontakte/android/LinkAttachment;

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

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v2}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v17, "la":Lcom/vkontakte/android/LinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v17    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_1f
    const-string v2, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 332
    new-instance v17, Lcom/vkontakte/android/LinkAttachment;

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

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .restart local v17    # "la":Lcom/vkontakte/android/LinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v17    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_20
    :goto_16
    return-void

    .restart local p5    # "senderFldName":Ljava/lang/String;
    :cond_21
    move-object/from16 v2, p4

    .line 154
    goto/16 :goto_0

    :cond_22
    move-object/from16 v2, p4

    .line 155
    goto/16 :goto_1

    :cond_23
    move-object/from16 p5, p4

    .line 157
    goto/16 :goto_2

    .line 162
    .end local p5    # "senderFldName":Ljava/lang/String;
    :cond_24
    const-string v2, "copy_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    .line 167
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 336
    :catch_0
    move-exception v28

    .local v28, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "vk"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 175
    .end local v28    # "x":Ljava/lang/Exception;
    :cond_26
    :try_start_1
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    goto/16 :goto_5

    .line 187
    .restart local v11    # "atts":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    .restart local v27    # "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    :cond_27
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    :goto_17
    invoke-static {v3, v2}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v10

    .line 188
    .local v10, "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 189
    instance-of v2, v10, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v2, :cond_28

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "http://vk.com/album"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    check-cast v0, Lcom/vkontakte/android/AlbumAttachment;

    move-object v2, v0

    iget v2, v2, Lcom/vkontakte/android/AlbumAttachment;->oid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v10, Lcom/vkontakte/android/AlbumAttachment;

    .end local v10    # "att":Lcom/vkontakte/android/Attachment;
    iget v3, v10, Lcom/vkontakte/android/AlbumAttachment;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 192
    .local v23, "repl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 184
    .end local v23    # "repl":Ljava/lang/String;
    :cond_28
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 187
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    goto :goto_17

    .line 196
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .local v8, "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v8, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 197
    .end local v8    # "a":Lcom/vkontakte/android/Attachment;
    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .restart local v8    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v8, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_b

    instance-of v3, v8, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 198
    .end local v8    # "a":Lcom/vkontakte/android/Attachment;
    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .restart local v8    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v8, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_c

    instance-of v3, v8, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 206
    .end local v8    # "a":Lcom/vkontakte/android/Attachment;
    .end local v11    # "atts":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v27    # "tmp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Attachment;>;"
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_2f

    .line 207
    const/4 v15, -0x1

    .line 208
    .restart local v15    # "index":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_18
    const/4 v2, 0x6

    if-lt v14, v2, :cond_2e

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x118

    add-int/lit8 v6, v15, -0x1

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

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 208
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/16 v3, 0xa

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    .line 210
    .end local v14    # "i":I
    .end local v15    # "index":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x118

    if-gt v2, v3, :cond_30

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 213
    :cond_30
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

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 220
    :cond_31
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    goto/16 :goto_b

    .line 241
    .restart local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .restart local v14    # "i":I
    .restart local v24    # "sizes":Lorg/json/JSONArray;
    :cond_32
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 242
    .local v25, "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    .line 246
    .end local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v14    # "i":I
    .end local v25    # "so":Lorg/json/JSONObject;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const/4 v4, 0x0

    .line 247
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x6d

    const-string v7, "src"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 248
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x78

    const-string v7, "src_big"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 249
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x79

    const-string v7, "src_xbig"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    .line 250
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

    .line 246
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 271
    .end local v24    # "sizes":Lorg/json/JSONArray;
    :cond_34
    const-string v2, "photo_tags"

    goto/16 :goto_e

    .line 272
    .restart local v21    # "ph":Lorg/json/JSONArray;
    :cond_35
    const/4 v12, 0x0

    goto/16 :goto_f

    .line 274
    .restart local v12    # "ff":Z
    :cond_36
    const v2, 0x7f0a0032

    goto/16 :goto_10

    .line 276
    :cond_37
    if-eqz v12, :cond_38

    const v2, 0x7f0a0035

    :goto_19
    const/4 v3, 0x0

    move-object/from16 v0, v21

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

    goto/16 :goto_11

    :cond_38
    const v2, 0x7f0a0034

    goto :goto_19

    .line 280
    .restart local v14    # "i":I
    :cond_39
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 281
    .local v22, "photo":Lorg/json/JSONObject;
    const-string v2, "sizes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 282
    .restart local v24    # "sizes":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .restart local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1a
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_3a

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v4, "owner_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "aid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_12

    .line 284
    :cond_3a
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 285
    .restart local v25    # "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v16, v16, 0x1

    goto :goto_1a

    .line 295
    .end local v9    # "aphotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v12    # "ff":Z
    .end local v16    # "j":I
    .end local v21    # "ph":Lorg/json/JSONArray;
    .end local v22    # "photo":Lorg/json/JSONObject;
    .end local v24    # "sizes":Lorg/json/JSONArray;
    .end local v25    # "so":Lorg/json/JSONObject;
    .restart local v15    # "index":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/16 v3, 0xa

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 297
    .end local v14    # "i":I
    .end local v15    # "index":I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x118

    if-gt v2, v3, :cond_3d

    .line 298
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

    goto/16 :goto_14

    .line 300
    :cond_3d
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

    goto/16 :goto_14

    .line 318
    :cond_3e
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3f

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v2, :cond_3f

    sget-boolean v2, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-eqz v2, :cond_1e

    .line 319
    :cond_3f
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    .line 320
    .local v20, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v26, v2, v3

    .line 321
    .local v26, "tSize":I
    const/16 v2, 0x25c

    move/from16 v0, v26

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 322
    move/from16 v0, v26

    int-to-float v2, v0

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/NewsEntry;->processThumbs(IILjava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_15
.end method

.method private _serializeAttachments()[B
    .locals 5

    .prologue
    .line 520
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 529
    :goto_0
    return-object v3

    .line 521
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 522
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 524
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 525
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 527
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 525
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 526
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 528
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private static calculateMultiThumbsHeight(Ljava/util/List;FF)F
    .locals 2
    .param p1, "width"    # F
    .param p2, "margin"    # F
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
    .line 954
    .local p0, "ratios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float v0, p1, v0

    invoke-static {p0}, Lcom/vkontakte/android/NewsEntry;->sum(Ljava/util/List;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private deserializeAttachments([B)V
    .locals 8
    .param p1, "b"    # [B

    .prologue
    .line 622
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 625
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 627
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 628
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 629
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 630
    .local v4, "type":I
    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 632
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "type":I
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static oi(C)I
    .locals 1
    .param p0, "o"    # C

    .prologue
    const/4 v0, 0x0

    .line 936
    sparse-switch p0, :sswitch_data_0

    .line 944
    :goto_0
    :sswitch_0
    return v0

    .line 940
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 942
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 936
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
    .line 340
    new-instance v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v6}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 341
    .local v6, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x1

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 342
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 343
    const-string v0, "owner_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 344
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 345
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 346
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 347
    iget-object v7, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

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

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    return-object v6

    .line 342
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
    .line 363
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 364
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 365
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 366
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 367
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 368
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
    .line 352
    new-instance v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v6}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 353
    .local v6, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x2

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 354
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 355
    const-string v0, "owner_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 356
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 357
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 358
    iget-object v7, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

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

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    return-object v6

    .line 354
    :cond_0
    const-string v0, "vid"

    goto :goto_0

    .line 358
    :cond_1
    const-string v4, "vid"

    goto :goto_1
.end method

.method public static processThumbs(IILjava/util/ArrayList;)V
    .locals 65
    .param p0, "maxW"    # I
    .param p1, "maxH"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v51, "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v59

    :cond_0
    :goto_0
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-nez v60, :cond_2

    .line 728
    const-string v41, ""

    .line 729
    .local v41, "orients":Ljava/lang/String;
    const/16 v59, 0x3

    move/from16 v0, v59

    new-array v0, v0, [I

    move-object/from16 v42, v0

    .line 730
    .local v42, "orients_cnt":[I
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v44, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 732
    .local v10, "cnt":I
    const/4 v7, 0x0

    .line 734
    .local v7, "bad":Z
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v59

    :goto_1
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-nez v60, :cond_3

    .line 744
    if-nez v7, :cond_1

    sget-boolean v59, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    if-eqz v59, :cond_7

    .line 933
    :cond_1
    :goto_2
    return-void

    .line 725
    .end local v7    # "bad":Z
    .end local v10    # "cnt":I
    .end local v41    # "orients":Ljava/lang/String;
    .end local v42    # "orients_cnt":[I
    .end local v44    # "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_2
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 726
    .local v5, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v60, v0

    if-eqz v60, :cond_0

    check-cast v5, Lcom/vkontakte/android/ThumbAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 734
    .restart local v7    # "bad":Z
    .restart local v10    # "cnt":I
    .restart local v41    # "orients":Ljava/lang/String;
    .restart local v42    # "orients_cnt":[I
    .restart local v44    # "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_3
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/vkontakte/android/ThumbAttachment;

    .line 735
    .local v49, "thumb":Lcom/vkontakte/android/ThumbAttachment;
    invoke-interface/range {v49 .. v49}, Lcom/vkontakte/android/ThumbAttachment;->getRatio()F

    move-result v43

    .line 736
    .local v43, "ratio":F
    const/high16 v60, -0x40800000    # -1.0f

    cmpl-float v60, v43, v60

    if-nez v60, :cond_4

    .line 737
    const/4 v7, 0x1

    .line 739
    :cond_4
    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0x3ff3333333333333L    # 1.2

    cmpl-double v60, v60, v62

    if-lez v60, :cond_5

    const/16 v40, 0x77

    .line 740
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

    .line 741
    invoke-static/range {v40 .. v40}, Lcom/vkontakte/android/NewsEntry;->oi(C)I

    move-result v60

    aget v61, v42, v60

    add-int/lit8 v61, v61, 0x1

    aput v61, v42, v60

    .line 742
    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v44

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 739
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

    .line 749
    .end local v43    # "ratio":F
    .end local v49    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    :cond_7
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v59

    if-nez v59, :cond_8

    invoke-static/range {v44 .. v44}, Lcom/vkontakte/android/NewsEntry;->sum(Ljava/util/List;)F

    move-result v59

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    div-float v6, v59, v60

    .line 751
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

    .line 752
    .local v31, "margin_h":F
    if-lez p0, :cond_9

    .line 753
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 v35, v0

    .line 754
    .local v35, "max_w":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    .line 760
    .local v33, "max_h":F
    :goto_5
    div-float v34, v35, v33

    .line 762
    .local v34, "max_ratio":F
    const/16 v59, 0x1

    move/from16 v0, v59

    if-ne v10, v0, :cond_b

    .line 763
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

    .line 764
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

    .line 765
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

    .line 749
    .end local v6    # "avg_ratio":F
    .end local v31    # "margin_h":F
    .end local v32    # "margin_w":F
    .end local v33    # "max_h":F
    .end local v34    # "max_ratio":F
    .end local v35    # "max_w":F
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 756
    .restart local v6    # "avg_ratio":F
    .restart local v31    # "margin_h":F
    .restart local v32    # "margin_w":F
    :cond_9
    const/high16 v35, 0x43a00000    # 320.0f

    .line 757
    .restart local v35    # "max_w":F
    const/high16 v33, 0x43520000    # 210.0f

    .restart local v33    # "max_h":F
    goto :goto_5

    .line 767
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

    .line 771
    :cond_b
    const/16 v59, 0x2

    move/from16 v0, v59

    if-ne v10, v0, :cond_f

    .line 772
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

    .line 773
    move/from16 v54, v35

    .line 774
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

    .line 775
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

    .line 776
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

    .line 777
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

    .line 778
    :cond_d
    sub-float v59, v35, v32

    const/high16 v60, 0x40000000    # 2.0f

    div-float v54, v59, v60

    .line 779
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

    .line 780
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

    .line 781
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

    .line 783
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

    .line 784
    .local v55, "w0":F
    sub-float v59, v35, v55

    sub-float v56, v59, v32

    .line 785
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

    .line 786
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

    .line 787
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

    .line 791
    .end local v16    # "h":F
    .end local v55    # "w0":F
    .end local v56    # "w1":F
    :cond_f
    const/16 v59, 0x3

    move/from16 v0, v59

    if-ne v10, v0, :cond_11

    .line 792
    const-string v59, "www"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_10

    .line 793
    move/from16 v54, v35

    .line 794
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

    .line 795
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

    .line 797
    sub-float v59, v35, v32

    const/high16 v60, 0x40000000    # 2.0f

    div-float v54, v59, v60

    .line 798
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

    .line 799
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

    .line 800
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

    .line 802
    .end local v16    # "h":F
    .end local v20    # "h_cover":F
    .end local v54    # "w":F
    :cond_10
    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v16, v0

    .line 803
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

    .line 804
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

    .line 806
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

    .line 807
    .local v18, "h1":F
    sub-float v59, v33, v18

    sub-float v17, v59, v31

    .line 808
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

    .line 810
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

    .line 811
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

    .line 815
    .end local v16    # "h":I
    .end local v17    # "h0":F
    .end local v18    # "h1":F
    .end local v54    # "w":F
    .end local v58    # "w_cover":I
    :cond_11
    const/16 v59, 0x4

    move/from16 v0, v59

    if-ne v10, v0, :cond_13

    .line 816
    const-string v59, "wwww"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_12

    .line 817
    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v54, v0

    .line 818
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

    .line 819
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

    .line 821
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

    .line 822
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

    .line 823
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

    .line 824
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

    .line 825
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

    .line 827
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

    .line 828
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

    .line 829
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

    .line 831
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

    .line 832
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

    .line 833
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

    .line 835
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

    .line 836
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

    .line 837
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

    .line 838
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

    .line 839
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

    .line 841
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

    .line 842
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

    .line 843
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

    .line 848
    .end local v16    # "h":I
    .end local v17    # "h0":I
    .end local v18    # "h1":I
    .end local v19    # "h2":I
    .end local v54    # "w":I
    .end local v58    # "w_cover":I
    :cond_13
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v45, "ratios_cropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    float-to-double v0, v6

    move-wide/from16 v59, v0

    const-wide v61, 0x3ff199999999999aL    # 1.1

    cmpl-double v59, v59, v61

    if-lez v59, :cond_17

    .line 850
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :goto_6
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-nez v59, :cond_16

    .line 859
    :cond_14
    new-instance v53, Ljava/util/HashMap;

    invoke-direct/range {v53 .. v53}, Ljava/util/HashMap;-><init>()V

    .line 863
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

    move-object/from16 v0, v45

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    move-object/from16 v0, v53

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const/4 v15, 0x1

    :goto_7
    add-int/lit8 v59, v10, -0x1

    move/from16 v0, v59

    if-le v15, v0, :cond_18

    .line 875
    const/4 v15, 0x1

    :goto_8
    add-int/lit8 v59, v10, -0x2

    move/from16 v0, v59

    if-le v15, v0, :cond_19

    .line 887
    const/16 v36, 0x0

    .line 888
    .local v36, "opt_conf":Ljava/lang/String;
    const/16 v37, 0x0

    .line 889
    .local v37, "opt_diff":F
    const/16 v38, 0x0

    .line 891
    .local v38, "opt_height":F
    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    .line 892
    .local v25, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :cond_15
    :goto_9
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-nez v59, :cond_1b

    .line 911
    const/4 v8, 0x0

    .line 913
    .local v8, "breakNext":Z
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/ArrayList;

    .line 914
    .local v52, "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/ArrayList;

    .line 915
    .local v46, "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const-string v59, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 916
    .local v9, "chunks":[Ljava/lang/String;
    move-object/from16 v0, v53

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [F

    .line 917
    .local v39, "opt_heights":[F
    array-length v0, v9

    move/from16 v59, v0

    add-int/lit8 v27, v59, -0x1

    .line 918
    .local v27, "last_row":I
    const/16 v24, 0x0

    .line 919
    .local v24, "k":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_a
    array-length v0, v9

    move/from16 v59, v0

    move/from16 v0, v22

    move/from16 v1, v59

    if-ge v0, v1, :cond_1

    .line 920
    aget-object v59, v9, v22

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 921
    .local v28, "line_chunks_num":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v30, "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v28

    if-lt v0, v1, :cond_20

    .line 923
    aget v29, v39, v24

    .line 924
    .local v29, "line_height":F
    add-int/lit8 v24, v24, 0x1

    .line 925
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v59

    add-int/lit8 v26, v59, -0x1

    .line 926
    .local v26, "last_column":I
    const/16 v23, 0x0

    :goto_c
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v59

    move/from16 v0, v23

    move/from16 v1, v59

    if-lt v0, v1, :cond_21

    .line 919
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 850
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

    .line 851
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

    .line 854
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

    .line 855
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

    .line 867
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

    .line 868
    const/16 v62, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    const/16 v61, 0x1

    .line 869
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v62

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    .line 867
    move-object/from16 v0, v53

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 876
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

    .line 875
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 877
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

    .line 878
    const/16 v62, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    const/16 v61, 0x1

    .line 879
    add-int v62, v15, v47

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    const/16 v61, 0x2

    .line 880
    add-int v62, v15, v47

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v45

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v62

    aput v62, v60, v61

    .line 877
    move-object/from16 v0, v53

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_e

    .line 892
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

    .line 893
    .local v11, "conf":Ljava/lang/String;
    move-object/from16 v0, v53

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [F

    .line 894
    .local v21, "heights":[F
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v59, v0

    add-int/lit8 v59, v59, -0x1

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    mul-float v13, v31, v59

    .line 895
    .local v13, "conf_h":F
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v61, v0

    const/16 v59, 0x0

    :goto_f
    move/from16 v0, v59

    move/from16 v1, v61

    if-lt v0, v1, :cond_1f

    .line 896
    sub-float v59, v13, v33

    invoke-static/range {v59 .. v59}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 897
    .local v12, "conf_diff":F
    const/16 v59, 0x2c

    move/from16 v0, v59

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v59

    const/16 v61, -0x1

    move/from16 v0, v59

    move/from16 v1, v61

    if-eq v0, v1, :cond_1d

    .line 898
    const-string v59, ","

    move-object/from16 v0, v59

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 899
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

    .line 900
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

    .line 901
    :cond_1c
    float-to-double v0, v12

    move-wide/from16 v61, v0

    const-wide v63, 0x3ff199999999999aL    # 1.1

    mul-double v61, v61, v63

    move-wide/from16 v0, v61

    double-to-float v12, v0

    .line 904
    .end local v14    # "conf_nums":[Ljava/lang/String;
    :cond_1d
    if-eqz v36, :cond_1e

    cmpg-float v59, v12, v37

    if-gez v59, :cond_15

    .line 905
    :cond_1e
    move-object/from16 v36, v11

    .line 906
    move/from16 v37, v12

    .line 907
    goto/16 :goto_9

    .line 895
    .end local v12    # "conf_diff":F
    :cond_1f
    aget v16, v21, v59

    .local v16, "h":F
    add-float v13, v13, v16

    add-int/lit8 v59, v59, 0x1

    goto :goto_f

    .line 922
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

    .line 927
    .restart local v26    # "last_column":I
    .restart local v29    # "line_height":F
    :cond_21
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/vkontakte/android/ThumbAttachment;

    .line 928
    .restart local v49    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    const/16 v59, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Float;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Float;->floatValue()F

    move-result v50

    .line 929
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

    .line 926
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_c

    .line 929
    :cond_22
    const/16 v59, 0x0

    goto :goto_10
.end method

.method private serializeAttachments()Ljava/lang/String;
    .locals 8

    .prologue
    .line 533
    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 542
    :cond_0
    return-object v2

    .line 534
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->_serializeAttachments()[B

    move-result-object v1

    .line 535
    .local v1, "d":[B
    const-string v2, ""

    .line 536
    .local v2, "r":Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v0, v1, v4

    .line 537
    .local v0, "b":B
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 538
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

    .line 539
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

    .line 540
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected static stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 11
    .param p0, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v8, 0x0

    .line 662
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {p0, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 663
    .local v5, "spans":[Landroid/text/style/URLSpan;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_0

    .line 670
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 671
    .local v1, "aspans":[Landroid/text/style/ForegroundColorSpan;
    array-length v9, v1

    move v7, v8

    :goto_1
    if-lt v7, v9, :cond_1

    .line 678
    return-object p0

    .line 663
    .end local v1    # "aspans":[Landroid/text/style/ForegroundColorSpan;
    :cond_0
    aget-object v3, v5, v7

    .line 664
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 665
    .local v6, "start":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 666
    .local v2, "end":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 667
    new-instance v4, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 668
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .local v4, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v4, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 663
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 671
    .end local v2    # "end":I
    .end local v4    # "span":Landroid/text/style/URLSpan;
    .end local v6    # "start":I
    .restart local v1    # "aspans":[Landroid/text/style/ForegroundColorSpan;
    :cond_1
    aget-object v3, v1, v7

    .line 672
    .local v3, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 673
    .restart local v6    # "start":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 674
    .restart local v2    # "end":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 675
    new-instance v0, Lcom/vkontakte/android/NewsEntry$XColorSpan;

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/vkontakte/android/NewsEntry$XColorSpan;-><init>(I)V

    .line 676
    .local v0, "as":Lcom/vkontakte/android/NewsEntry$XColorSpan;
    invoke-interface {p0, v0, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 671
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static sum(Ljava/util/List;)F
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
    .line 948
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 949
    .local v1, "sum":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 950
    return v1

    .line 949
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
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v0, 0x0

    .line 645
    if-nez p1, :cond_1

    .line 646
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
    .line 640
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 642
    :goto_0
    return-void

    .line 641
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
    .line 636
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

.method public readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xd

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/16 v5, 0x118

    .line 569
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 570
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 571
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 572
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 573
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 574
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 576
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 577
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 578
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 579
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 583
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V

    .line 584
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 585
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_0

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 586
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    shr-int/lit8 v2, v2, 0x18

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 591
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_1

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 593
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-le v2, v7, :cond_3

    .line 594
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    .line 595
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 596
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 606
    :cond_2
    :goto_0
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v2, v4, :cond_5

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090192

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

    .line 608
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 614
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_7

    .line 615
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 619
    :goto_2
    return-void

    .line 599
    :cond_3
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_2

    .line 600
    :cond_4
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 601
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 602
    .local v1, "tSize":I
    const/16 v2, 0x25c

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 603
    int-to-float v2, v1

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 609
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "tSize":I
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_6

    .line 610
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 612
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

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 617
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

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_2
.end method

.method public updateRetweetText()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/16 v5, 0x118

    .line 650
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-le v2, v7, :cond_1

    .line 651
    const/4 v1, -0x1

    .line 652
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    .line 659
    .end local v0    # "i":I
    .end local v1    # "index":I
    :goto_1
    return-void

    .line 652
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/16 v3, 0xa

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 655
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

    goto :goto_1

    .line 657
    :cond_2
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

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->_serializeAttachments()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 483
    return-void
.end method

.method public writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 546
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "pid"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v1, "uid"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v1, "text"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v1, "time"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v1, "likes"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v1, "comments"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const-string v1, "username"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v1, "userphoto"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v3, "retweet_uid"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string v3, "retweet_username"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v3, "attachments"

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->_serializeAttachments()[B

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 558
    const-string v1, "flags"

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    const-string v3, "retweet_text"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 561
    const-string v1, "last_comment_name"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v1, "last_comment_photo"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v1, "last_comment_text"

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_0
    invoke-virtual {p1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 566
    return-void

    .line 555
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 556
    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 557
    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 559
    goto :goto_3
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 487
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 488
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 489
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 490
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 491
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 493
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 494
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 495
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 496
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 497
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 498
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 499
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 500
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 503
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->_serializeAttachments()[B

    move-result-object v0

    .line 504
    .local v0, "atts":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 505
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 506
    return-void

    .line 486
    .end local v0    # "atts":[B
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 491
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 497
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 500
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 501
    :cond_4
    const-string v1, ""

    goto :goto_4

    .line 502
    :cond_5
    const-string v1, ""

    goto :goto_5
.end method
