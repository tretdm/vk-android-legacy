.class public Lcom/vkontakte/android/NewsEntry;
.super Ljava/lang/Object;
.source "NewsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsEntry$XColorSpan;,
        Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;
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

.field public static final FLAG_DELETED_PROFILE:I = 0x8000

.field public static final FLAG_EXPORT_FACEBOOK:I = 0x4000

.field public static final FLAG_EXPORT_TWITTER:I = 0x2000

.field public static final FLAG_FIXED:I = 0x400

.field public static final FLAG_FRIENDS_ONLY:I = 0x200

.field public static final FLAG_GRAY_FIRST_LINE:I = 0x100

.field public static final FLAG_GRAY_TEXT:I = 0x10

.field public static final FLAG_IS_RETWEET:I = 0x20

.field public static final FLAG_LIKED:I = 0x8

.field public static final FLAG_POSTPONED:I = 0x800

.field public static final FLAG_RETWEETED:I = 0x4

.field public static final FLAG_SUGGESTED:I = 0x1000

.field public static final PLATFORM_ANDROID:I = 0x2

.field public static final PLATFORM_IPAD:I = 0x4

.field public static final PLATFORM_IPHONE:I = 0x3

.field public static final PLATFORM_MOBILE_SITE:I = 0x1

.field public static final PLATFORM_OTHER_APP:I = 0x7

.field public static final PLATFORM_SITE:I = 0x0

.field public static final PLATFORM_WINDOWS:I = 0x6

.field public static final PLATFORM_WINPHONE:I = 0x5

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

.field public createdBy:I

.field public displayablePreviewText:Ljava/lang/CharSequence;

.field public displayableRetweetText:Ljava/lang/CharSequence;

.field public f:Z

.field public flags:I

.field public lastComment:Ljava/lang/String;

.field public lastCommentTime:I

.field public lastCommentUserName:Ljava/lang/String;

.field public lastCommentUserPhoto:Ljava/lang/String;

.field public numComments:I

.field public numLikes:I

.field public numRetweets:I

.field public ownerID:I

.field public platform:I

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

.field public time:I

.field public type:I

.field public userID:I

.field public userName:Ljava/lang/String;

