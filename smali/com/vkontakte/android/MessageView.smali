.class public Lcom/vkontakte/android/MessageView;
.super Landroid/widget/RelativeLayout;
.source "MessageView.java"


# static fields
.field private static final ID_PHOTO:I = -0x63

.field private static final ID_TEXT:I = -0x64


# instance fields
.field private attachClickListener:Landroid/view/View$OnClickListener;

.field private bubble:Landroid/widget/RelativeLayout;

.field private fwdphotos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;>;"
        }
    .end annotation
.end field

.field private msg:Lcom/vkontakte/android/Message;

.field private photoMask:Landroid/widget/ImageView;

.field private photos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private pressTime:J

.field private showPhoto:Z

.field private text:Landroid/widget/TextView;

.field private thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

.field private userphoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_showPhoto"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    .line 43
    new-instance v0, Lcom/vkontakte/android/MessageView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MessageView$1;-><init>(Lcom/vkontakte/android/MessageView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->attachClickListener:Landroid/view/View$OnClickListener;

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MessageView;->pressTime:J

    .line 90
    iput-boolean p2, p0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    .line 91
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageView;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->showFwdMessages()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MessageView;)Lcom/vkontakte/android/Message;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MessageView;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->doShowFwdMessages()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/MessageView;II)V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/MessageView;->openPhotos(II)V

    return-void
.end method

