.class public Lcom/vkontakte/android/NewsItemView;
.super Landroid/widget/RelativeLayout;
.source "NewsItemView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;,
        Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;
    }
.end annotation


# instance fields
.field private attViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

.field protected audioPlaylist:[Lcom/vkontakte/android/AudioFile;

.field e:Lcom/vkontakte/android/NewsEntry;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field imgRemoved:Z

.field private liking:Z

.field private lst:J

.field private name:Landroid/widget/TextView;

.field nlikes:I

.field protected photoClickListener:Landroid/view/View$OnClickListener;

.field private photosMode:Z

.field private post:Landroid/widget/TextView;

.field private postComments:Landroid/widget/TextView;

.field private postLikes:Landroid/widget/TextView;

.field private postReposts:Landroid/widget/TextView;

.field private repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

.field private retweetName:Landroid/widget/TextView;

.field private retweetPhoto:Landroid/widget/ImageView;

.field private retweetText:Landroid/widget/TextView;

.field private retweetTime:Landroid/widget/TextView;

.field public showDateAgo:Z

.field ta:Ljava/lang/String;

.field private updListener:Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 38
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 41
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 38
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 41
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsItemView;Z)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsItemView;->like(Z)V

    return-void
.end method

.method static synthetic access$1(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 540
    invoke-static/range {p0 .. p5}, Lcom/vkontakte/android/NewsItemView;->openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewsItemView;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    return-void
.end method

.method public static addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V
    .locals 25
    .param p0, "item"    # Landroid/view/View;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p3, "containerID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;",
            "Lcom/vkontakte/android/NewsEntry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const-string v2, "vk"

    const-string v4, "begin add atts"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 308
    .local v20, "t":J
    const/16 v19, 0x0

    .local v19, "pi":I
    const/4 v11, 0x0

    .line 309
    .local v11, "ai":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v18, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v14, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/16 v16, 0x0

    .line 312
    .local v16, "nPhotos":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 323
    const/4 v13, 0x0

    .line 324
    .local v13, "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 325
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    check-cast v13, [Lcom/vkontakte/android/AudioFile;

    .line 339
    .restart local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    :cond_1
    const/16 v22, 0x0

    .line 340
    .local v22, "thumb":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 374
    if-eqz v22, :cond_3

    .line 375
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 376
    .local v15, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    if-eqz v15, :cond_3

    .line 377
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 378
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    .end local v15    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_3
    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    .line 382
    const-string v2, "vk"

    const-string v4, "end add atts"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 312
    .end local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    .end local v22    # "thumb":Landroid/view/View;
    :cond_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    .line 313
    .local v12, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v12, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_5

    instance-of v2, v12, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v2, :cond_5

    .line 314
    add-int/lit8 v16, v16, 0x1

    .line 315
    new-instance v4, Lcom/vkontakte/android/Photo;

    move-object v2, v12

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    invoke-direct {v4, v2}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_5
    instance-of v2, v12, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_0

    move-object v9, v12

    .line 318
    check-cast v9, Lcom/vkontakte/android/AudioAttachment;

    .line 319
    .local v9, "aa":Lcom/vkontakte/android/AudioAttachment;
    const-string v2, "comments"

    iput-object v2, v9, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 320
    new-instance v2, Lcom/vkontakte/android/AudioFile;

    iget v3, v9, Lcom/vkontakte/android/AudioAttachment;->aid:I

    iget v4, v9, Lcom/vkontakte/android/AudioAttachment;->oid:I

    iget-object v5, v9, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v6, v9, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    iget v7, v9, Lcom/vkontakte/android/AudioAttachment;->duration:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v9    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v12    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    .restart local v22    # "thumb":Landroid/view/View;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    .line 341
    .restart local v12    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v12, :cond_2

    .line 342
    if-eqz p2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v23

    .line 343
    .local v23, "v":Landroid/view/View;
    :goto_2
    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    .line 344
    if-lez v16, :cond_7

    instance-of v2, v12, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_7

    instance-of v2, v12, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v2, :cond_7

    .line 345
    new-instance v17, Lcom/vkontakte/android/Photo;

    move-object v2, v12

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    .line 348
    .local v17, "photo":Lcom/vkontakte/android/Photo;
    move/from16 v3, v19

    .line 349
    .local v3, "idx":I
    new-instance v2, Lcom/vkontakte/android/NewsItemView$4;

    move-object/from16 v4, v18

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/NewsItemView$4;-><init>(ILjava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    add-int/lit8 v19, v19, 0x1

    .line 356
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    move-object/from16 v2, v23

    check-cast v2, Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 358
    .end local v3    # "idx":I
    .end local v17    # "photo":Lcom/vkontakte/android/Photo;
    :cond_7
    instance-of v2, v12, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_8

    move-object/from16 v10, v23

    .line 359
    check-cast v10, Lcom/vkontakte/android/AudioAttachView;

    .line 360
    .local v10, "aav":Lcom/vkontakte/android/AudioAttachView;
    iput-object v13, v10, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 361
    iput v11, v10, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 362
    add-int/lit8 v11, v11, 0x1

    .line 364
    .end local v10    # "aav":Lcom/vkontakte/android/AudioAttachView;
    :cond_8
    instance-of v2, v12, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_9

    move-object v2, v12

    .line 365
    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    const-string v4, "comments"

    iput-object v4, v2, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    .line 367
    :cond_9
    instance-of v2, v12, Lcom/vkontakte/android/ThumbAttachment;

    if-nez v2, :cond_a

    instance-of v2, v12, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_b

    :cond_a
    move-object/from16 v22, v23

    .line 368
    :cond_b
    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    .line 369
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 371
    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    goto/16 :goto_1

    .line 342
    .end local v23    # "v":Landroid/view/View;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v23

    goto :goto_2
.end method

.method private getInvisPartBottom()I
    .locals 3

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 642
    .local v1, "pHeight":I
    const/4 v0, 0x0

    .line 643
    .local v0, "invisPart":I
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBottom()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBottom()I

    move-result v2

    sub-int v0, v2, v1

    .line 646
    :cond_0
    return v0
.end method

.method private getInvisPartTop()I
    .locals 2

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private like(Z)V
    .locals 10
    .param p1, "liked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 581
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 582
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 585
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 587
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    if-eqz v0, :cond_1

    .line 634
    :goto_1
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 588
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 589
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .local v8, "lOid":I
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v9, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 590
    .local v9, "lPid":I
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const-string v7, ""

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    .line 591
    new-instance v1, Lcom/vkontakte/android/NewsItemView$5;

    invoke-direct {v1, p0, v8, v9, p1}, Lcom/vkontakte/android/NewsItemView$5;-><init>(Lcom/vkontakte/android/NewsItemView;IIZ)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private static logtime(J)V
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 134
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V
    .locals 15
    .param p0, "index"    # I
    .param p1, "view"    # Landroid/view/View;
    .param p3, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p4, "container"    # Landroid/view/View;
    .param p5, "vID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;",
            "Lcom/vkontakte/android/NewsEntry;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual/range {p4 .. p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 542
    .local v7, "attachContainer":Landroid/view/ViewGroup;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v9, v1, :cond_3

    .line 550
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_5

    :cond_0
    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    const/4 v3, 0x5

    if-le v1, v3, :cond_5

    .line 551
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v2, "args":Landroid/os/Bundle;
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 555
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1

    instance-of v1, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 556
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 559
    :cond_1
    const-string v1, "orientation"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    const-string v1, "list"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 561
    const-string v1, "position"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v1, "feed_entry"

    move-object/from16 v0, p3

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 563
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/vkontakte/android/NewsItemView;

    if-eqz v1, :cond_2

    move-object/from16 v1, p4

    check-cast v1, Lcom/vkontakte/android/NewsItemView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v1, :cond_2

    const-string v1, "bg_color"

    const v3, -0xe5e5e6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    :cond_2
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 578
    :goto_1
    return-void

    .line 543
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 544
    .local v12, "v":Landroid/view/View;
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 545
    .local v10, "pos":[I
    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 546
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    const/4 v6, 0x0

    aget v6, v10, v6

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v6, v13

    const/4 v13, 0x1

    aget v13, v10, v13

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v3, v4, v5, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 547
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v12, v1}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v11, v1, Landroid/graphics/Point;->y:I

    .line 548
    .local v11, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    if-gez v11, :cond_4

    neg-int v3, v11

    :goto_2
    iput v3, v1, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 542
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 548
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 566
    .end local v10    # "pos":[I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 567
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v1, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 568
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 571
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 572
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v1, "orientation"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v1, "list"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 574
    const-string v1, "position"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/vkontakte/android/NewsItemView;

    if-eqz v1, :cond_7

    move-object/from16 v1, p4

    check-cast v1, Lcom/vkontakte/android/NewsItemView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v1, :cond_7

    const-string v1, "bg_color"

    const v3, -0xe5e5e6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    :cond_7
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto/16 :goto_1
.end method

.method private updateAttachViews()V
    .locals 15

    .prologue
    const v11, -0xd0d0e

    const v10, -0xededee

    const v14, 0x7f09001d

    .line 455
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v8, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 505
    :cond_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getHeight()I

    move-result v8

    invoke-direct {p0}, Lcom/vkontakte/android/NewsItemView;->getInvisPartBottom()I

    move-result v9

    sub-int v2, v8, v9

    .line 458
    .local v2, "bOffset":I
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/FlowLayout;->getTop()I

    move-result v8

    sub-int/2addr v2, v8

    .line 459
    const/4 v3, 0x0

    .line 460
    .local v3, "i":I
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;

    .line 461
    .local v4, "info":Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;
    iget-object v8, v4, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;->view:Landroid/view/View;

    if-nez v8, :cond_4

    iget-object v8, v4, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-gt v8, v2, :cond_4

    .line 462
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v8, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 463
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 464
    .local v7, "view":Landroid/view/View;
    iput-object v7, v4, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;->view:Landroid/view/View;

    .line 465
    instance-of v8, v7, Lcom/vkontakte/android/AudioAttachView;

    if-eqz v8, :cond_2

    move-object v0, v1

    .line 466
    check-cast v0, Lcom/vkontakte/android/AudioAttachment;

    .line 467
    .local v0, "aa":Lcom/vkontakte/android/AudioAttachment;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v8, v8

    if-lt v5, v8, :cond_5

    :goto_2
    move-object v8, v7

    .line 473
    check-cast v8, Lcom/vkontakte/android/AudioAttachView;

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    iput-object v9, v8, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 475
    .end local v0    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v5    # "j":I
    :cond_2
    instance-of v8, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v8, :cond_3

    instance-of v8, v1, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v8, :cond_3

    .line 476
    const v8, 0x7f090190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 477
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    :cond_3
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v8, v7}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    .line 481
    instance-of v8, v1, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v8, :cond_9

    .line 482
    check-cast v1, Lcom/vkontakte/android/PhotoAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "src":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 484
    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v8}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    .line 501
    .end local v6    # "src":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 468
    .restart local v0    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v5    # "j":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_5
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v8, v8, v5

    iget v8, v8, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v9, v0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v8, v8, v5

    iget v8, v8, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v9, v0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    if-ne v8, v9, :cond_6

    move-object v8, v7

    .line 469
    check-cast v8, Lcom/vkontakte/android/AudioAttachView;

    iput v5, v8, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    goto :goto_2

    .line 467
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .end local v5    # "j":I
    .restart local v6    # "src":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v9, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v9, :cond_8

    move v9, v10

    :goto_4
    invoke-direct {v13, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    move v9, v11

    goto :goto_4

    .line 488
    .end local v6    # "src":Ljava/lang/String;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_9
    instance-of v8, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v8, :cond_c

    .line 489
    check-cast v1, Lcom/vkontakte/android/PhotoAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v6

    .line 490
    .restart local v6    # "src":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_a

    move-object v8, v7

    .line 491
    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    check-cast v7, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    .end local v7    # "view":Landroid/view/View;
    invoke-virtual {v7}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    goto :goto_3

    .line 494
    .restart local v7    # "view":Landroid/view/View;
    :cond_a
    check-cast v7, Landroid/widget/ImageView;

    .end local v7    # "view":Landroid/view/View;
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v8, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v8, :cond_b

    move v8, v10

    :goto_5
    invoke-direct {v9, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_b
    move v8, v11

    goto :goto_5

    .line 495
    .end local v6    # "src":Ljava/lang/String;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v7    # "view":Landroid/view/View;
    :cond_c
    instance-of v8, v1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v8, :cond_4

    .line 496
    check-cast v1, Lcom/vkontakte/android/VideoAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v6, v1, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 497
    .restart local v6    # "src":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 498
    check-cast v7, Lcom/vkontakte/android/VideoAttachView;

    .end local v7    # "view":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public getImageAttachView(I)Landroid/view/View;
    .locals 5
    .param p1, "idx"    # I

    .prologue
    .line 521
    const/4 v1, 0x0

    .local v1, "cnt":I
    const/4 v2, 0x0

    .line 522
    .local v2, "i":I
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 529
    const/4 v2, 0x0

    .line 530
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 537
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 522
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 523
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_2

    .line 524
    if-ne v1, p1, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 525
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 527
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 531
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_5

    .line 532
    if-ne v1, p1, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 533
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 535
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 115
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 120
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const v7, 0x7f090112

    const/4 v6, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    const v1, 0x7f09009a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/FlowLayout;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    .line 70
    const v1, 0x7f09010d

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/FlowLayout;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    .line 71
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f090113

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f090114

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postReposts:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f090110

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f090115

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f09010a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    .line 78
    const v1, 0x7f09010e

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->name:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f09010b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f090111

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fontSize"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "k":I
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    int-to-float v2, v0

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    int-to-float v2, v0

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    new-instance v2, Lcom/vkontakte/android/NewsItemView$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsItemView$1;-><init>(Lcom/vkontakte/android/NewsItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    new-instance v2, Lcom/vkontakte/android/NewsItemView$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsItemView$2;-><init>(Lcom/vkontakte/android/NewsItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postReposts:Landroid/widget/TextView;

    new-instance v2, Lcom/vkontakte/android/NewsItemView$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsItemView$3;-><init>(Lcom/vkontakte/android/NewsItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "c"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 268
    .local v0, "tm":J
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 269
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Layout = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/vkontakte/android/NewsItemView;->updateAttachViews()V

    .line 658
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 127
    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 130
    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/FlowLayout;->resetParams()V

    .line 132
    return-void
.end method

.method public resetAttachments()V
    .locals 3

    .prologue
    .line 273
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 281
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    if-eqz v2, :cond_0

    .line 282
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 274
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    .end local v0    # "att":Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .restart local v0    # "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 282
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setData(Lcom/vkontakte/android/NewsEntry;ZLcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 9
    .param p1, "entry"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "photosMode"    # Z
    .param p3, "imgLoader"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 138
    .local v3, "t":J
    iput-object p3, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 140
    iput-boolean p2, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    .line 141
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 143
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const-string v6, "DELETED"

    iput-object v6, v5, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v5, :cond_d

    .line 147
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 148
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const-string v2, ""

    .line 153
    .local v2, "rtime":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 154
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 161
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .end local v2    # "rtime":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Attachments = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-nez p2, :cond_3

    .line 181
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 182
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 186
    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_3
    iget v5, p1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iput v5, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 194
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_11

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_11

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_11

    .line 195
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_f

    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    if-nez p2, :cond_4

    .line 206
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->postReposts:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_10

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    const v5, 0x7f090099

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 210
    const v5, 0x7f090099

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->resetAttachments()V

    .line 223
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_12

    .line 224
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    .line 225
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const v7, 0x7f09009a

    invoke-static {p0, v5, v6, v7}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 230
    :goto_6
    if-nez p2, :cond_5

    .line 231
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 232
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    .line 233
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const v7, 0x7f09010d

    invoke-static {p0, v5, v6, v7}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 240
    :cond_5
    :goto_7
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 242
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 244
    const v5, 0x7f090026

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "lcv":Landroid/view/View;
    if-nez v0, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03005c

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 246
    const v5, 0x7f090026

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    .line 247
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 248
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 249
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x3

    const v6, 0x7f090112

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsItemView;->addView(Landroid/view/View;)V

    .line 254
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const v5, 0x7f090104

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v8, "$2"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const v5, 0x7f090103

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v5, 0x7f090107

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const v5, 0x7f090102

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 258
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->numComments:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_14

    .line 259
    const v5, 0x7f090101

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0010

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .end local v0    # "lcv":Landroid/view/View;
    :cond_7
    :goto_8
    return-void

    .line 155
    .restart local v2    # "rtime":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_9

    .line 156
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 158
    :cond_9
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    goto/16 :goto_0

    :cond_a
    const-string v2, ""

    goto :goto_9

    .line 164
    :cond_b
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 167
    .end local v2    # "rtime":Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 172
    :cond_d
    const v5, 0x7f090110

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 173
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 184
    :cond_e
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 195
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 208
    :cond_10
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 213
    :cond_11
    if-nez p2, :cond_4

    .line 214
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postReposts:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const v5, 0x7f090099

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 227
    :cond_12
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 235
    :cond_13
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 261
    .restart local v0    # "lcv":Landroid/view/View;
    :cond_14
    const v5, 0x7f090101

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f08019c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8
.end method

.method public setOnInfoUpdateListener(Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView;->updListener:Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    .line 452
    return-void
.end method

.method public updateDate()V
    .locals 3

    .prologue
    .line 509
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    const v1, 0x7f09010f

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 514
    :cond_0
    return-void
.end method

.method protected updateInfoLine()V
    .locals 15

    .prologue
    const/high16 v14, 0x41200000    # 10.0f

    const v13, 0x7f090112

    const v12, 0x7f090114

    const v11, 0x7f090113

    const/4 v10, 0x0

    .line 386
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v2, ""

    .line 389
    .local v2, "infoHtml":Ljava/lang/CharSequence;
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    if-eqz v6, :cond_7

    .line 390
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v6, :cond_6

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Friends;->getFromAll(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v6, :cond_5

    const v6, 0x7f0d005e

    :goto_1
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 402
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 403
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v5

    .line 404
    .local v5, "sp":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x200

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f0201b5

    :goto_3
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 405
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 406
    new-instance v6, Landroid/text/style/ImageSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v7, 0x1

    invoke-interface {v5, v6, v10, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 407
    const-string v6, " "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 408
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 409
    move-object v2, v0

    .line 412
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "sp":Landroid/text/Spannable;
    :cond_3
    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .local v3, "padContent":I
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    .line 414
    .local v4, "padEmpty":I
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    .line 415
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numComments:I

    if-lez v6, :cond_9

    .line 416
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 418
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 424
    :goto_4
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v6, :cond_a

    .line 425
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 427
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 433
    :goto_5
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v6, :cond_b

    .line 434
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 436
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 442
    :goto_6
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 443
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 446
    :cond_4
    const v6, 0x7f09010f

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->updListener:Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->updListener:Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-interface {v6, p0, v7}, Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;->onInfoUpdate(Lcom/vkontakte/android/NewsItemView;Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 392
    .end local v3    # "padContent":I
    .end local v4    # "padEmpty":I
    :cond_5
    const v6, 0x7f0d005d

    goto/16 :goto_1

    .line 396
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "infoHtml":Ljava/lang/CharSequence;
    iput-object v2, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 398
    .restart local v2    # "infoHtml":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 399
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 404
    .restart local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .restart local v5    # "sp":Landroid/text/Spannable;
    :cond_8
    const v6, 0x7f0201b8

    goto/16 :goto_3

    .line 420
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v5    # "sp":Landroid/text/Spannable;
    .restart local v3    # "padContent":I
    .restart local v4    # "padEmpty":I
    :cond_9
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 422
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 429
    :cond_a
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 431
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 438
    :cond_b
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 440
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6
.end method

.method public updateLikes()V
    .locals 0

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 518
    return-void
.end method
