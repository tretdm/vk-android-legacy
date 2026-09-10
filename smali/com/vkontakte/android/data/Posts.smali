.class public Lcom/vkontakte/android/data/Posts;
.super Ljava/lang/Object;
.source "Posts.java"


# static fields
.field public static final ACTION_NEW_POST_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.NEW_POST_ADDED"

.field public static final ACTION_POST_DELETED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_DELETED"

.field public static final ACTION_POST_REPLACED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_REPLACED"

.field public static final ACTION_POST_UPDATED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_UPDATED"

.field public static final ACTION_RELOAD_FEED:Ljava/lang/String; = "com.vkontakte.android.RELOAD_FEED"

.field public static final ACTION_USER_NAME_CHANGED:Ljava/lang/String; = "com.vkontakte.android.USER_NAME_CHANGED"

.field public static final ACTION_USER_PHOTO_CHANGED:Ljava/lang/String; = "com.vkontakte.android.USER_PHOTO_CHANGED"

.field public static feed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static feedClearForNew:Z

.field public static feedFrom:Ljava/lang/String;

.field public static feedItem:I

.field public static feedItemOffset:I

.field public static feedOffset:I

.field private static liking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static newNews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static newNewsFrom:Ljava/lang/String;

.field public static preloadedFeed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->newNews:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->liking:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/vkontakte/android/data/Posts;->saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/vkontakte/android/data/Posts;->liking:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/NewsEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/vkontakte/android/data/Posts;->broadcastPostUpdate(Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method private static broadcastPostUpdate(Lcom/vkontakte/android/NewsEntry;)V
    .locals 9
    .param p0, "post"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x4

    .line 331
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v0, "owner_id"

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v0, "post_type"

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v0, "comments"

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v0, "retweets"

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v0, "likes"

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v0, "liked"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v0, "retweeted"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iget v4, p0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v5, p0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/cache/NewsfeedCache;->update(Landroid/content/Context;IIIIIZZ)V

    .line 343
    :cond_0
    return-void
.end method

.method public static buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;Ljava/lang/String;Z)Ljava/util/List;
    .locals 26
    .param p1, "postID"    # I
    .param p2, "ownerID"    # I
    .param p3, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p4, "referer"    # Ljava/lang/String;
    .param p5, "fromList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;II",
            "Lcom/vkontakte/android/NewsEntry;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Attachment;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v23, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v25, "tAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v16, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioAttachment;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v20, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v17, "common":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/16 v24, 0x0

    .line 111
    .local v24, "sig":Lcom/vkontakte/android/SignatureLinkAttachment;
    const/16 v22, 0x0

    .line 112
    .local v22, "repost":Lcom/vkontakte/android/RepostAttachment;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/Attachment;

    .line 113
    .local v15, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v15, :cond_0

    .line 114
    instance-of v4, v15, Lcom/vkontakte/android/ThumbAttachment;

    if-eqz v4, :cond_1

    check-cast v15, Lcom/vkontakte/android/ThumbAttachment;

    .end local v15    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .restart local v15    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1
    instance-of v4, v15, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v4, :cond_2

    check-cast v15, Lcom/vkontakte/android/AudioAttachment;

    .end local v15    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .restart local v15    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    instance-of v4, v15, Lcom/vkontakte/android/SignatureLinkAttachment;

    if-eqz v4, :cond_3

    move-object/from16 v24, v15

    check-cast v24, Lcom/vkontakte/android/SignatureLinkAttachment;

    goto :goto_0

    .line 117
    :cond_3
    instance-of v4, v15, Lcom/vkontakte/android/RepostAttachment;

    if-eqz v4, :cond_4

    move-object/from16 v22, v15

    check-cast v22, Lcom/vkontakte/android/RepostAttachment;

    goto :goto_0

    .line 118
    :cond_4
    if-nez p5, :cond_5

    instance-of v4, v15, Lcom/vkontakte/android/PollAttachment;

    if-eqz v4, :cond_5

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_5
    instance-of v4, v15, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v4, :cond_6

    move-object v4, v15

    check-cast v4, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v4}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    instance-of v4, v15, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v4, :cond_8

    move-object v4, v15

    check-cast v4, Lcom/vkontakte/android/GeoAttachment;

    iget v4, v4, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-gtz v4, :cond_8

    :cond_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v15    # "att":Lcom/vkontakte/android/Attachment;
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 123
    new-instance v4, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;Ljava/util/List;ZLjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v21, v0

    .line 127
    .local v21, "pl":[Lcom/vkontakte/android/AudioFile;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_b

    .line 128
    new-instance v5, Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v5, v4}, Lcom/vkontakte/android/AudioFile;-><init>(Lcom/vkontakte/android/AudioAttachment;)V

    aput-object v5, v21, v18

    .line 127
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 130
    :cond_b
    const/16 v18, 0x0

    .line 131
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/AudioAttachment;

    .line 132
    .local v14, "aa":Lcom/vkontakte/android/AudioAttachment;
    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 133
    move/from16 v0, v18

    iput v0, v14, Lcom/vkontakte/android/AudioAttachment;->playlistPos:I

    .line 134
    move-object/from16 v0, p4

    iput-object v0, v14, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 135
    new-instance v4, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1, v14}, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;-><init>(IILcom/vkontakte/android/AudioAttachment;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 139
    .end local v14    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v18    # "i":I
    .end local v21    # "pl":[Lcom/vkontakte/android/AudioFile;
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 140
    new-instance v4, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, p5

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;Z)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 143
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Attachment;

    .line 144
    .local v14, "aa":Lcom/vkontakte/android/Attachment;
    new-instance v4, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1, v14}, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;-><init>(IILcom/vkontakte/android/Attachment;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 147
    .end local v14    # "aa":Lcom/vkontakte/android/Attachment;
    :cond_e
    if-eqz v24, :cond_f

    .line 148
    new-instance v4, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v4, v0, v1, v2}, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;-><init>(IILcom/vkontakte/android/SignatureLinkAttachment;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_f
    if-eqz v22, :cond_10

    .line 151
    new-instance v4, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/vkontakte/android/RepostAttachment;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/vkontakte/android/RepostAttachment;->photo:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/vkontakte/android/RepostAttachment;->ownerID:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/vkontakte/android/RepostAttachment;->time:I

    move-object/from16 v0, v22

    iget v11, v0, Lcom/vkontakte/android/RepostAttachment;->postID:I

    move-object/from16 v0, v22

    iget v12, v0, Lcom/vkontakte/android/RepostAttachment;->type:I

    const/4 v13, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v4 .. v13}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkontakte/android/NewsEntry;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_10
    return-object v23