.method private addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V
    .locals 26
    .param p1, "fwd"    # [Lcom/vkontakte/android/Message$FwdMessage;
    .param p2, "view"    # Landroid/view/ViewGroup;
    .param p3, "imgLoader"    # Lcom/vkontakte/android/ImageLoader;

    .prologue
    .line 506
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/4 v2, 0x0

    move/from16 v22, v2

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 586
    return-void

    .line 506
    :cond_0
    aget-object v12, p1, v22

    .line 507
    .local v12, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03001b

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 508
    .local v10, "av":Landroid/view/View;
    const v2, 0x7f06007b

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    const v2, 0x7f06007d

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    const v2, 0x7f06007d

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 512
    const v2, 0x7f06007d

    :try_start_0
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_1
    const v2, 0x7f06007c

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v12, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const v2, 0x7f06007a

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 516
    const v2, 0x7f06007a

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 517
    iget-object v2, v12, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f06007d

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_1
    invoke-static {v10}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 519
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 520
    iget v0, v12, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    move/from16 v19, v0

    .line 521
    .local v19, "uid":I
    new-instance v14, Lcom/vkontakte/android/MessageView$5;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lcom/vkontakte/android/MessageView$5;-><init>(Lcom/vkontakte/android/MessageView;I)V

    .line 530
    .local v14, "listener":Landroid/view/View$OnClickListener;
    const v2, 0x7f06007b

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    const v2, 0x7f06007a

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v2, v12, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v2, :cond_2

    .line 534
    const/4 v15, 0x0

    .line 535
    .local v15, "nPhotos":I
    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v4, :cond_4

    .line 537
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 538
    .local v17, "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v13

    .line 539
    .local v13, "list":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 540
    const/16 v16, 0x0

    .line 542
    .local v16, "nphoto":I
    iget-object v0, v12, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_6

    .line 582
    .end local v13    # "list":I
    .end local v15    # "nPhotos":I
    .end local v16    # "nphoto":I
    .end local v17    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_2
    iget-object v2, v12, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    if-eqz v2, :cond_3

    .line 583
    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    const v2, 0x7f06007e

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v2, v1}, Lcom/vkontakte/android/MessageView;->addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V

    .line 506
    :cond_3
    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto/16 :goto_0

    .line 535
    .restart local v15    # "nPhotos":I
    :cond_4
    aget-object v9, v3, v2

    .local v9, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_5

    add-int/lit8 v15, v15, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 542
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v13    # "list":I
    .restart local v16    # "nphoto":I
    .restart local v17    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_6
    aget-object v9, v24, v21

    .line 543
    .restart local v9    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v11

    .line 544
    .local v11, "aview":Landroid/view/View;
    const v2, 0x7f06007e

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 546
    instance-of v2, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_7

    move-object v2, v9

    .line 547
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v11

    .line 548
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 549
    const/4 v2, 0x1

    if-le v15, v2, :cond_7

    .line 550
    new-instance v18, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v18, "photo":Lcom/vkontakte/android/Photo;
    move-object v2, v9

    .line 551
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object v2, v9

    .line 552
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object v2, v9

    .line 553
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->albumID:I

    move-object v2, v9

    .line 554
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->id:I

    move-object v2, v9

    .line 555
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->date:I

    .line 557
    const-string v2, ""

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 558
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 559
    move/from16 v8, v16

    .line 560
    .local v8, "_i":I
    new-instance v2, Lcom/vkontakte/android/MessageView$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v13}, Lcom/vkontakte/android/MessageView$6;-><init>(Lcom/vkontakte/android/MessageView;II)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    add-int/lit8 v16, v16, 0x1

    .line 569
    .end local v8    # "_i":I
    .end local v18    # "photo":Lcom/vkontakte/android/Photo;
    :cond_7
    instance-of v2, v9, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_8

    .line 570
    const v2, 0x7f060016

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v9

    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 571
    const v2, 0x7f060016

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 574
    :cond_8
    instance-of v2, v9, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_9

    .line 575
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    move-object v2, v9

    check-cast v2, Lcom/vkontakte/android/GeoAttachment;

    iget-wide v2, v2, Lcom/vkontakte/android/GeoAttachment;->lat:D

    check-cast v9, Lcom/vkontakte/android/GeoAttachment;

    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    iget-wide v4, v9, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v6, 0x12c

    const/16 v7, 0xb4

    invoke-static/range {v2 .. v7}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 576
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 542
    :cond_9
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto/16 :goto_3

    .line 513
    .end local v11    # "aview":Landroid/view/View;
    .end local v13    # "list":I
    .end local v14    # "listener":Landroid/view/View$OnClickListener;
    .end local v15    # "nPhotos":I
    .end local v16    # "nphoto":I
    .end local v17    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    .end local v19    # "uid":I
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private doShowFwdMessages()V
    .locals 12

    .prologue
    const v11, 0x7f06005a

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    .line 475
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 476
    .local v2, "ll":Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 477
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 478
    new-instance v3, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 479
    .local v3, "loader":Lcom/vkontakte/android/ImageLoader;
    iget-object v5, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget-object v5, v5, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {p0, v5, v2, v3}, Lcom/vkontakte/android/MessageView;->addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V

    .line 480
    invoke-virtual {v3}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 481
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070007

    invoke-direct {v1, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 482
    .local v1, "dlg":Landroid/app/Dialog;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, "cv":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 484
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030013

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/MessageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 486
    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 487
    .local v4, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v4, v9}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 488
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 489
    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 490
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    const v5, 0x7f060059

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 492
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901cf

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 493
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 494
    const v5, 0x7f06005b

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/MessageView$4;

    invoke-direct {v6, p0, v1}, Lcom/vkontakte/android/MessageView$4;-><init>(Lcom/vkontakte/android/MessageView;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 501
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 502
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020228

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 503
    return-void
.end method

.method private getAttachIcon(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 123
    :pswitch_0
    const v0, 0x7f020114

    :goto_0
    return v0

    .line 111
    :pswitch_1
    const v0, 0x7f02011d

    goto :goto_0

    .line 113
    :pswitch_2
    const v0, 0x7f020111

    goto :goto_0

    .line 115
    :pswitch_3
    const v0, 0x7f020121

    goto :goto_0

    .line 118
    :pswitch_4
    const v0, 0x7f020117

    goto :goto_0

    .line 120
    :pswitch_5
    const v0, 0x7f02011a

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getAttachLabelID(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 139
    :pswitch_0
    const v0, 0x7f0a001c

    :goto_0
    return v0

    .line 130
    :pswitch_1
    const v0, 0x7f0a0019

    goto :goto_0

    .line 132
    :pswitch_2
    const v0, 0x7f0a001a

    goto :goto_0

    .line 134
    :pswitch_3
    const v0, 0x7f0a001b

    goto :goto_0

    .line 136
    :pswitch_4
    const v0, 0x7f0a001d

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    .line 95
    iget-boolean v0, p0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    .line 97
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    .line 101
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 104
    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v4, v0, v4, v1}, Lcom/vkontakte/android/MessageView;->setPadding(IIII)V

    .line 105
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MessageView;->setGravity(I)V

    .line 106
    return-void
.end method

.method private openPhotos(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "list"    # I

    .prologue
    .line 589
    iget-object v3, p0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Lcom/vkontakte/android/Photo;

    .line 590
    .local v2, "ph":[Lcom/vkontakte/android/Photo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 591
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "photo_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 593
    const-string v3, "photo_index"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    const-string v3, "photo"

    aget-object v4, v2, p1

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v3, "hide_bottombar"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 597
    return-void

    .line 590
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setAllSelected(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "sel"    # Z

    .prologue
    .line 432
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 433
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 434
    check-cast v0, Landroid/view/ViewGroup;

    .line 435
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 437
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 435
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/vkontakte/android/MessageView;->setAllSelected(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showFwdMessages()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetFull;

    iget-object v1, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesGetFull;-><init>(I)V

    .line 454
    new-instance v1, Lcom/vkontakte/android/MessageView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MessageView$3;-><init>(Lcom/vkontakte/android/MessageView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetFull;->setCallback(Lcom/vkontakte/android/api/MessagesGetFull$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 467
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->doShowFwdMessages()V

    goto :goto_0
.end method


# virtual methods
.method public deselect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->selected:Z

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 448
    invoke-direct {p0, p0, v1}, Lcom/vkontakte/android/MessageView;->setAllSelected(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setAttPhoto(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 415
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 417
    .local v0, "_iv":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 418
    check-cast v1, Landroid/widget/ImageView;

    .line 419
    .local v1, "iv":Landroid/widget/ImageView;
    if-nez p2, :cond_2

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setAttPhotoEmpty(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 424
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 426
    .local v0, "_iv":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 427
    check-cast v1, Landroid/widget/ImageView;

    .line 428
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setData(ZLjava/lang/CharSequence;[IZZLcom/vkontakte/android/Message;)V
    .locals 33
    .param p1, "my"    # Z
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "attachments"    # [I
    .param p4, "read"    # Z
    .param p5, "failed"    # Z
    .param p6, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 144
    if-nez p2, :cond_0

    .line 406
    :goto_0
    return-void

    .line 145
    :cond_0
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->clear()V

    .line 147
    const/16 v17, -0x64

    .line 148
    .local v17, "lastID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const/16 v16, 0x0

    .line 151
    .local v16, "isClickable":Z
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v22, v0

    .line 152
    .local v22, "s":Landroid/text/Spannable;
    const/16 v26, 0x0

    invoke-interface/range {v22 .. v22}, Landroid/text/Spannable;->length()I

    move-result v27

    const-class v28, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v26, :cond_9

    const/16 v16, 0x1

    .line 154
    .end local v22    # "s":Landroid/text/Spannable;
    :goto_1
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 156
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->removeAllViews()V

    .line 159
    if-eqz p4, :cond_b

    move-object/from16 v0, p6

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->selected:Z

    move/from16 v26, v0

    if-nez v26, :cond_b

    .line 160
    const v26, 0x7f0201c6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setBackgroundResource(I)V

    .line 165
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    if-eqz p1, :cond_c

    const v26, 0x7f02007e

    :goto_4
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "a":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_d

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    if-lez v4, :cond_e

    const/16 v26, 0x0

    :goto_6
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->clear()V

    .line 172
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 175
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v26, 0x42040000    # 33.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    const/high16 v27, 0x42040000    # 33.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v20, "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_f

    const/16 v26, 0xb

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    const/16 v26, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    if-eqz p1, :cond_10

    .line 179
    const/high16 v26, 0x40400000    # 3.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 182
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, -0x63

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setId(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 185
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v19, "mparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0x5

    const/16 v27, -0x63

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    const/16 v26, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 192
    .end local v19    # "mparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v26, 0x0

    aget v26, p3, v26

    const/16 v27, 0x2

    aget v27, p3, v27

    add-int v24, v26, v27

    .line 193
    .local v24, "thumbCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v11, "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 195
    .local v10, "dn":I
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_11

    .line 203
    const/16 v23, 0x0

    .line 205
    .local v23, "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    if-lez v24, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 207
    new-instance v26, Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lcom/vkontakte/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    .line 208
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 209
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v18, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    add-int/lit8 v17, v17, -0x1

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/FlowLayout;->setId(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/FlowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 215
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .end local v18    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v23    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    :cond_4
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    if-eqz v23, :cond_5

    .line 219
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v26, 0x0

    :goto_a
    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    .line 222
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_15

    .line 225
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v26, 0x0

    move/from16 v27, v26

    :goto_c
    move/from16 v0, v27

    move/from16 v1, v29

    if-lt v0, v1, :cond_17

    .line 232
    :cond_5
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_d
    move/from16 v0, v24

    if-lt v14, v0, :cond_19

    .line 311
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 312
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v26, 0x0

    move/from16 v27, v26

    :goto_e
    move/from16 v0, v27

    move/from16 v1, v29

    if-lt v0, v1, :cond_1f

    .line 351
    :cond_6
    const/16 v26, 0x4

    aget v26, p3, v26

    if-lez v26, :cond_7

    .line 352
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 353
    .local v7, "attIcon":Landroid/widget/ImageView;
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MessageView;->getAttachIcon(I)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    .local v15, "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0x3

    move/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    const/16 v26, 0x8

    add-int/lit8 v27, v17, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 357
    const/16 v26, 0x6

    add-int/lit8 v27, v17, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 358
    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 360
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 361
    .local v8, "attText":Landroid/widget/TextView;
    const v26, 0x7f0a001d

    const/16 v27, 0x4

    aget v27, p3, v27

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    invoke-direct/range {v25 .. v27}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 363
    .local v25, "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 364
    const/16 v26, 0x3

    add-int/lit8 v27, v17, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 365
    const/high16 v26, 0x40e00000    # 7.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 367
    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 368
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f080008

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 370
    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setId(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 373
    const-string v26, "fwd"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->attachClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 378
    .end local v7    # "attIcon":Landroid/widget/ImageView;
    .end local v8    # "attText":Landroid/widget/TextView;
    .end local v15    # "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v9, "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2a

    const/high16 v26, 0x42200000    # 40.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    :goto_f
    move/from16 v0, v26

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 380
    if-eqz p1, :cond_2b

    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 381
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2d

    .line 382
    if-eqz p1, :cond_2c

    const/16 v26, 0x0

    :goto_11
    const/16 v27, -0x63

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 386
    :goto_12
    if-eqz p1, :cond_2f

    const/16 v26, 0x5

    :goto_13
    or-int/lit8 v26, v26, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setGravity(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, -0x64

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 392
    if-eqz p5, :cond_8

    .line 393
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 394
    .local v12, "eIcon":Landroid/widget/ImageView;
    const v26, 0x7f020124

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 396
    .local v13, "eiparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0x9

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 397
    const/16 v26, 0xf

    const/16 v27, -0x64

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 398
    const/high16 v26, 0x40400000    # 3.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 399
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 403
    .end local v12    # "eIcon":Landroid/widget/ImageView;
    .end local v13    # "eiparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p6

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->selected:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/MessageView;->setAllSelected(Landroid/view/View;Z)V

    .line 405
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-super {v0, v1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    goto/16 :goto_0

    .line 152
    .end local v4    # "a":I
    .end local v9    # "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "dn":I
    .end local v11    # "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v23    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v24    # "thumbCount":I
    .restart local v22    # "s":Landroid/text/Spannable;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 155
    .end local v22    # "s":Landroid/text/Spannable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_2

    .line 162
    :cond_b
    const v26, -0x271c13

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 165
    :cond_c
    const v26, 0x7f02007b

    goto/16 :goto_4

    .line 167
    .restart local v4    # "a":I
    :cond_d
    aget v5, p3, v26

    .local v5, "aa":I
    add-int/2addr v4, v5

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    .line 168
    .end local v5    # "aa":I
    :cond_e
    const/16 v26, 0x10

    goto/16 :goto_6

    .line 176
    .restart local v20    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    const/16 v26, 0x9

    goto/16 :goto_7

    .line 181
    :cond_10
    const/high16 v26, 0x40400000    # 3.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_8

    .line 195
    .end local v20    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10    # "dn":I
    .restart local v11    # "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "thumbCount":I
    :cond_11
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 196
    .local v22, "s":Ljava/lang/String;
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_12

    .line 197
    add-int/lit8 v24, v24, 0x1

    .line 198
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 219
    .end local v22    # "s":Ljava/lang/String;
    .restart local v23    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    :cond_13
    aget-object v5, v27, v26

    .line 220
    .local v5, "aa":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v29, v0

    if-eqz v29, :cond_14

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_14
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 222
    .end local v5    # "aa":Lcom/vkontakte/android/Attachment;
    :cond_15
    aget-object v5, v27, v26

    .line 223
    .restart local v5    # "aa":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v29, v0

    if-eqz v29, :cond_16

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_16
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_b

    .line 225
    .end local v5    # "aa":Lcom/vkontakte/android/Attachment;
    :cond_17
    aget-object v5, v28, v27

    .line 226
    .restart local v5    # "aa":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_18

    move-object/from16 v26, v5

    check-cast v26, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    move-object/from16 v26, v5

    check-cast v26, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_18

    .line 227
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_18
    add-int/lit8 v26, v27, 0x1

    move/from16 v27, v26

    goto/16 :goto_c

    .line 233
    .end local v5    # "aa":Lcom/vkontakte/android/Attachment;
    .restart local v14    # "i":I
    :cond_19
    new-instance v21, Lcom/vkontakte/android/ui/RoundedImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v21, "pv":Lcom/vkontakte/android/ui/RoundedImageView;
    const/high16 v26, 0x40400000    # 3.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setCornerRadius(I)V

    .line 235
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v26, 0x42f40000    # 122.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    const/high16 v27, 0x42f60000    # 123.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    .restart local v18    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    add-int/lit8 v26, v24, -0x1

    move/from16 v0, v26

    if-eq v14, v0, :cond_1a

    rem-int/lit8 v26, v14, 0x2

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 237
    const/high16 v26, 0x40a00000    # 5.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 238
    :cond_1a
    const/16 v26, 0x3

    rem-int/lit8 v27, v14, 0x2

    add-int v27, v27, v17

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    rem-int/lit8 v26, v14, 0x2

    if-lez v26, :cond_1b

    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    :cond_1b
    sget-object v26, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    const/16 v26, 0x0

    aget v26, p3, v26

    move/from16 v0, v26

    if-lt v14, v0, :cond_1c

    const/16 v26, 0x0

    aget v26, p3, v26

    sub-int v26, v14, v26

    const/16 v27, 0x2

    aget v27, p3, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f020191

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    check-cast v26, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setOverlay(Landroid/graphics/Bitmap;)V

    .line 246
    :cond_1c
    const/16 v26, 0x0

    aget v26, p3, v26

    sub-int v26, v14, v26

    const/16 v27, 0x2

    aget v27, p3, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1d

    .line 247
    const/16 v26, 0x0

    aget v26, p3, v26

    sub-int v26, v14, v26

    const/16 v27, 0x2

    aget v27, p3, v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setTitle(Ljava/lang/String;)V

    .line 249
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 251
    const v26, 0x7f020010

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setBackgroundResource(I)V

    .line 253
    const/high16 v26, 0x42ec0000    # 118.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setMinimumWidth(I)V

    .line 254
    const/high16 v26, 0x42ee0000    # 119.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setMinimumHeight(I)V

    .line 255
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v14, :cond_1e

    .line 256
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 257
    new-instance v26, Lcom/vkontakte/android/MessageView$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/MessageView$2;-><init>(Lcom/vkontakte/android/MessageView;Lcom/vkontakte/android/Message;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    .line 232
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_d

    .line 312
    .end local v18    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "pv":Lcom/vkontakte/android/ui/RoundedImageView;
    :cond_1f
    aget-object v6, v28, v27

    .line 313
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v6, :cond_20

    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v26, v0

    if-nez v26, :cond_20

    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v26, v0

    if-nez v26, :cond_20

    .line 314
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_21

    move-object/from16 v26, v6

    check-cast v26, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_21

    move-object/from16 v26, v6

    check-cast v26, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_21

    .line 312
    :cond_20
    :goto_14
    add-int/lit8 v26, v27, 0x1

    move/from16 v27, v26

    goto/16 :goto_e

    .line 315
    :cond_21
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 316
    .restart local v7    # "attIcon":Landroid/widget/ImageView;
    instance-of v0, v6, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_22

    const v26, 0x7f020111

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    :cond_22
    instance-of v0, v6, Lcom/vkontakte/android/PostAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_23

    const v26, 0x7f020117

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    :cond_23
    instance-of v0, v6, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_24

    const v26, 0x7f02011a

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    :cond_24
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_25

    const v26, 0x7f020114

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    :cond_25
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v30, -0x2

    move/from16 v0, v26

    move/from16 v1, v30

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 322
    .restart local v15    # "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0x3

    move/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 323
    const/16 v26, 0x8

    add-int/lit8 v30, v17, -0x2

    move/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    const/16 v26, 0x6

    add-int/lit8 v30, v17, -0x2

    move/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 325
    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 327
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 328
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 329
    .restart local v8    # "attText":Landroid/widget/TextView;
    instance-of v0, v6, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_26

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v26, v6

    check-cast v26, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " - "

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v26, v6

    check-cast v26, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_26
    instance-of v0, v6, Lcom/vkontakte/android/PostAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_27

    const v26, 0x7f090198

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 331
    :cond_27
    instance-of v0, v6, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_28

    const v26, 0x7f090109

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 332
    :cond_28
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_29

    move-object/from16 v26, v6

    check-cast v26, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_29
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v30, -0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 334
    .restart local v25    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 335
    const/16 v26, 0x3

    add-int/lit8 v30, v17, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 336
    const/high16 v26, 0x40e00000    # 7.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 338
    const/16 v26, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 339
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v30, 0x7f080008

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 341
    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setId(I)V

    .line 342
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->attachClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 379
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v7    # "attIcon":Landroid/widget/ImageView;
    .end local v8    # "attText":Landroid/widget/TextView;
    .end local v15    # "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2a
    const/16 v26, 0x0

    goto/16 :goto_f

    .line 380
    :cond_2b
    const/high16 v26, 0x42200000    # 40.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    goto/16 :goto_10

    .line 382
    :cond_2c
    const/16 v26, 0x1

    goto/16 :goto_11

    .line 384
    :cond_2d
    if-eqz p1, :cond_2e

    const/16 v26, 0xb

    :goto_15
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_12

    :cond_2e
    const/16 v26, 0x9

    goto :goto_15

    .line 386
    :cond_2f
    const/16 v26, 0x3

    goto/16 :goto_13

    .line 153
    .end local v4    # "a":I
    .end local v9    # "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "dn":I
    .end local v11    # "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v23    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v24    # "thumbCount":I
    :catch_0
    move-exception v26

    goto/16 :goto_1
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 409
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "p"    # Z

    .prologue
    .line 440
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/MessageView;->pressTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/MessageView;->pressTime:J

    .line 442
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    goto :goto_0
.end method
