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

.field public static final A_PENDING_PHOTO:I = 0xe

.field public static final A_PHOTO:I = 0x1

.field public static final A_POLL:I = 0x4

.field public static final A_POST:I = 0xc

.field public static final A_REPOST:I = 0x11

.field public static final A_SIGNATURE:I = 0xf

.field public static final A_STICKER:I = 0x10

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

.field public static final FLAG_FIXED:I = 0x400

.field public static final FLAG_FRIENDS_ONLY:I = 0x200

.field public static final FLAG_GRAY_FIRST_LINE:I = 0x100

.field public static final FLAG_GRAY_TEXT:I = 0x10

.field public static final FLAG_IS_RETWEET:I = 0x20

.field public static final FLAG_LIKED:I = 0x8

.field public static final FLAG_RETWEETED:I = 0x4

.field public static final TYPE_ADDED_PHOTO:I = 0x6

.field public static final TYPE_AUDIO:I = 0xa

.field public static final TYPE_BIRTHDAY:I = 0x8

.field public static final TYPE_COMMENT:I = 0x5

.field public static final TYPE_NOTE:I = 0x3

.field public static final TYPE_PHOTO:I = 0x1

.field public static final TYPE_POST:I = 0x0

.field public static final TYPE_TAGGED_PHOTO:I = 0x7

.field public static final TYPE_TOPIC:I = 0x4

.field public static final TYPE_VIDEO:I = 0x2

.field public static final TYPE_WALL_PHOTO:I = 0x9


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

.field public lastCommentTime:I

.field public lastCommentUserName:Ljava/lang/String;

.field public lastCommentUserPhoto:Ljava/lang/String;

.field public numComments:I

.field public numLikes:I

.field public numRetweets:I

.field public ownerID:I

.field public postID:I

.field public repostAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public retweetOrigId:I

.field public retweetOrigTime:I

.field public retweetText:Ljava/lang/String;

.field public retweetType:I

.field public retweetUID:I

.field public retweetUserName:Ljava/lang/String;

