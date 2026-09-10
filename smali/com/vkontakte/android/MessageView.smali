.class public Lcom/vkontakte/android/MessageView;
.super Landroid/widget/RelativeLayout;
.source "MessageView.java"


# static fields
.field private static final ID_PHOTO:I = 0x89543f

.field private static final ID_TEXT:I = 0x895440


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

.field private time:Landroid/widget/TextView;

.field private userphoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_showPhoto"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    .line 45
    new-instance v0, Lcom/vkontakte/android/MessageView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MessageView$1;-><init>(Lcom/vkontakte/android/MessageView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->attachClickListener:Landroid/view/View$OnClickListener;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MessageView;->pressTime:J

    .line 92
    iput-boolean p2, p0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    .line 93
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageView;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->showFwdMessages()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MessageView;)Lcom/vkontakte/android/Message;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MessageView;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->doShowFwdMessages()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/MessageView;II)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/MessageView;->openPhotos(II)V

    return-void
.end method

.method private addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V
    .locals 26
    .param p1, "fwd"    # [Lcom/vkontakte/android/Message$FwdMessage;
    .param p2, "view"    # Landroid/view/ViewGroup;
    .param p3, "imgLoader"    # Lcom/vkontakte/android/ImageLoader;

    .prologue
    .line 558
    if-nez p1, :cond_1

    .line 640
    :cond_0
    return-void

    .line 559
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/4 v2, 0x0

    move/from16 v22, v2

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v12, p1, v22

    .line 560
    .local v12, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 561
    .local v10, "av":Landroid/view/View;
    const v2, 0x7f060085

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const v2, 0x7f060087

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

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    const v2, 0x7f060087

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 564
    const v2, 0x7f060087

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 566
    const v2, 0x7f060087

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

    .line 568
    :goto_1
    const v2, 0x7f060086

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v12, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    const v2, 0x7f060084

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 570
    const v2, 0x7f060084

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 571
    iget-object v2, v12, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f060087

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :cond_2
    invoke-static {v10}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 573
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 574
    iget v0, v12, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    move/from16 v19, v0

    .line 575
    .local v19, "uid":I
    new-instance v14, Lcom/vkontakte/android/MessageView$6;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lcom/vkontakte/android/MessageView$6;-><init>(Lcom/vkontakte/android/MessageView;I)V

    .line 584
    .local v14, "listener":Landroid/view/View$OnClickListener;
    const v2, 0x7f060085

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    const v2, 0x7f060084

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v2, v12, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v2, :cond_3

    .line 588
    const/4 v15, 0x0

    .line 589
    .local v15, "nPhotos":I
    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v4, :cond_5

    .line 591
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 592
    .local v17, "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v13

    .line 593
    .local v13, "list":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 594
    const/16 v16, 0x0

    .line 596
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

    if-lt v0, v1, :cond_7

    .line 636
    .end local v13    # "list":I
    .end local v15    # "nPhotos":I
    .end local v16    # "nphoto":I
    .end local v17    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_3
    iget-object v2, v12, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    if-eqz v2, :cond_4

    .line 637
    iget-object v3, v12, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    const v2, 0x7f060088

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v2, v1}, Lcom/vkontakte/android/MessageView;->addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V

    .line 559
    :cond_4
    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto/16 :goto_0

    .line 589
    .restart local v15    # "nPhotos":I
    :cond_5
    aget-object v9, v3, v2

    .local v9, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_6

    add-int/lit8 v15, v15, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 596
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v13    # "list":I
    .restart local v16    # "nphoto":I
    .restart local v17    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_7
    aget-object v9, v24, v21

    .line 597
    .restart local v9    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v11

    .line 598
    .local v11, "aview":Landroid/view/View;
    const v2, 0x7f060088

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 600
    instance-of v2, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_8

    move-object v2, v9

    .line 601
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v11

    .line 602
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 603
    const/4 v2, 0x1

    if-le v15, v2, :cond_8

    .line 604
    new-instance v18, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v18, "photo":Lcom/vkontakte/android/Photo;
    move-object v2, v9

    .line 605
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object v2, v9

    .line 606
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object v2, v9

    .line 607
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->albumID:I

    move-object v2, v9

    .line 608
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->id:I

    move-object v2, v9

    .line 609
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/Photo;->date:I

    .line 611
    const-string v2, ""

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 612
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 613
    move/from16 v8, v16

    .line 614
    .local v8, "_i":I
    new-instance v2, Lcom/vkontakte/android/MessageView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v13}, Lcom/vkontakte/android/MessageView$7;-><init>(Lcom/vkontakte/android/MessageView;II)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    add-int/lit8 v16, v16, 0x1

    .line 623
    .end local v8    # "_i":I
    .end local v18    # "photo":Lcom/vkontakte/android/Photo;
    :cond_8
    instance-of v2, v9, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_9

    .line 624
    const v2, 0x7f060018

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v9

    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 625
    const v2, 0x7f060018

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 628
    :cond_9
    instance-of v2, v9, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_a

    .line 629
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

    .line 630
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 596
    :cond_a
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto/16 :goto_3

    .line 567
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
    const v11, 0x7f060063

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    .line 527
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 528
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

    .line 529
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 530
    new-instance v3, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 531
    .local v3, "loader":Lcom/vkontakte/android/ImageLoader;
    iget-object v5, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget-object v5, v5, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {p0, v5, v2, v3}, Lcom/vkontakte/android/MessageView;->addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V

    .line 532
    invoke-virtual {v3}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 533
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070007

    invoke-direct {v1, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 534
    .local v1, "dlg":Landroid/app/Dialog;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, "cv":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 536
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030017

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/MessageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 538
    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 539
    .local v4, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v4, v9}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 540
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 541
    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 542
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 543
    const v5, 0x7f060062

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 544
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901d0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 545
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 546
    const v5, 0x7f060064

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/MessageView$5;

    invoke-direct {v6, p0, v1}, Lcom/vkontakte/android/MessageView$5;-><init>(Lcom/vkontakte/android/MessageView;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 553
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 554
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020247

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 555
    return-void
.end method

.method private getAttachIcon(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 129
    :pswitch_0
    const v0, 0x7f02012b

    :goto_0
    return v0

    .line 117
    :pswitch_1
    const v0, 0x7f020134

    goto :goto_0

    .line 119
    :pswitch_2
    const v0, 0x7f020128

    goto :goto_0

    .line 121
    :pswitch_3
    const v0, 0x7f020138

    goto :goto_0

    .line 124
    :pswitch_4
    const v0, 0x7f02012e

    goto :goto_0

    .line 126
    :pswitch_5
    const v0, 0x7f020131

    goto :goto_0

    .line 115
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
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 145
    :pswitch_0
    const v0, 0x7f0a001c

    :goto_0
    return v0

    .line 136
    :pswitch_1
    const v0, 0x7f0a0019

    goto :goto_0

    .line 138
    :pswitch_2
    const v0, 0x7f0a001a

    goto :goto_0

    .line 140
    :pswitch_3
    const v0, 0x7f0a001b

    goto :goto_0

    .line 142
    :pswitch_4
    const v0, 0x7f0a001d

    goto :goto_0

    .line 134
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
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    .line 97
    iget-boolean v0, p0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    .line 99
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    .line 103
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    const v1, 0x895440

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v4, v0, v4, v1}, Lcom/vkontakte/android/MessageView;->setPadding(IIII)V

    .line 108
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MessageView;->setGravity(I)V

    .line 109
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MessageView;->time:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->time:Landroid/widget/TextView;

    const v1, -0x7f796957    # -1.2360003E-38f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->time:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    return-void
.end method

.method private openPhotos(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "list"    # I

    .prologue
    .line 643
    iget-object v3, p0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Lcom/vkontakte/android/Photo;

    .line 644
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

    .line 645
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 646
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "photo_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 647
    const-string v3, "photo_index"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string v3, "photo"

    aget-object v4, v2, p1

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v3, "hide_bottombar"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 651
    return-void

    .line 644
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
    .line 481
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 482
    if-nez p2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 483
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 484
    check-cast v0, Landroid/view/ViewGroup;

    .line 485
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 487
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 485
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/vkontakte/android/MessageView;->setAllSelected(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showFwdMessages()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetFull;

    iget-object v1, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesGetFull;-><init>(I)V

    .line 504
    new-instance v1, Lcom/vkontakte/android/MessageView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MessageView$4;-><init>(Lcom/vkontakte/android/MessageView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetFull;->setCallback(Lcom/vkontakte/android/api/MessagesGetFull$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 519
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 520
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/MessageView;->doShowFwdMessages()V

    goto :goto_0
.end method


# virtual methods
.method public deselect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 496
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->selected:Z

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 498
    invoke-direct {p0, p0, v1}, Lcom/vkontakte/android/MessageView;->setAllSelected(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setAttPhoto(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 464
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 466
    .local v0, "_iv":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 467
    check-cast v1, Landroid/widget/ImageView;

    .line 468
    .local v1, "iv":Landroid/widget/ImageView;
    if-nez p2, :cond_2

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setAttPhotoEmpty(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 473
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 475
    .local v0, "_iv":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 476
    check-cast v1, Landroid/widget/ImageView;

    .line 477
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setData(ZLjava/lang/CharSequence;[IZZLcom/vkontakte/android/Message;)V
    .locals 37
    .param p1, "my"    # Z
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "attachments"    # [I
    .param p4, "read"    # Z
    .param p5, "failed"    # Z
    .param p6, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 150
    if-nez p2, :cond_0

    .line 455
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/MessageView;->msg:Lcom/vkontakte/android/Message;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->fwdphotos:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->clear()V

    .line 153
    const v19, 0x895440

    .line 154
    .local v19, "lastID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/16 v18, 0x0

    .line 157
    .local v18, "isClickable":Z
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v25, v0

    .line 158
    .local v25, "s":Landroid/text/Spannable;
    const/16 v30, 0x0

    invoke-interface/range {v25 .. v25}, Landroid/text/Spannable;->length()I

    move-result v31

    const-class v32, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v30, :cond_9

    const/16 v18, 0x1

    .line 160
    .end local v25    # "s":Landroid/text/Spannable;
    :goto_1
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 162
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->removeAllViews()V

    .line 165
    if-eqz p4, :cond_b

    move-object/from16 v0, p6

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->selected:Z

    move/from16 v30, v0

    if-nez v30, :cond_b

    .line 166
    const v30, 0x7f0201e7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setBackgroundResource(I)V

    .line 171
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v31, v0

    if-eqz p1, :cond_c

    const v30, 0x7f020079

    :goto_4
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, "a":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v31, v0

    const/16 v30, 0x0

    :goto_5
    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v31, v0

    if-lez v5, :cond_e

    const/16 v30, 0x0

    :goto_6
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->clear()V

    .line 178
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 182
    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v30, 0x42040000    # 33.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    const/high16 v31, 0x42040000    # 33.0f

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v31

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v23, "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_f

    const/16 v30, 0xb

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    const/16 v30, 0xc

    const v31, 0x895440

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    if-eqz p1, :cond_10

    .line 187
    const/high16 v30, 0x40400000    # 3.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 190
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const v31, 0x89543f

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setId(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 193
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v22, "mparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x5

    const v31, 0x89543f

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    const/16 v30, 0xc

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photoMask:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    new-instance v31, Lcom/vkontakte/android/MessageView$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/MessageView$2;-><init>(Lcom/vkontakte/android/MessageView;Lcom/vkontakte/android/Message;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .end local v22    # "mparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v30, 0x0

    aget v30, p3, v30

    const/16 v31, 0x2

    aget v31, p3, v31

    add-int v30, v30, v31

    const/16 v31, 0x5

    aget v31, p3, v31

    add-int v27, v30, v31

    .line 209
    .local v27, "thumbCount":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v13, "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 211
    .local v12, "dn":I
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-nez v30, :cond_11

    .line 219
    const/16 v26, 0x0

    .line 221
    .local v26, "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    if-lez v27, :cond_4

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v30, v0

    if-nez v30, :cond_3

    .line 223
    new-instance v30, Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/vkontakte/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 225
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v20, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 227
    add-int/lit8 v19, v19, -0x1

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/FlowLayout;->setId(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/FlowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 231
    new-instance v26, Ljava/util/ArrayList;

    .end local v26    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .end local v20    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v26    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    :cond_4
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    if-eqz v26, :cond_5

    .line 235
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v30, 0x0

    :goto_a
    move/from16 v0, v30

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    .line 238
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v30, 0x0

    :goto_b
    move/from16 v0, v30

    move/from16 v1, v32

    if-lt v0, v1, :cond_15

    .line 241
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    const/16 v30, 0x0

    move/from16 v31, v30

    :goto_c
    move/from16 v0, v31

    move/from16 v1, v33

    if-lt v0, v1, :cond_17

    .line 246
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v30, 0x0

    :goto_d
    move/from16 v0, v30

    move/from16 v1, v32

    if-lt v0, v1, :cond_19

    .line 251
    :cond_5
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_e
    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_1b

    .line 342
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 343
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    const/16 v30, 0x0

    move/from16 v31, v30

    :goto_f
    move/from16 v0, v31

    move/from16 v1, v33

    if-lt v0, v1, :cond_23

    .line 384
    :cond_6
    const/16 v30, 0x4

    aget v30, p3, v30

    if-lez v30, :cond_7

    .line 385
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 386
    .local v8, "attIcon":Landroid/widget/ImageView;
    const/16 v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MessageView;->getAttachIcon(I)I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 388
    .local v17, "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 389
    const/16 v30, 0x8

    add-int/lit8 v31, v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 390
    const/16 v30, 0x6

    add-int/lit8 v31, v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 391
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 393
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 394
    .local v9, "attText":Landroid/widget/TextView;
    const v30, 0x7f0a001d

    const/16 v31, 0x4

    aget v31, p3, v31

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    new-instance v29, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    invoke-direct/range {v29 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 396
    .local v29, "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 397
    const/16 v30, 0x3

    add-int/lit8 v31, v19, 0x1

    invoke-virtual/range {v29 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 398
    const/high16 v30, 0x40e00000    # 7.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 400
    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 401
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080008

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 403
    invoke-virtual {v9}, Landroid/widget/TextView;->setSingleLine()V

    .line 404
    const/16 v30, 0x0

    const/high16 v31, 0x3fa00000    # 1.25f

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 405
    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setId(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 408
    const-string v30, "fwd"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->attachClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 413
    .end local v8    # "attIcon":Landroid/widget/ImageView;
    .end local v9    # "attText":Landroid/widget/TextView;
    .end local v17    # "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v11, "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2e

    const/high16 v30, 0x42200000    # 40.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    :goto_10
    move/from16 v0, v30

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 415
    if-eqz p1, :cond_2f

    const/16 v30, 0x0

    :goto_11
    move/from16 v0, v30

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/MessageView;->showPhoto:Z

    move/from16 v30, v0

    if-eqz v30, :cond_31

    .line 417
    if-eqz p1, :cond_30

    const/16 v30, 0x0

    :goto_12
    const v31, 0x89543f

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 421
    :goto_13
    if-eqz p1, :cond_33

    const/16 v30, 0x5

    :goto_14
    or-int/lit8 v30, v30, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setGravity(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    const v31, 0x895440

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->time:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/Global;->time(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 429
    .local v28, "tlp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_34

    const/16 v30, 0x0

    :goto_15
    const v31, 0x895440

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 430
    if-eqz p1, :cond_35

    const/high16 v30, -0x3df40000    # -35.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    :goto_16
    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 431
    if-eqz p1, :cond_36

    const/16 v30, 0x0

    :goto_17
    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 432
    const/16 v30, 0x8

    const v31, 0x895440

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->time:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->time:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 437
    if-eqz p5, :cond_8

    .line 438
    new-instance v14, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 439
    .local v14, "eIcon":Landroid/widget/ImageView;
    const v30, 0x7f02013b

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 442
    .local v15, "eiparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0xf

    const v31, 0x895440

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 443
    const/16 v30, 0x0

    const v31, 0x895440

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 444
    const/high16 v30, -0x3df40000    # -35.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move/from16 v0, v30

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 445
    const/high16 v30, 0x40400000    # 3.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move/from16 v0, v30

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 446
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/MessageView;->addView(Landroid/view/View;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->time:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    .end local v14    # "eIcon":Landroid/widget/ImageView;
    .end local v15    # "eiparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p6

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->selected:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/MessageView;->setAllSelected(Landroid/view/View;Z)V

    .line 453
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-super {v0, v1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->requestLayout()V

    goto/16 :goto_0

    .line 158
    .end local v5    # "a":I
    .end local v11    # "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "dn":I
    .end local v13    # "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "i":I
    .end local v26    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v27    # "thumbCount":I
    .end local v28    # "tlp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v25    # "s":Landroid/text/Spannable;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 161
    .end local v25    # "s":Landroid/text/Spannable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->text:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_2

    .line 168
    :cond_b
    const v30, -0x271c13

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 171
    :cond_c
    const v30, 0x7f020076

    goto/16 :goto_4

    .line 173
    .restart local v5    # "a":I
    :cond_d
    aget v6, p3, v30

    .local v6, "aa":I
    add-int/2addr v5, v6

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 174
    .end local v6    # "aa":I
    :cond_e
    const/16 v30, 0x15

    goto/16 :goto_6

    .line 183
    .restart local v23    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    const/16 v30, 0x9

    goto/16 :goto_7

    .line 189
    :cond_10
    const/high16 v30, 0x40400000    # 3.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_8

    .line 211
    .end local v23    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "dn":I
    .restart local v13    # "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "thumbCount":I
    :cond_11
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 212
    .local v25, "s":Ljava/lang/String;
    if-eqz v25, :cond_12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_12

    .line 213
    add-int/lit8 v27, v27, 0x1

    .line 214
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    .line 235
    .end local v25    # "s":Ljava/lang/String;
    .restart local v26    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    :cond_13
    aget-object v6, v31, v30

    .line 236
    .local v6, "aa":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_14

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_14
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_a

    .line 238
    .end local v6    # "aa":Lcom/vkontakte/android/Attachment;
    :cond_15
    aget-object v6, v31, v30

    .line 239
    .restart local v6    # "aa":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_16

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_16
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_b

    .line 241
    .end local v6    # "aa":Lcom/vkontakte/android/Attachment;
    :cond_17
    aget-object v6, v32, v31

    .line 242
    .restart local v6    # "aa":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_18

    move-object/from16 v30, v6

    check-cast v30, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_18

    move-object/from16 v30, v6

    check-cast v30, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_18

    .line 243
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_18
    add-int/lit8 v30, v31, 0x1

    move/from16 v31, v30

    goto/16 :goto_c

    .line 246
    .end local v6    # "aa":Lcom/vkontakte/android/Attachment;
    :cond_19
    aget-object v6, v31, v30

    .line 247
    .restart local v6    # "aa":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_1a

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1a
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_d

    .line 252
    .end local v6    # "aa":Lcom/vkontakte/android/Attachment;
    .restart local v16    # "i":I
    :cond_1b
    new-instance v24, Lcom/vkontakte/android/ui/RoundedImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v24, "pv":Lcom/vkontakte/android/ui/RoundedImageView;
    const/high16 v30, 0x40400000    # 3.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setCornerRadius(I)V

    .line 254
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v30, 0x42f40000    # 122.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    const/high16 v31, 0x42f60000    # 123.0f

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v31

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    .restart local v20    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    add-int/lit8 v30, v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_1c

    rem-int/lit8 v30, v16, 0x2

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 256
    const/high16 v30, 0x40a00000    # 5.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 257
    :cond_1c
    const/16 v30, 0x3

    rem-int/lit8 v31, v16, 0x2

    add-int v31, v31, v19

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 258
    rem-int/lit8 v30, v16, 0x2

    if-lez v30, :cond_1d

    const/16 v30, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 261
    :cond_1d
    sget-object v30, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 262
    const/16 v30, 0x0

    aget v30, p3, v30

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_1e

    const/16 v30, 0x0

    aget v30, p3, v30

    sub-int v30, v16, v30

    const/16 v31, 0x2

    aget v31, p3, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0201ad

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    check-cast v30, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setOverlay(Landroid/graphics/Bitmap;)V

    .line 265
    :cond_1e
    const/16 v30, 0x0

    aget v30, p3, v30

    sub-int v30, v16, v30

    const/16 v31, 0x2

    aget v31, p3, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1f

    const/16 v30, 0x5

    aget v30, p3, v30

    if-lez v30, :cond_22

    add-int/lit8 v30, v27, -0x1

    :goto_18
    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_1f

    .line 266
    const/16 v30, 0x0

    aget v30, p3, v30

    sub-int v30, v16, v30

    const/16 v31, 0x2

    aget v31, p3, v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setTitle(Ljava/lang/String;)V

    .line 268
    :cond_1f
    const/16 v30, 0x5

    aget v30, p3, v30

    if-lez v30, :cond_20

    add-int/lit8 v30, v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_20

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0201db

    invoke-static/range {v30 .. v31}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 270
    .local v21, "marker":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    mul-int/lit8 v31, v31, 0x2

    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v30 .. v32}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 271
    .local v10, "bmp":Landroid/graphics/Bitmap;
    new-instance v30, Landroid/graphics/Canvas;

    move-object/from16 v0, v30

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 272
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/ui/RoundedImageView;->setOverlay(Landroid/graphics/Bitmap;)V

    .line 274
    .end local v10    # "bmp":Landroid/graphics/Bitmap;
    .end local v21    # "marker":Landroid/graphics/Bitmap;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->photos:Ljava/util/Vector;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 276
    const v30, 0x7f020010

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setBackgroundResource(I)V

    .line 278
    const/high16 v30, 0x42ec0000    # 118.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setMinimumWidth(I)V

    .line 279
    const/high16 v30, 0x42ee0000    # 119.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setMinimumHeight(I)V

    .line 280
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v16

    if-le v0, v1, :cond_21

    .line 281
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 282
    new-instance v30, Lcom/vkontakte/android/MessageView$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/MessageView$3;-><init>(Lcom/vkontakte/android/MessageView;Lcom/vkontakte/android/Message;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->thumbsWrap:Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    .line 251
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    :cond_22
    move/from16 v30, v27

    .line 265
    goto/16 :goto_18

    .line 343
    .end local v20    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v24    # "pv":Lcom/vkontakte/android/ui/RoundedImageView;
    :cond_23
    aget-object v7, v32, v31

    .line 344
    .local v7, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v7, :cond_24

    instance-of v0, v7, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v30, v0

    if-nez v30, :cond_24

    instance-of v0, v7, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v30, v0

    if-nez v30, :cond_24

    instance-of v0, v7, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v30, v0

    if-nez v30, :cond_24

    .line 345
    instance-of v0, v7, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_25

    move-object/from16 v30, v7

    check-cast v30, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_25

    move-object/from16 v30, v7

    check-cast v30, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_25

    .line 343
    :cond_24
    :goto_19
    add-int/lit8 v30, v31, 0x1

    move/from16 v31, v30

    goto/16 :goto_f

    .line 346
    :cond_25
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 347
    .restart local v8    # "attIcon":Landroid/widget/ImageView;
    instance-of v0, v7, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_26

    const v30, 0x7f020128

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    :cond_26
    instance-of v0, v7, Lcom/vkontakte/android/PostAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_27

    const v30, 0x7f02012e

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    :cond_27
    instance-of v0, v7, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_28

    const v30, 0x7f020131

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    :cond_28
    instance-of v0, v7, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_29

    const v30, 0x7f02012b

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    :cond_29
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v34, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    .restart local v17    # "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 354
    const/16 v30, 0x8

    add-int/lit8 v34, v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 355
    const/16 v30, 0x6

    add-int/lit8 v34, v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 358
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 359
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 360
    .restart local v9    # "attText":Landroid/widget/TextView;
    instance-of v0, v7, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_2a

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v30, v7

    check-cast v30, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " - "

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v30, v7

    check-cast v30, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_2a
    instance-of v0, v7, Lcom/vkontakte/android/PostAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_2b

    const v30, 0x7f090199

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 362
    :cond_2b
    instance-of v0, v7, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_2c

    const v30, 0x7f09010a

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 363
    :cond_2c
    instance-of v0, v7, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v30, v0

    if-eqz v30, :cond_2d

    move-object/from16 v30, v7

    check-cast v30, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_2d
    new-instance v29, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v34, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .restart local v29    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    const/16 v30, 0x3

    add-int/lit8 v34, v19, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 367
    const/high16 v30, 0x40e00000    # 7.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 369
    const/16 v30, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 370
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v34, 0x7f080008

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 372
    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setId(I)V

    .line 373
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->bubble:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageView;->attachClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 378
    invoke-virtual {v9}, Landroid/widget/TextView;->setSingleLine()V

    .line 379
    const/16 v30, 0x0

    const/high16 v34, 0x3fa00000    # 1.25f

    move/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_19

    .line 414
    .end local v7    # "att":Lcom/vkontakte/android/Attachment;
    .end local v8    # "attIcon":Landroid/widget/ImageView;
    .end local v9    # "attText":Landroid/widget/TextView;
    .end local v17    # "iparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11    # "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2e
    const/16 v30, 0x0

    goto/16 :goto_10

    .line 415
    :cond_2f
    const/high16 v30, 0x42200000    # 40.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    goto/16 :goto_11

    .line 417
    :cond_30
    const/16 v30, 0x1

    goto/16 :goto_12

    .line 419
    :cond_31
    if-eqz p1, :cond_32

    const/16 v30, 0xb

    :goto_1a
    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_13

    :cond_32
    const/16 v30, 0x9

    goto :goto_1a

    .line 421
    :cond_33
    const/16 v30, 0x3

    goto/16 :goto_14

    .line 429
    .restart local v28    # "tlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_34
    const/16 v30, 0x1

    goto/16 :goto_15

    .line 430
    :cond_35
    const/16 v30, 0x0

    goto/16 :goto_16

    .line 431
    :cond_36
    const/high16 v30, -0x3df40000    # -35.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    goto/16 :goto_17

    .line 159
    .end local v5    # "a":I
    .end local v11    # "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "dn":I
    .end local v13    # "dtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "i":I
    .end local v26    # "thumbAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v27    # "thumbCount":I
    .end local v28    # "tlp":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v30

    goto/16 :goto_1
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 458
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/MessageView;->userphoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "p"    # Z

    .prologue
    .line 490
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

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/MessageView;->pressTime:J

    .line 492
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    goto :goto_0
.end method