.field public userPhotoURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 626
    new-instance v0, Lcom/vkontakte/android/NewsEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/NewsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 110
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 111
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 124
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 96
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 97
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 98
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 106
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 110
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 111
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    .line 492
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 494
    new-array v1, v0, [B

    .line 495
    .local v1, "sa":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 496
    invoke-direct {p0, v1}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v0    # "len":I
    .end local v1    # "sa":[B
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 502
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 507
    return-void

    .line 498
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 110
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 111
    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 128
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 129
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 130
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 131
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 132
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 134
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->time:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->time:I

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
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->platform:I

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 96
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 97
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 98
    const-string v3, ""

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 106
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 110
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 111
    iput v4, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 512
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 513
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 514
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 515
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 517
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 518
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 519
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 520
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 521
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 522
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 523
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 529
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 530
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 531
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 532
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    .line 533
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    .line 535
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 537
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 542
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 543
    .local v1, "len":I
    if-lez v1, :cond_1

    .line 544
    new-array v0, v1, [B

    .line 545
    .local v0, "atts":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 546
    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "atts":[B
    .end local v1    # "len":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 553
    return-void

    .line 548
    .restart local v1    # "len":I
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 550
    .end local v1    # "len":I
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 159
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 160
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
    .line 162
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p4, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v2, "UNKNOWN"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 96
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 97
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 98
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 106
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 111
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 164
    :try_start_0
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 166
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

    .line 167
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

    .line 168
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

    .line 169
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

    .line 170
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

    .line 171
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

    .line 172
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

    .line 174
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 175
    const-string v2, "from_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "from_id"

    :goto_0
    const-string v4, "source_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    .line 176
    .local v24, "posterID":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 177
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 179
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 180
    const-string v2, "owner_id"

    const-string v4, "to_id"

    const-string v5, "source_id"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 182
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 183
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b

    .line 184
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 188
    :goto_1
    const-string v2, "copy_comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0368

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

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 192
    :cond_7
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 193
    const-string v2, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 194
    .local v10, "atts":Lorg/json/JSONArray;
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 195
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v14, v2, :cond_e

    .line 198
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v9

    .line 199
    .local v9, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v9, :cond_8

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_8
    instance-of v2, v9, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v2, :cond_9

    .line 195
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 175
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v24    # "posterID":I
    :cond_a
    const-string v2, "owner_id"

    goto/16 :goto_0

    .line 186
    .restart local v24    # "posterID":I
    :cond_b
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 389
    .end local v24    # "posterID":I
    :catch_0
    move-exception v27

    .line 390
    .local v27, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    const-string v2, "vk"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-nez v2, :cond_c

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 393
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 396
    .end local v27    # "x":Ljava/lang/Exception;
    :cond_d
    :goto_3
    return-void

    .line 207
    .restart local v10    # "atts":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    .restart local v24    # "posterID":I
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 215
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v14    # "i":I
    :cond_f
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

    .line 216
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 217
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 218
    :cond_10
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "can_post"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 220
    :cond_11
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 221
    :cond_12
    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "user_reposted"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v4, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v2, v4, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 222
    :cond_13
    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 223
    :cond_14
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "can_publish"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_16

    :cond_15
    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "user_reposted"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 224
    :cond_17
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 225
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 226
    :cond_18
    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "user_likes"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 227
    :cond_19
    const-string v2, "can_edit"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 228
    :cond_1a
    const-string v2, "can_delete"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 229
    :cond_1b
    const-string v2, "friends_only"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x200

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 230
    :cond_1c
    const-string v2, "fixed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 239
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1e

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v5, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v4, v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1f

    .line 244
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/VideoAttachment;

    const-string v4, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_320"

    const-string v5, "photo_130"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

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

    .line 246
    :cond_1f
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 248
    const-string v2, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 249
    .local v13, "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v13    # "geo":Lorg/json/JSONObject;
    :cond_20
    if-eqz p4, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

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

    if-eqz v2, :cond_24

    const/4 v12, 0x1

    .line 252
    .local v12, "ff":Z
    :goto_4
    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 253
    const-string v2, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 254
    .local v26, "source":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/vkontakte/android/NewsEntry;->setInfoFromPostSource(Lorg/json/JSONObject;Z)V

    .line 256
    .end local v26    # "source":Lorg/json/JSONObject;
    :cond_21
    const-string v2, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "photo_tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 257
    :cond_22
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/vkontakte/android/NewsEntry;->f:Z

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_25

    :cond_23
    const-string v2, "photos"

    :goto_5
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v16

    .line 259
    .local v16, "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v22, v0

    .line 260
    .local v22, "ph":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_27

    .line 261
    if-eqz v12, :cond_26

    const v2, 0x7f070021

    :goto_6
    move-object/from16 v0, v16

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

    .line 265
    :goto_7
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 266
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_29

    .line 267
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 268
    .local v23, "photo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v5, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v4, v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 251
    .end local v12    # "ff":Z
    .end local v14    # "i":I
    .end local v16    # "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v22    # "ph":Lorg/json/JSONArray;
    .end local v23    # "photo":Lorg/json/JSONObject;
    :cond_24
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 258
    .restart local v12    # "ff":Z
    :cond_25
    const-string v2, "photo_tags"

    goto :goto_5

    .line 261
    .restart local v16    # "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v22    # "ph":Lorg/json/JSONArray;
    :cond_26
    const v2, 0x7f070022

    goto :goto_6

    .line 263
    :cond_27
    if-eqz v12, :cond_28

    const v2, 0x7f070023

    :goto_9
    move-object/from16 v0, v16

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

    goto :goto_7

    :cond_28
    const v2, 0x7f070024

    goto :goto_9

    .line 270
    .restart local v14    # "i":I
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 272
    .end local v14    # "i":I
    .end local v16    # "jc":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v22    # "ph":Lorg/json/JSONArray;
    :cond_2a
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_33

    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 273
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 274
    .local v21, "origPost":Lorg/json/JSONObject;
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2b

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 278
    :cond_2b
    const-string v2, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 281
    const-string v2, "attachments"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 282
    .local v15, "jatts":Lorg/json/JSONArray;
    if-eqz v15, :cond_2d

    .line 283
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_2d

    .line 284
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v9

    .line 285
    .restart local v9    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v9, :cond_2c

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2c
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 289
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    .end local v14    # "i":I
    :cond_2d
    const-string v2, "geo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 290
    const-string v2, "geo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 291
    .restart local v13    # "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v13    # "geo":Lorg/json/JSONObject;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 294
    const-string v2, "owner_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 296
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_b
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 297
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

    .line 298
    const-string v2, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 299
    const-string v2, "date"

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 300
    const-string v2, "reply"

    const-string v4, "post_type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 301
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 302
    const-string v2, "reply_post_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 303
    const-string v2, "from_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 304
    .local v11, "commentUid":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 305
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 307
    .end local v11    # "commentUid":I
    :cond_2f
    const-string v2, "photo"

    const-string v4, "post_type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 308
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 310
    :cond_30
    const-string v2, "video"

    const-string v4, "post_type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 311
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 313
    :cond_31
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_32

    .line 314
    const-string v2, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 315
    .local v25, "repost":Lorg/json/JSONObject;
    const-string v2, "owner_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 316
    .local v3, "oid":I
    const-string v2, "reply"

    const-string v4, "post_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 317
    const-string v2, "from_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 318
    .end local v3    # "oid":I
    .local v20, "oid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v2, Lcom/vkontakte/android/RepostAttachment;

    const-string v4, "owner_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "reply_post_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_c
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_d
    const/4 v8, 0x5

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v20    # "oid":I
    .end local v25    # "repost":Lorg/json/JSONObject;
    :cond_32
    :goto_e
    const-string v2, "post_source"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 324
    const-string v2, "post_source"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 325
    .restart local v26    # "source":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/vkontakte/android/NewsEntry;->setInfoFromPostSource(Lorg/json/JSONObject;Z)V

    .line 329
    .end local v15    # "jatts":Lorg/json/JSONArray;
    .end local v21    # "origPost":Lorg/json/JSONObject;
    .end local v26    # "source":Lorg/json/JSONObject;
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-eqz v2, :cond_34

    .line 330
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_45

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 338
    :cond_34
    :goto_f
    const-string v2, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 339
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "list"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 340
    const-string v2, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "list"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 341
    .local v19, "lca":Lorg/json/JSONArray;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 342
    .local v18, "lc":Lorg/json/JSONObject;
    const-string v2, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_46

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    const-string v4, "\\[(id|club)(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v5, "$5"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 348
    :goto_10
    const-string v2, "from_id"

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

    .line 349
    const-string v2, "from_id"

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

    .line 351
    const-string v2, "date"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "attachments"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 353
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const v4, 0x7f0d0034

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 357
    .end local v18    # "lc":Lorg/json/JSONObject;
    .end local v19    # "lca":Lorg/json/JSONArray;
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 360
    const-string v2, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 361
    new-instance v17, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://vkontakte.ru/id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v2}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v17, "la":Lcom/vkontakte/android/SignatureLinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v17    # "la":Lcom/vkontakte/android/SignatureLinkAttachment;
    :cond_36
    const-string v2, "final_post"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_37

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    const v4, 0x8000

    or-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 369
    :cond_37
    const-string v2, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 370
    new-instance v17, Lcom/vkontakte/android/LinkAttachment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://vkontakte.ru/wall"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    const v5, 0x7f0d036e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v4, v5}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .local v17, "la":Lcom/vkontakte/android/LinkAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v17    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_38
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v2, :cond_3c

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_39

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-gtz v2, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3b

    .line 376
    :cond_3a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 378
    :cond_3b
    const-string v2, "created_by"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    .line 380
    :cond_3c
    const-string v2, "postpone"

    const-string v4, "post_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 381
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 382
    const-string v2, "twitter_export"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x2000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 383
    :cond_3d
    const-string v2, "facebook_export"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x4000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 385
    :cond_3e
    const-string v2, "suggest"

    const-string v4, "post_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    goto/16 :goto_3

    .line 296
    .restart local v15    # "jatts":Lorg/json/JSONArray;
    .restart local v21    # "origPost":Lorg/json/JSONObject;
    :cond_3f
    const-string v2, "DELETED"

    goto/16 :goto_b

    .line 318
    .restart local v20    # "oid":I
    .restart local v25    # "repost":Lorg/json/JSONObject;
    :cond_40
    const-string v6, "DELETED"

    goto/16 :goto_c

    :cond_41
    const-string v7, "http://vk.com/images/question_a.gif"

    goto/16 :goto_d

    .line 320
    .end local v20    # "oid":I
    .restart local v3    # "oid":I
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v2, Lcom/vkontakte/android/RepostAttachment;

    const-string v4, "id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_12
    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_43
    const-string v6, "DELETED"

    goto :goto_11

    :cond_44
    const-string v7, "http://vk.com/images/question_a.gif"

    goto :goto_12

    .line 334
    .end local v3    # "oid":I
    .end local v15    # "jatts":Lorg/json/JSONArray;
    .end local v21    # "origPost":Lorg/json/JSONObject;
    .end local v25    # "repost":Lorg/json/JSONObject;
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_f

    .line 346
    .restart local v18    # "lc":Lorg/json/JSONObject;
    .restart local v19    # "lca":Lorg/json/JSONArray;
    :cond_46
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

    goto/16 :goto_10
.end method

.method private deserializeAttachments([B)V
    .locals 8
    .param p1, "b"    # [B

    .prologue
    .line 762
    if-nez p1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 765
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 767
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 768
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 769
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 771
    .local v4, "type":I
    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 773
    .end local v4    # "type":I
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 774
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_0

    .line 775
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 777
    .restart local v4    # "type":I
    iget-object v6, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 779
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

.method private static ell(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lim"    # I

    .prologue
    .line 894
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 895
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
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

    .line 430
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 431
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 432
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "id"

    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 433
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 434
    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 435
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 436
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 438
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user_likes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 439
    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 441
    :cond_0
    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 442
    iget-object v1, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    return-object v0

    .line 432
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
    .line 457
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 458
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 459
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 460
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 461
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 462
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
    .line 447
    new-instance v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v6}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 448
    .local v6, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x2

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 449
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 450
    const-string v0, "owner_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 451
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 452
    iget-object v7, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Lcom/vkontakte/android/VideoAttachment;

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "photo_320"

    const-string v3, "image"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 453
    return-object v6

    .line 449
    :cond_0
    const-string v0, "vid"

    goto :goto_0

    .line 452
    :cond_1
    const-string v4, "vid"

    goto :goto_1
.end method

.method private serializeAttachments()[B
    .locals 5

    .prologue
    .line 659
    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 671
    :goto_0
    return-object v4

    .line 660
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 661
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 663
    .local v3, "os":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 664
    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 665
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 670
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 671
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 666
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 667
    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 668
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_3

    .line 669
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setInfoFromPostSource(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "source"    # Lorg/json/JSONObject;
    .param p2, "ff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "profile_photo"

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v2, :cond_2

    .line 401
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0342

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 405
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 407
    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 410
    :cond_0
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "ptype":Ljava/lang/String;
    const-string v2, "api"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    const-string v2, "platform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "jplatform":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    const/4 v2, 0x2

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    .line 427
    .end local v0    # "jplatform":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 403
    .end local v1    # "ptype":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_3

    const v2, 0x7f0d0341

    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v2, 0x7f0d0343

    goto :goto_2

    .line 415
    .restart local v0    # "jplatform":Ljava/lang/String;
    .restart local v1    # "ptype":Ljava/lang/String;
    :cond_4
    const-string v2, "iphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 416
    const/4 v2, 0x3

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    goto :goto_1

    .line 417
    :cond_5
    const-string v2, "ipad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 418
    const/4 v2, 0x4

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    goto :goto_1

    .line 419
    :cond_6
    const-string v2, "wphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 420
    const/4 v2, 0x5

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    goto :goto_1

    .line 421
    :cond_7
    const-string v2, "windows"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 422
    const/4 v2, 0x6

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    goto :goto_1

    .line 424
    :cond_8
    const/4 v2, 0x7

    iput v2, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    goto :goto_1
.end method

.method public static stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 13
    .param p0, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v12, 0x0

    .line 831
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v10

    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {p0, v12, v10, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 832
    .local v8, "spans":[Landroid/text/style/URLSpan;
    move-object v0, v8

    .local v0, "arr$":[Landroid/text/style/URLSpan;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 833
    .local v6, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 834
    .local v9, "start":I
    invoke-interface {p0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 835
    .local v3, "end":I
    invoke-interface {p0, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 836
    new-instance v7, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/vkontakte/android/NewsEntry$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 837
    .end local v6    # "span":Landroid/text/style/URLSpan;
    .local v7, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v7, v9, v3, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 832
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 839
    .end local v3    # "end":I
    .end local v7    # "span":Landroid/text/style/URLSpan;
    .end local v9    # "start":I
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v10

    const-class v11, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0, v12, v10, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    .line 840
    .local v2, "aspans":[Landroid/text/style/ForegroundColorSpan;
    move-object v0, v2

    .local v0, "arr$":[Landroid/text/style/ForegroundColorSpan;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 841
    .local v6, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p0, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 842
    .restart local v9    # "start":I
    invoke-interface {p0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 843
    .restart local v3    # "end":I
    invoke-interface {p0, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 844
    new-instance v1, Lcom/vkontakte/android/NewsEntry$XColorSpan;

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    invoke-direct {v1, v10}, Lcom/vkontakte/android/NewsEntry$XColorSpan;-><init>(I)V

    .line 845
    .local v1, "as":Lcom/vkontakte/android/NewsEntry$XColorSpan;
    invoke-interface {p0, v1, v9, v3, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 840
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 847
    .end local v1    # "as":Lcom/vkontakte/android/NewsEntry$XColorSpan;
    .end local v3    # "end":I
    .end local v6    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v9    # "start":I
    :cond_1
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v0, 0x0

    .line 820
    if-nez p1, :cond_1

    .line 821
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
    .line 815
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 817
    :goto_0
    return-void

    .line 816
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
    .line 811
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
    .line 794
    const/4 v1, 0x0

    .line 795
    .local v1, "cnt":I
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 796
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    .line 797
    if-ne v1, p1, :cond_1

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .line 807
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :goto_1
    return-object v0

    .line 798
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 802
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_3

    .line 803
    if-ne v1, p1, :cond_4

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    goto :goto_1

    .line 804
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 807
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getImageCount()I
    .locals 4

    .prologue
    .line 783
    const/4 v1, 0x0

    .line 784
    .local v1, "cnt":I
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 785
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 788
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 790
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    return v1
.end method

.method public getPlatformIconResource()I
    .locals 2

    .prologue
    .line 639
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    packed-switch v1, :pswitch_data_0

    .line 652
    const v0, 0x7f020128

    .line 655
    .local v0, "platformIcon":I
    :goto_0
    return v0

    .line 641
    .end local v0    # "platformIcon":I
    :pswitch_0
    const v0, 0x7f020126

    .line 642
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 645
    .end local v0    # "platformIcon":I
    :pswitch_1
    const v0, 0x7f020127

    .line 646
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 649
    .end local v0    # "platformIcon":I
    :pswitch_2
    const v0, 0x7f020129

    .line 650
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public layoutThumbs()V
    .locals 5

    .prologue
    .line 887
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 888
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

    .line 889
    .local v1, "tSize":I
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v1, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 890
    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-static {v1, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 891
    return-void
.end method

.method public readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 710
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 711
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 712
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 713
    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 714
    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 715
    const-string v1, "time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 716
    const-string v1, "likes"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 717
    const-string v1, "retweets"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 719
    const-string v1, "comments"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 720
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 721
    const-string v1, "userphoto"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 725
    const-string v1, "attachments"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/NewsEntry;->deserializeAttachments([B)V

    .line 726
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 727
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_0

    .line 728
    const-string v1, "retweet_uid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 729
    const-string v1, "retweet_username"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 730
    const-string v1, "retweet_text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 731
    const-string v1, "retweet_user_photo"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 732
    const-string v1, "retweet_orig_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 733
    const-string v1, "retweet_orig_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 734
    const-string v1, "retweet_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 736
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    shr-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 738
    const-string v1, "last_comment_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    const-string v1, "last_comment_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    .line 740
    const-string v1, "last_comment_photo"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 741
    const-string v1, "last_comment_text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 742
    const-string v1, "last_comment_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    .line 744
    :cond_1
    const-string v1, "created_by"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    .line 745
    const-string v1, "platform"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    .line 747
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsEntry;->layoutThumbs()V

    .line 749
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 751
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 756
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 757
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 759
    :cond_2
    return-void

    .line 753
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsEntry {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsEntry;->ell(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repostText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsEntry;->ell(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repostAttachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRetweetText()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 828
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 560
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->serializeAttachments()[B

    move-result-object v0

    .line 585
    .local v0, "sa":[B
    if-eqz v0, :cond_0

    .line 586
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 591
    :goto_0
    return-void

    .line 589
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

    .line 675
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 676
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "pid"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    const-string v1, "uid"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v1, "text"

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v1, "time"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    const-string v1, "likes"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    const-string v1, "comments"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    const-string v1, "username"

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "userphoto"

    iget-object v4, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v4, "retweet_uid"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    const-string v4, "retweet_username"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
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

    .line 687
    const-string v1, "flags"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    iget v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string v4, "retweet_text"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v1, "retweets"

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string v4, "retweet_user_photo"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v4, "retweet_orig_id"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string v4, "retweet_orig_time"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v1, "retweet_type"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v1, "created_by"

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string v1, "platform"

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 697
    const-string v1, "last_comment_name"

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v1, "last_comment_photo"

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v1, "last_comment_text"

    iget-object v2, p0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v1, "last_comment_time"

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    :cond_2
    invoke-virtual {p1, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 705
    return-void

    :cond_3
    move v1, v2

    .line 684
    goto/16 :goto_0

    :cond_4
    move-object v1, v3

    .line 685
    goto/16 :goto_1

    :cond_5
    move-object v1, v3

    .line 686
    goto/16 :goto_2

    :cond_6
    move-object v1, v3

    .line 688
    goto/16 :goto_3

    :cond_7
    move-object v1, v3

    .line 690
    goto/16 :goto_4

    :cond_8
    move v1, v2

    .line 691
    goto :goto_5

    :cond_9
    move v1, v2

    .line 692
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
    .line 594
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 595
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 596
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 597
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 598
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 599
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 600
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 601
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 602
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->flags:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 603
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 604
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 605
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 606
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 607
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->attachTitle:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    :goto_6
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 611
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 612
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 613
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 614
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 615
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 616
    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->platform:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 617
    invoke-direct {p0}, Lcom/vkontakte/android/NewsEntry;->serializeAttachments()[B

    move-result-object v0

    .line 618
    .local v0, "atts":[B
    if-eqz v0, :cond_7

    .line 619
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 620
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 624
    :goto_7
    return-void

    .line 594
    .end local v0    # "atts":[B
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 599
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 604
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 607
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 608
    :cond_4
    const-string v1, ""

    goto :goto_4

    .line 609
    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 610
    :cond_6
    const-string v1, ""

    goto :goto_6

    .line 622
    .restart local v0    # "atts":[B
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_7
.end method