.field public retweetUserPhoto:Ljava/lang/String;

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
    .line 593
    new-instance v0, Lcom/vkontakte/android/NewsEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry$1;-><init>()V

    .line 592
    sput-object v0, Lcom/vkontakte/android/NewsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 601
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 88
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 112
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 113
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x6

    const v10, 0x7f0601eb

    const/16 v9, 0x118

    const/4 v8, 0x0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v5, "UNKNOWN"

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 88
    iput v8, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 89
    const-string v5, ""

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 90
    const-string v5, ""

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 104
    iput v8, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    iput-object v6, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 112
    iput v8, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 113
    iput v8, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    iput-object v6, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 451
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 453
    new-array v3, v2, [B

    .line 454
    .local v3, "sa":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 455
    invoke-direct {p0, v3}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v2    # "len":I
    .end local v3    # "sa":[B
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_2

    .line 460
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

    .line 464
    :goto_1
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 465
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-le v5, v11, :cond_4

    .line 466
    const/4 v1, -0x1

    .line 467
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v11, :cond_3

    .line 468
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

    const-string v6, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</a>"

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

    .line 476
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 477
    return-void

    .line 457
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 462
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</a>"

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

    .line 467
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/16 v6, 0xa

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 469
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_4
    iget-object v5, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_5

    .line 470
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

    goto :goto_3

    .line 472
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</a>"

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

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 88
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 112
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 113
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 127
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 128
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 129
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 130
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 131
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 133
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 134
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 135
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 139
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 140
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 142
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 143
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 144
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 145
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 146
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->flags:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 152
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 153
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x118

    const/4 v5, 0x0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 88
    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 89
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 90
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 104
    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    iput-object v4, p0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 112
    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 113
    iput v5, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    iput-object v4, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 482
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 483
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 484
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 485
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 488
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 489
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 490
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 491
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 492
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 493
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 494
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 500
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 501
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 502
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 505
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 506
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 507
    new-array v0, v1, [B

    .line 508
    .local v0, "atts":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 509
    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v0    # "atts":[B
    .end local v1    # "len":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_1

    .line 516
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 520
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 521
    return-void

    .line 511
    .restart local v1    # "len":I
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 513
    .end local v1    # "len":I
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 518
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

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

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "item"    # Lorg/json/JSONObject;
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 29
    .param p1, "item"    # Lorg/json/JSONObject;
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
    .line 161
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p4, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v2, "UNKNOWN"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 88
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 89
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 90
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->geoData:Lorg/json/JSONObject;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 112
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 163
    :try_start_0
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "topic"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 166
    :cond_0
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "photo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 167
    :cond_1
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 168
    :cond_2
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "note"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 169
    :cond_3
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "photo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 170
    :cond_4
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "wall_photo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 171
    :cond_5
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "photo_tag"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 173
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 174
    const-string v2, "from_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "from_id"

    :goto_0
    const-string v4, "source_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 175
    .local v25, "posterID":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 176
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 178
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 179
    const-string v2, "owner_id"

    const-string v4, "to_id"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 181
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_27

    .line 183
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 187
    :goto_1
    const-string v2, "copy_comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06011d

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "copy_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "copy_post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 191
    :cond_7
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 192
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 193
    .local v10, "atts":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v14, v2, :cond_29

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 212
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v14    # "i":I
    :cond_8
    const-string v2, "id"

    const-string v4, "post_id"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 213
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 214
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 215
    :cond_9
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "can_post"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 217
    :goto_3
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 218
    :cond_a
    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "user_reposted"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 219
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

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 220
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

    const-string v4, "can_publish"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 221
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

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 222
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 223
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

    const-string v4, "user_likes"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 224
    :cond_f
    const-string v2, "can_edit"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 225
    :cond_10
    const-string v2, "can_delete"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 226
    :cond_11
    const-string v2, "friends_only"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x200

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 227
    :cond_12
    const-string v2, "fixed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 236
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v5, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v4, v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_15

    .line 241
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/VideoAttachment;

    const-string v4, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_15
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 245
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 246
    .local v13, "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v13    # "geo":Lorg/json/JSONObject;
    :cond_16
    if-eqz p4, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v12, 0x1

    .line 249
    .local v12, "ff":Z
    :goto_4
    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 250
    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "profile_photo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 251
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v2, :cond_2e

    .line 252
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06022e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 256
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 261
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

    if-eqz v2, :cond_1a

    .line 262
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_30

    :cond_19
    const-string v2, "photos"

    :goto_6
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v17

    .line 263
    .local v17, "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v23, v0

    .line 264
    .local v23, "ph":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_32

    .line 265
    if-eqz v12, :cond_31

    const v2, 0x7f0d0032

    :goto_7
    move-object/from16 v0, v17

    iget v4, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 269
    :goto_8
    move-object/from16 v0, v17

    iget v2, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 270
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v14, v2, :cond_34

    .line 274
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 276
    .end local v14    # "i":I
    .end local v17    # "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v23    # "ph":Lorg/json/JSONArray;
    :cond_1a
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 277
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 278
    .local v22, "origPost":Lorg/json/JSONObject;
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x6

    if-le v2, v4, :cond_36

    .line 280
    const/4 v15, -0x1

    .line 281
    .local v15, "index":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    const/4 v2, 0x6

    if-lt v14, v2, :cond_35

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x118

    add-int/lit8 v7, v15, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 288
    .end local v14    # "i":I
    .end local v15    # "index":I
    :goto_b
    const-string v2, "text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 291
    const-string v2, "attachments"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 292
    .local v16, "jatts":Lorg/json/JSONArray;
    if-eqz v16, :cond_1b

    .line 293
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_c
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v14, v2, :cond_38

    .line 299
    .end local v14    # "i":I
    :cond_1b
    const-string v2, "geo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 300
    const-string v2, "geo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 301
    .restart local v13    # "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v13    # "geo":Lorg/json/JSONObject;
    :cond_1c
    const-string v2, "owner_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 304
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 305
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

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 307
    const-string v2, "id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 308
    const-string v2, "date"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 309
    const-string v2, "reply"

    const-string v4, "post_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 310
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 311
    const-string v2, "reply_to"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 312
    const-string v2, "from_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 313
    .local v11, "commentUid":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 314
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 316
    .end local v11    # "commentUid":I
    :cond_1d
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1e

    .line 317
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 318
    .local v26, "repost":Lorg/json/JSONObject;
    const-string v2, "owner_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 319
    .local v3, "oid":I
    const-string v2, "reply"

    const-string v4, "post_type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 320
    const-string v2, "from_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 321
    .end local v3    # "oid":I
    .local v21, "oid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v2, Lcom/vkontakte/android/RepostAttachment;

    const-string v4, "owner_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "reply_to"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_e
    const/4 v8, 0x5

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v16    # "jatts":Lorg/json/JSONArray;
    .end local v21    # "oid":I
    .end local v22    # "origPost":Lorg/json/JSONObject;
    .end local v26    # "repost":Lorg/json/JSONObject;
    :cond_1e
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3f

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " <a href=\'http://vk.com\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 343
    :cond_1f
    :goto_10
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 344
    const-string v2, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 345
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "list"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 346
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "list"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 347
    .local v20, "lca":Lorg/json/JSONArray;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 348
    .local v19, "lc":Lorg/json/JSONObject;
    const-string v2, "text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 349
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_43

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    const-string v4, "\\[(id|club)(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v5, "$5"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 354
    :goto_11
    const-string v2, "from_id"

    move-object/from16 v0, v19

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

    .line 355
    const-string v2, "from_id"

    move-object/from16 v0, v19

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

    .line 357
    const-string v2, "date"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    .line 360
    .end local v19    # "lc":Lorg/json/JSONObject;
    .end local v20    # "lca":Lorg/json/JSONArray;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 363
    const-string v2, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 364
    new-instance v18, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://vkontakte.ru/id"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

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

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v2}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .local v18, "la":Lcom/vkontakte/android/SignatureLinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v18    # "la":Lcom/vkontakte/android/SignatureLinkAttachment;
    :cond_21
    const-string v2, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 369
    new-instance v18, Lcom/vkontakte/android/LinkAttachment;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://vkontakte.ru/wall"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "reply_post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06011e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v4}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .local v18, "la":Lcom/vkontakte/android/LinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v18    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v2, :cond_25

    .line 374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-gtz v2, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_25

    .line 375
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 386
    .end local v12    # "ff":Z
    .end local v25    # "posterID":I
    :cond_25
    :goto_12
    return-void

    .line 174
    :cond_26
    const-string v2, "owner_id"

    goto/16 :goto_0

    .line 185
    .restart local v25    # "posterID":I
    :cond_27
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 379
    .end local v25    # "posterID":I
    :catch_0
    move-exception v27

    .line 380
    .local v27, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    const-string v2, "vk"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-nez v2, :cond_28

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 383
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06004e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_12

    .line 196
    .end local v27    # "x":Ljava/lang/Exception;
    .restart local v10    # "atts":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    .restart local v25    # "posterID":I
    :cond_29
    :try_start_1
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    :goto_13
    invoke-static {v4, v2}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v9

    .line 197
    .local v9, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v9, :cond_2a

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_2a
    instance-of v2, v9, Lcom/vkontakte/android/AlbumAttachment;

    .line 193
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 196
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    goto :goto_13

    .line 216
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v14    # "i":I
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    goto/16 :goto_3

    .line 248
    :cond_2d
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 254
    .restart local v12    # "ff":Z
    :cond_2e
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v12, :cond_2f

    const v2, 0x7f06022d

    :goto_14
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    goto/16 :goto_5

    :cond_2f
    const v2, 0x7f06022c

    goto :goto_14

    .line 262
    :cond_30
    const-string v2, "photo_tags"

    goto/16 :goto_6

    .line 265
    .restart local v17    # "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v23    # "ph":Lorg/json/JSONArray;
    :cond_31
    const v2, 0x7f0d0031

    goto/16 :goto_7

    .line 267
    :cond_32
    if-eqz v12, :cond_33

    const v2, 0x7f0d0034

    :goto_15
    move-object/from16 v0, v17

    iget v4, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_8

    :cond_33
    const v2, 0x7f0d0033

    goto :goto_15

    .line 271
    .restart local v14    # "i":I
    :cond_34
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 272
    .local v24, "photo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v5, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v4, v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 281
    .end local v17    # "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v23    # "ph":Lorg/json/JSONArray;
    .end local v24    # "photo":Lorg/json/JSONObject;
    .restart local v15    # "index":I
    .restart local v22    # "origPost":Lorg/json/JSONObject;
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/16 v4, 0xa

    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 283
    .end local v14    # "i":I
    .end local v15    # "index":I
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x118

    if-gt v2, v4, :cond_37

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_b

    .line 286
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x118

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_b

    .line 294
    .restart local v14    # "i":I
    .restart local v16    # "jatts":Lorg/json/JSONArray;
    :cond_38
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "owner_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v9

    .line 295
    .restart local v9    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v9, :cond_39

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_39
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    .line 321
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    .end local v14    # "i":I
    .restart local v21    # "oid":I
    .restart local v26    # "repost":Lorg/json/JSONObject;
    :cond_3a
    const-string v6, "DELETED"

    goto/16 :goto_d

    :cond_3b
    const-string v7, "http://vk.com/images/question_a.gif"

    goto/16 :goto_e

    .line 323
    .end local v21    # "oid":I
    .restart local v3    # "oid":I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v2, Lcom/vkontakte/android/RepostAttachment;

    const-string v4, "id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_17
    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_3d
    const-string v6, "DELETED"

    goto :goto_16

    :cond_3e
    const-string v7, "http://vk.com/images/question_a.gif"

    goto :goto_17

    .line 332
    .end local v3    # "oid":I
    .end local v16    # "jatts":Lorg/json/JSONArray;
    .end local v22    # "origPost":Lorg/json/JSONObject;
    .end local v26    # "repost":Lorg/json/JSONObject;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x6

    if-le v2, v4, :cond_41

    .line 333
    const/4 v15, -0x1

    .line 334
    .restart local v15    # "index":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_18
    const/4 v2, 0x6

    if-lt v14, v2, :cond_40

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x118

    add-int/lit8 v7, v15, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    goto/16 :goto_10

    .line 334
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/16 v4, 0xa

    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    .line 336
    .end local v14    # "i":I
    .end local v15    # "index":I
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x118

    if-gt v2, v4, :cond_42

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    goto/16 :goto_10

    .line 339
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x118

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    goto/16 :goto_10

    .line 352
    .restart local v19    # "lc":Lorg/json/JSONObject;
    .restart local v20    # "lca":Lorg/json/JSONArray;
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    const-string v4, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v5, "$3"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_11
.end method

.method private deserializeAttachments([B)V
    .locals 8
    .param p1, "b"    # [B

    .prologue
    .line 707
    if-nez p1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 710
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 712
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 713
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 718
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 719
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_0

    .line 720
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 722
    .local v4, "type":I
    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 714
    .end local v4    # "type":I
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 716
    .restart local v4    # "type":I
    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 724
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

.method public static parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;
    .locals 4
    .param p0, "photo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 389
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 390
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 391
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "id"

    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 392
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 393
    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 394
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 395
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 396
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 398
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user_likes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 399
    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 401
    :cond_0
    iget-object v1, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    return-object v0

    .line 391
    :cond_1
    const-string v1, "pid"

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
    .line 417
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 418
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 419
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 420
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 421
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 422
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
    .line 406
    new-instance v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v6}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 407
    .local v6, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x2

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 408
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 409
    const-string v0, "owner_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 410
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 411
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 412
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

    .line 413
    return-object v6

    .line 408
    :cond_0
    const-string v0, "vid"

    goto :goto_0

    .line 412
    :cond_1
    const-string v4, "vid"

    goto :goto_1
.end method

.method private serializeAttachments()[B
    .locals 5

    .prologue
    .line 604
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 616
    :goto_0
    return-object v3

    .line 605
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 606
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 608
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 609
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 611
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 612
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 614
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 609
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 610
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 615
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :catch_0
    move-exception v3

    goto :goto_3

    .line 612
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 613
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 11
    .param p0, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v8, 0x0

    .line 782
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {p0, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 783
    .local v5, "spans":[Landroid/text/style/URLSpan;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_0

    .line 790
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 791
    .local v1, "aspans":[Landroid/text/style/ForegroundColorSpan;
    array-length v9, v1

    move v7, v8

    :goto_1
    if-lt v7, v9, :cond_1

    .line 798
    return-object p0

    .line 783
    .end local v1    # "aspans":[Landroid/text/style/ForegroundColorSpan;
    :cond_0
    aget-object v3, v5, v7

    .line 784
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 785
    .local v6, "start":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 786
    .local v2, "end":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 787
    new-instance v4, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 788
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .local v4, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v4, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 783
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 791
    .end local v2    # "end":I
    .end local v4    # "span":Landroid/text/style/URLSpan;
    .end local v6    # "start":I
    .restart local v1    # "aspans":[Landroid/text/style/ForegroundColorSpan;
    :cond_1
    aget-object v3, v1, v7

    .line 792
    .local v3, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 793
    .restart local v6    # "start":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 794
    .restart local v2    # "end":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 795
    new-instance v0, Lcom/vkontakte/android/NewsEntry$XColorSpan;

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/vkontakte/android/NewsEntry$XColorSpan;-><init>(I)V

    .line 796
    .local v0, "as":Lcom/vkontakte/android/NewsEntry$XColorSpan;
    invoke-interface {p0, v0, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 791
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v0, 0x0

    .line 765
    if-nez p1, :cond_1

    .line 766
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
    .line 760
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 762
    :goto_0
    return-void

    .line 761
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
    .line 756
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

.method public getImageAttachment(I)Lcom/vkontakte/android/ImageAttachment;
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 739
    const/4 v1, 0x0

    .line 740
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 746
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 752
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 740
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 741
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    .line 742
    if-ne v1, p1, :cond_3

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    goto :goto_2

    .line 743
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 747
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_1

    .line 748
    if-ne v1, p1, :cond_5

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    goto :goto_2

    .line 749
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getImageCount()I
    .locals 4

    .prologue
    .line 728
    const/4 v1, 0x0

    .line 729
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 732
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 735
    return v1

    .line 729
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 730
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 733
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public layoutThumbs()V
    .locals 5

    .prologue
    .line 838
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 839
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 840
    .local v1, "tSize":I
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v1, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 841
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-static {v1, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 842
    return-void
.end method

.method public readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0601eb

    const/4 v5, 0x0

    const/16 v4, 0x118

    .line 653
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 654
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 655
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 656
    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 657
    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 658
    const-string v1, "time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 659
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 660
    const-string v1, "likes"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 661
    const-string v1, "retweets"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 663
    const-string v1, "comments"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 664
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 665
    const-string v1, "userphoto"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 669
    const-string v1, "attachments"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V

    .line 670
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 671
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_0

    .line 672
    const-string v1, "retweet_uid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 673
    const-string v1, "retweet_username"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 674
    const-string v1, "retweet_text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 675
    const-string v1, "retweet_user_photo"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 676
    const-string v1, "retweet_orig_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 677
    const-string v1, "retweet_orig_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 678
    const-string v1, "retweet_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 680
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    shr-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 682
    const-string v1, "last_comment_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    const-string v1, "last_comment_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    .line 684
    const-string v1, "last_comment_photo"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 685
    const-string v1, "last_comment_text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 686
    const-string v1, "last_comment_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 691
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <a href=\'http://vk.com\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 693
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 699
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_4

    .line 700
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "<br/>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 704
    :goto_1
    return-void

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_3

    .line 695
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "<br/>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 697
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "<br/>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 702
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "<br/>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    goto/16 :goto_1
.end method

.method public updateRetweetText()V
    .locals 9

    .prologue
    const v8, 0x7f0601eb

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/16 v5, 0x118

    .line 770
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-le v2, v7, :cond_1

    .line 771
    const/4 v1, -0x1

    .line 772
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 773
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

    const-string v3, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

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

    .line 779
    .end local v0    # "i":I
    .end local v1    # "index":I
    :goto_1
    return-void

    .line 772
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

    .line 774
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 775
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

    .line 777
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "...<br/><a href=\'http://vk.com\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

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
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 528
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->serializeAttachments()[B

    move-result-object v0

    .line 552
    .local v0, "sa":[B
    if-eqz v0, :cond_0

    .line 553
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x20

    .line 620
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 621
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "pid"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v1, "uid"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    const-string v1, "text"

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v1, "time"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v1, "likes"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v1, "comments"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string v1, "username"

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v1, "userphoto"

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v4, "retweet_uid"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const-string v4, "retweet_username"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v4, "attachments"

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->serializeAttachments()[B

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 632
    const-string v1, "flags"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    iget v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    const-string v4, "retweet_text"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "retweets"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    const-string v4, "retweet_user_photo"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v4, "retweet_orig_id"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v4, "retweet_orig_time"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    const-string v1, "retweet_type"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 640
    const-string v1, "last_comment_name"

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v1, "last_comment_photo"

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v1, "last_comment_text"

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v1, "last_comment_time"

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    :cond_2
    invoke-virtual {p1, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 648
    return-void

    :cond_3
    move v1, v2

    .line 629
    goto/16 :goto_0

    :cond_4
    move-object v1, v3

    .line 630
    goto/16 :goto_1

    :cond_5
    move-object v1, v3

    .line 631
    goto/16 :goto_2

    :cond_6
    move-object v1, v3

    .line 633
    goto :goto_3

    :cond_7
    move-object v1, v3

    .line 635
    goto :goto_4

    :cond_8
    move v1, v2

    .line 636
    goto :goto_5

    :cond_9
    move v1, v2

    .line 637
    goto :goto_6
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
    .line 561
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 562
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 563
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 564
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 565
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 566
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 568
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 569
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 570
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 571
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 572
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 573
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 574
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 575
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    :goto_6
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 579
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 580
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 581
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 582
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 583
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->serializeAttachments()[B

    move-result-object v0

    .line 584
    .local v0, "atts":[B
    if-eqz v0, :cond_7

    .line 585
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 586
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 590
    :goto_7
    return-void

    .line 561
    .end local v0    # "atts":[B
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 566
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 572
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 575
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 576
    :cond_4
    const-string v1, ""

    goto :goto_4

    .line 577
    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 578
    :cond_6
    const-string v1, ""

    goto :goto_6

    .line 588
    .restart local v0    # "atts":[B
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_7
.end method