.end method

.method public static buildItems(Lcom/vkontakte/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;Z)Ljava/util/List;
    .locals 17
    .param p0, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "photosMode"    # Z
    .param p2, "referer"    # Ljava/lang/String;
    .param p3, "feedbackStyle"    # Z
    .param p4, "canHideFromFeed"    # Z
    .param p5, "menuClickListener"    # Landroid/view/View$OnClickListener;
    .param p6, "fromList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/NewsEntry;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/view/View$OnClickListener;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    new-instance v14, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;ZZ)V

    .line 159
    .local v14, "hdr":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;
    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 160
    if-eqz p5, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    :cond_0
    if-eqz p4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_b

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v14, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->showMenu:Z

    .line 161
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const/16 v3, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 165
    new-instance v3, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-eqz p6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    :goto_1
    const/4 v7, 0x0

    if-nez p6, :cond_d

    const/4 v8, 0x1

    :goto_2
    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;ZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/vkontakte/android/data/Posts;->buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    :cond_3
    new-instance v3, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    move-object/from16 v12, p0

    invoke-direct/range {v3 .. v12}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkontakte/android/NewsEntry;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_4
    const v3, 0x8000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 175
    new-instance v3, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/vkontakte/android/NewsEntry;->f:Z

    if-eqz v6, :cond_e

    const v6, 0x7f0d01dc

    :goto_3
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;ZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    if-nez p1, :cond_6

    .line 183
    new-instance v3, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-eqz p6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    :goto_5
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-nez p6, :cond_12

    const/4 v8, 0x1

    :goto_6
    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;ZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/vkontakte/android/data/Posts;->buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    if-eqz p6, :cond_9

    .line 188
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_7

    const/16 v3, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x800

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 189
    new-instance v4, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_13

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v3}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;ZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_7
    const/16 v3, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    .line 193
    new-instance v3, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 197
    new-instance v3, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    invoke-direct/range {v3 .. v10}, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    const/4 v4, 0x1

    iput v4, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    .line 202
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    const/4 v4, 0x2

    iput v4, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    .line 204
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_14

    .line 205
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 206
    .local v13, "di":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->clickable:Z

    goto :goto_8

    .line 160
    .end local v13    # "di":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 165
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v6}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 175
    :cond_e
    const v6, 0x7f0d01dd

    goto/16 :goto_3

    .line 177
    :cond_f
    new-instance v3, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/vkontakte/android/NewsEntry;->f:Z

    if-eqz v6, :cond_10

    const v6, 0x7f0d01de

    :goto_9
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;ZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    const v6, 0x7f0d01df

    goto :goto_9

    .line 183
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v6}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_5

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 189
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 210
    :cond_14
    return-object v16
