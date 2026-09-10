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

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 37
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 37
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/NewsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsItemView;->like(Z)V

    return-void
.end method

.method static synthetic access$100(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/vkontakte/android/NewsEntry;
    .param p4, "x4"    # Landroid/view/View;
    .param p5, "x5"    # I

    .prologue
    .line 34
    invoke-static/range {p0 .. p5}, Lcom/vkontakte/android/NewsItemView;->openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/vkontakte/android/NewsItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    return p1
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
    .line 291
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const-string v2, "vk"

    const-string v4, "begin add atts"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 307
    .local v21, "t":J
    const/16 v20, 0x0

    .local v20, "pi":I
    const/4 v11, 0x0

    .line 308
    .local v11, "ai":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v19, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v14, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/16 v17, 0x0

    .line 311
    .local v17, "nPhotos":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    .line 312
    .local v12, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v12, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_1

    instance-of v2, v12, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v2, :cond_1

    .line 313
    add-int/lit8 v17, v17, 0x1

    .line 314
    new-instance v4, Lcom/vkontakte/android/Photo;

    move-object v2, v12

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    invoke-direct {v4, v2}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    instance-of v2, v12, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_0

    move-object v9, v12

    .line 317
    check-cast v9, Lcom/vkontakte/android/AudioAttachment;

    .line 318
    .local v9, "aa":Lcom/vkontakte/android/AudioAttachment;
    const-string v2, "comments"

    iput-object v2, v9, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 319
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

    .line 322
    .end local v9    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v12    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    const/4 v13, 0x0

    .line 323
    .local v13, "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 324
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    check-cast v13, [Lcom/vkontakte/android/AudioFile;

    .line 338
    .restart local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    :cond_3
    const/16 v23, 0x0

    .line 339
    .local v23, "thumb":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    .line 340
    .restart local v12    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v12, :cond_4

    .line 341
    if-eqz p2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    .line 342
    .local v24, "v":Landroid/view/View;
    :goto_2
    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    .line 343
    if-lez v17, :cond_5

    instance-of v2, v12, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_5

    instance-of v2, v12, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v2, :cond_5

    .line 344
    new-instance v18, Lcom/vkontakte/android/Photo;

    move-object v2, v12

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    .line 347
    .local v18, "photo":Lcom/vkontakte/android/Photo;
    move/from16 v3, v20

    .line 348
    .local v3, "idx":I
    new-instance v2, Lcom/vkontakte/android/NewsItemView$4;

    move-object/from16 v4, v19

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/NewsItemView$4;-><init>(ILjava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    add-int/lit8 v20, v20, 0x1

    .line 355
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    move-object/from16 v2, v24

    check-cast v2, Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 357
    .end local v3    # "idx":I
    .end local v18    # "photo":Lcom/vkontakte/android/Photo;
    :cond_5
    instance-of v2, v12, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_6

    move-object/from16 v10, v24

    .line 358
    check-cast v10, Lcom/vkontakte/android/AudioAttachView;

    .line 359
    .local v10, "aav":Lcom/vkontakte/android/AudioAttachView;
    iput-object v13, v10, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 360
    iput v11, v10, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 361
    add-int/lit8 v11, v11, 0x1

    .line 363
    .end local v10    # "aav":Lcom/vkontakte/android/AudioAttachView;
    :cond_6
    instance-of v2, v12, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_7

    move-object v2, v12

    .line 364
    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    const-string v4, "comments"

    iput-object v4, v2, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    .line 366
    :cond_7
    instance-of v2, v12, Lcom/vkontakte/android/ThumbAttachment;

    if-nez v2, :cond_8

    instance-of v2, v12, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_9

    :cond_8
    move-object/from16 v23, v24

    .line 367
    :cond_9
    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    .line 368
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    goto/16 :goto_1

    .line 341
    .end local v24    # "v":Landroid/view/View;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v24

    goto :goto_2

    .line 373
    .end local v12    # "att":Lcom/vkontakte/android/Attachment;
    :cond_b
    if-eqz v23, :cond_c

    .line 374
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 375
    .local v16, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    if-eqz v16, :cond_c

    .line 376
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 377
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .end local v16    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_c
    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/NewsItemView;->logtime(J)V

    .line 381
    const-string v2, "vk"

    const-string v4, "end add atts"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private getInvisPartBottom()I
    .locals 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 641
    .local v1, "pHeight":I
    const/4 v0, 0x0

    .line 642
    .local v0, "invisPart":I
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBottom()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBottom()I

    move-result v2

    sub-int v0, v2, v1

    .line 645
    :cond_0
    return v0
.end method

.method private getInvisPartTop()I
    .locals 2

    .prologue
    .line 649
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

    .line 580
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 581
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 584
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 586
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    if-eqz v0, :cond_1

    .line 633
    :goto_1
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 587
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 588
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .local v8, "lOid":I
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v9, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 589
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

    new-instance v1, Lcom/vkontakte/android/NewsItemView$5;

    invoke-direct {v1, p0, v8, v9, p1}, Lcom/vkontakte/android/NewsItemView$5;-><init>(Lcom/vkontakte/android/NewsItemView;IIZ)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private static logtime(J)V
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 133
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    .line 540
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual/range {p4 .. p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 541
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

    if-ge v9, v1, :cond_1

    .line 542
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 543
    .local v12, "v":Landroid/view/View;
    const/4 v1, 0x2

    new-array v10, v1, [I

    fill-array-data v10, :array_0

    .line 544
    .local v10, "pos":[I
    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 545
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

    .line 546
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v12, v1}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v11, v1, Landroid/graphics/Point;->y:I

    .line 547
    .local v11, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    if-gez v11, :cond_0

    neg-int v3, v11

    :goto_1
    iput v3, v1, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 541
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 547
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 549
    .end local v10    # "pos":[I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_5

    :cond_2
    move-object/from16 v0, p3

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    const/4 v3, 0x5

    if-le v1, v3, :cond_5

    .line 550
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v2, "args":Landroid/os/Bundle;
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 554
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_3

    instance-of v1, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 555
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 558
    :cond_3
    const-string v1, "orientation"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    const-string v1, "list"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 560
    const-string v1, "position"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string v1, "feed_entry"

    move-object/from16 v0, p3

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 562
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/vkontakte/android/NewsItemView;

    if-eqz v1, :cond_4

    move-object/from16 v1, p4

    check-cast v1, Lcom/vkontakte/android/NewsItemView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v1, :cond_4

    const-string v1, "bg_color"

    const v3, -0xe5e5e6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    :cond_4
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 577
    :goto_2
    return-void

    .line 565
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 566
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v1, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 567
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 570
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 571
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v1, "orientation"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    const-string v1, "list"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 573
    const-string v1, "position"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
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

    .line 575
    :cond_7
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_2

    .line 543
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private updateAttachViews()V
    .locals 15

    .prologue
    const v12, -0xd0d0e

    const v11, -0xededee

    const v14, 0x7f08000a

    .line 454
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v9, v9, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_1

    .line 504
    :cond_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getHeight()I

    move-result v9

    invoke-direct {p0}, Lcom/vkontakte/android/NewsItemView;->getInvisPartBottom()I

    move-result v10

    sub-int v2, v9, v10

    .line 457
    .local v2, "bOffset":I
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/FlowLayout;->getTop()I

    move-result v9

    sub-int/2addr v2, v9

    .line 458
    const/4 v3, 0x0

    .line 459
    .local v3, "i":I
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;

    .line 460
    .local v5, "info":Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;
    iget-object v9, v5, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;->view:Landroid/view/View;

    if-nez v9, :cond_5

    iget-object v9, v5, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-gt v9, v2, :cond_5

    .line 461
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v9, v9, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 462
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 463
    .local v8, "view":Landroid/view/View;
    iput-object v8, v5, Lcom/vkontakte/android/NewsItemView$AttachmentViewInfo;->view:Landroid/view/View;

    .line 464
    instance-of v9, v8, Lcom/vkontakte/android/AudioAttachView;

    if-eqz v9, :cond_3

    move-object v0, v1

    .line 465
    check-cast v0, Lcom/vkontakte/android/AudioAttachment;

    .line 466
    .local v0, "aa":Lcom/vkontakte/android/AudioAttachment;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v9, v9

    if-ge v6, v9, :cond_2

    .line 467
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v10, v0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v10, v0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    if-ne v9, v10, :cond_6

    move-object v9, v8

    .line 468
    check-cast v9, Lcom/vkontakte/android/AudioAttachView;

    iput v6, v9, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    :cond_2
    move-object v9, v8

    .line 472
    check-cast v9, Lcom/vkontakte/android/AudioAttachView;

    iget-object v10, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    iput-object v10, v9, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 474
    .end local v0    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v6    # "j":I
    :cond_3
    instance-of v9, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v9, :cond_4

    instance-of v9, v1, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v9, :cond_4

    .line 475
    const v9, 0x7f080170

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 476
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v9, v8}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    .line 480
    instance-of v9, v1, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v9, :cond_9

    .line 481
    check-cast v1, Lcom/vkontakte/android/PhotoAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v7

    .line 482
    .local v7, "src":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 483
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v10, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 484
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v9}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    .line 500
    .end local v7    # "src":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 466
    .restart local v0    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v6    # "j":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 486
    .end local v0    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .end local v6    # "j":I
    .restart local v7    # "src":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v10, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v10, :cond_8

    move v10, v11

    :goto_3
    invoke-direct {v13, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    move v10, v12

    goto :goto_3

    .line 487
    .end local v7    # "src":Ljava/lang/String;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_9
    instance-of v9, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v9, :cond_c

    .line 488
    check-cast v1, Lcom/vkontakte/android/PhotoAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v7

    .line 489
    .restart local v7    # "src":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_a

    move-object v9, v8

    .line 490
    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v10, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 491
    check-cast v8, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    .end local v8    # "view":Landroid/view/View;
    invoke-virtual {v8}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    goto :goto_2

    .line 493
    .restart local v8    # "view":Landroid/view/View;
    :cond_a
    check-cast v8, Landroid/widget/ImageView;

    .end local v8    # "view":Landroid/view/View;
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v9, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v9, :cond_b

    move v9, v11

    :goto_4
    invoke-direct {v10, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    move v9, v12

    goto :goto_4

    .line 494
    .end local v7    # "src":Ljava/lang/String;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v8    # "view":Landroid/view/View;
    :cond_c
    instance-of v9, v1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v9, :cond_5

    .line 495
    check-cast v1, Lcom/vkontakte/android/VideoAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v7, v1, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 496
    .restart local v7    # "src":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 497
    check-cast v8, Lcom/vkontakte/android/VideoAttachView;

    .end local v8    # "view":Landroid/view/View;
    iget-object v9, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method


# virtual methods
.method public getImageAttachView(I)Landroid/view/View;
    .locals 5
    .param p1, "idx"    # I

    .prologue
    .line 520
    const/4 v1, 0x0

    .local v1, "cnt":I
    const/4 v2, 0x0

    .line 521
    .local v2, "i":I
    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 522
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_1

    .line 523
    if-ne v1, p1, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 536
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :goto_1
    return-object v4

    .line 524
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 526
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    const/4 v2, 0x0

    .line 529
    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 530
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_4

    .line 531
    if-ne v1, p1, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 532
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 534
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 536
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 114
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 119
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const v7, 0x7f0800f7

    const/4 v6, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 68
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/FlowLayout;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    .line 69
    const v1, 0x7f0800f2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/FlowLayout;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    .line 70
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0800f8

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0800f9

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postReposts:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0800f5

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0800fa

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0800ef

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    .line 77
    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->name:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0800f0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0800f6

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    .line 81
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

    .line 82
    .local v0, "k":I
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    int-to-float v2, v0

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    int-to-float v2, v0

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    new-instance v2, Lcom/vkontakte/android/NewsItemView$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsItemView$1;-><init>(Lcom/vkontakte/android/NewsItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    new-instance v2, Lcom/vkontakte/android/NewsItemView$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsItemView$2;-><init>(Lcom/vkontakte/android/NewsItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
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
    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 267
    .local v0, "tm":J
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 268
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/vkontakte/android/NewsItemView;->updateAttachViews()V

    .line 657
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->liking:Z

    .line 126
    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->audioPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 129
    iput-object v1, p0, Lcom/vkontakte/android/NewsItemView;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/FlowLayout;->resetParams()V

    .line 131
    return-void
.end method

.method public resetAttachments()V
    .locals 3

    .prologue
    .line 272
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 274
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 273
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "att":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 280
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    if-eqz v2, :cond_0

    .line 281
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 282
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .restart local v0    # "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 281
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 287
    .end local v0    # "att":Landroid/view/View;
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    goto :goto_0
.end method

.method public setData(Lcom/vkontakte/android/NewsEntry;ZLcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 9
    .param p1, "entry"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "photosMode"    # Z
    .param p3, "imgLoader"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 137
    .local v3, "t":J
    iput-object p3, p0, Lcom/vkontakte/android/NewsItemView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 139
    iput-boolean p2, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    .line 140
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 142
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const-string v6, "DELETED"

    iput-object v6, v5, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v5, :cond_d

    .line 146
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 147
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const-string v2, ""

    .line 152
    .local v2, "rtime":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 153
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d01ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 160
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .end local v2    # "rtime":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attachments = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-nez p2, :cond_3

    .line 180
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 181
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 185
    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_3
    iget v5, p1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iput v5, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 193
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

    .line 194
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_f

    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    if-nez p2, :cond_4

    .line 205
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->postReposts:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_10

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    const v5, 0x7f080084

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 209
    const v5, 0x7f080084

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->resetAttachments()V

    .line 222
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_12

    .line 223
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    .line 224
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const v7, 0x7f080085

    invoke-static {p0, v5, v6, v7}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 229
    :goto_6
    if-nez p2, :cond_5

    .line 230
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 231
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    .line 232
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const v7, 0x7f0800f2

    invoke-static {p0, v5, v6, v7}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 239
    :cond_5
    :goto_7
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 241
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 243
    const v5, 0x7f08001e

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "lcv":Landroid/view/View;
    if-nez v0, :cond_6

    .line 244
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03004e

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 245
    const v5, 0x7f08001e

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    .line 246
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 247
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 248
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x3

    const v6, 0x7f0800f7

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsItemView;->addView(Landroid/view/View;)V

    .line 253
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const v5, 0x7f0800e9

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

    .line 254
    const v5, 0x7f0800e8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const v5, 0x7f0800ec

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

    .line 256
    const v5, 0x7f0800e7

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->numComments:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_14

    .line 258
    const v5, 0x7f0800e6

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f07001f

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .end local v0    # "lcv":Landroid/view/View;
    :cond_7
    :goto_8
    return-void

    .line 154
    .restart local v2    # "rtime":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_9

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0356

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 157
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

    .line 163
    :cond_b
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 166
    .end local v2    # "rtime":Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 171
    :cond_d
    const v5, 0x7f0800f5

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 172
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetName:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetPhoto:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetTime:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->retweetText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 183
    :cond_e
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->post:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 194
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 207
    :cond_10
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 212
    :cond_11
    if-nez p2, :cond_4

    .line 213
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postLikes:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postComments:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->postReposts:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    const v5, 0x7f080084

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 226
    :cond_12
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->attachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 234
    :cond_13
    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->repostAttachContainer:Lcom/vkontakte/android/ui/FlowLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/FlowLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 260
    .restart local v0    # "lcv":Landroid/view/View;
    :cond_14
    const v5, 0x7f0800e6

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0083

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8
.end method

.method public setOnInfoUpdateListener(Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView;->updListener:Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    .line 451
    return-void
.end method

.method public updateDate()V
    .locals 3

    .prologue
    .line 508
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const v1, 0x7f0800f4

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 513
    :cond_0
    return-void
.end method

.method protected updateInfoLine()V
    .locals 15

    .prologue
    const/high16 v14, 0x41200000    # 10.0f

    const v13, 0x7f0800f7

    const v12, 0x7f0800f9

    const v11, 0x7f0800f8

    const/4 v10, 0x0

    .line 385
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string v2, ""

    .line 388
    .local v2, "infoHtml":Ljava/lang/CharSequence;
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    if-eqz v6, :cond_7

    .line 389
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsItemView;->photosMode:Z

    if-eqz v6, :cond_6

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Friends;->getFromAll(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v6, :cond_5

    const v6, 0x7f070043

    :goto_1
    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 400
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

    .line 401
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 402
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v5

    .line 403
    .local v5, "sp":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x200

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f020133

    :goto_3
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 404
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 405
    new-instance v6, Landroid/text/style/ImageSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v7, 0x1

    invoke-interface {v5, v6, v10, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 406
    const-string v6, " "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 407
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 408
    move-object v2, v0

    .line 411
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

    .line 413
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

    .line 414
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numComments:I

    if-lez v6, :cond_9

    .line 415
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 417
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 423
    :goto_4
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v6, :cond_a

    .line 424
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 426
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 432
    :goto_5
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v6, :cond_b

    .line 433
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 435
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 441
    :goto_6
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 442
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 445
    :cond_4
    const v6, 0x7f0800f4

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->updListener:Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->updListener:Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-interface {v6, p0, v7}, Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;->onInfoUpdate(Lcom/vkontakte/android/NewsItemView;Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 391
    .end local v3    # "padContent":I
    .end local v4    # "padEmpty":I
    :cond_5
    const v6, 0x7f070044

    goto/16 :goto_1

    .line 395
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "infoHtml":Ljava/lang/CharSequence;
    iput-object v2, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .restart local v2    # "infoHtml":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 398
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 403
    .restart local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .restart local v5    # "sp":Landroid/text/Spannable;
    :cond_8
    const v6, 0x7f020136

    goto/16 :goto_3

    .line 419
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

    .line 420
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 421
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 428
    :cond_a
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 430
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 437
    :cond_b
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 439
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6
.end method

.method public updateLikes()V
    .locals 0

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 517
    return-void
.end method