.end method

.method public static deletePost(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;)V
    .locals 4
    .param p0, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/data/Posts$4;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Posts$4;-><init>(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    .line 214
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 217
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 218
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 219
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0275

    new-instance v3, Lcom/vkontakte/android/data/Posts$2;

    invoke-direct {v3, p0, v0, p2}, Lcom/vkontakte/android/data/Posts$2;-><init>(Lcom/vkontakte/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 230
    return-void
.end method

.method public static like(Lcom/vkontakte/android/NewsEntry;ZLandroid/app/Activity;)V
    .locals 12
    .param p0, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "liked"    # Z
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 287
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 288
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    int-to-long v0, v0

    const/16 v2, 0x3c

    shl-long/2addr v0, v2

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    int-to-long v2, v2

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    int-to-long v2, v2

    or-long v9, v0, v2

    .line 289
    .local v9, "id":J
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 291
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/data/Posts;->broadcastPostUpdate(Lcom/vkontakte/android/NewsEntry;)V

    .line 292
    sget-object v0, Lcom/vkontakte/android/data/Posts;->liking:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    :goto_1
    return-void

    .line 290
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lcom/vkontakte/android/data/Posts;->liking:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget v11, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .local v11, "lOid":I
    iget v8, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 295
    .local v8, "lPid":I
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v3, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v5, p0, Lcom/vkontakte/android/NewsEntry;->type:I

    const-string v7, ""

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/data/Posts$5;

    move-wide v2, v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/vkontakte/android/data/Posts$5;-><init>(JLcom/vkontakte/android/NewsEntry;ZLandroid/app/Activity;II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method public static publishPostponed(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    new-instance v0, Lcom/vkontakte/android/api/WallPost;

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/WallPost;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/data/Posts$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/data/Posts$1;-><init>(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallPost;->setCallback(Lcom/vkontakte/android/api/WallPost$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 102
    return-void
.end method

.method private static saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "newComment"    # Ljava/lang/String;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    .line 233
    new-instance v0, Lcom/vkontakte/android/api/WallEdit;

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p1}, Lcom/vkontakte/android/api/WallEdit;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/data/Posts$3;

    invoke-direct {v1, p2, p0, p1}, Lcom/vkontakte/android/data/Posts$3;-><init>(Landroid/app/Activity;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallEdit;->setCallback(Lcom/vkontakte/android/api/WallEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 260
    return-void
.end method
