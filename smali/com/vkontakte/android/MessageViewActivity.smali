.class public Lcom/vkontakte/android/MessageViewActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/MessageViewActivity$URLSpanNoUnderline;
    }
.end annotation


# static fields
.field public static final RESULT_FORWARD:I = 0xc

.field public static final RESULT_RESEND:I = 0xb

.field private static final SEL_FRIEND_REQ:I = 0x64


# instance fields
.field isOut:Z

.field loadFull:Z

.field msg:Lcom/vkontakte/android/Message;

.field msgID:I

.field private photos:Ljava/util/Vector;
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

.field private progress:Landroid/widget/ProgressBar;

.field senderID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MessageViewActivity;->loadFull:Z

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageViewActivity;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MessageViewActivity;->displayMessageData(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MessageViewActivity;II)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/MessageViewActivity;->openPhotos(II)V

    return-void
.end method

.method private addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V
    .locals 26
    .param p1, "fwd"    # [Lcom/vkontakte/android/Message$FwdMessage;
    .param p2, "view"    # Landroid/view/ViewGroup;
    .param p3, "imgLoader"    # Lcom/vkontakte/android/ImageLoader;

    .prologue
    .line 286
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v17, 0x0

    move/from16 v19, v17

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 356
    return-void

    .line 286
    :cond_0
    aget-object v9, p1, v19

    .line 287
    .local v9, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    const v17, 0x7f030020

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 288
    .local v7, "av":Landroid/view/View;
    const v17, 0x7f060085

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const v17, 0x7f060087

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    check-cast v18, Landroid/text/Spannable;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MessageViewActivity;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const v17, 0x7f060087

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v21, 0x7f080008

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 292
    const v17, 0x7f060087

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MessageViewActivity;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_1
    const v17, 0x7f060086

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    iget v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v17, 0x7f060084

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    const v17, 0x7f060084

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 297
    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    const v17, 0x7f060087

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_1
    invoke-static {v7}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 299
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    iget v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    move/from16 v16, v0

    .line 301
    .local v16, "uid":I
    new-instance v11, Lcom/vkontakte/android/MessageViewActivity$6;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v11, v0, v1}, Lcom/vkontakte/android/MessageViewActivity$6;-><init>(Lcom/vkontakte/android/MessageViewActivity;I)V

    .line 310
    .local v11, "listener":Landroid/view/View$OnClickListener;
    const v17, 0x7f060085

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v17, 0x7f060084

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 314
    const/4 v12, 0x0

    .line 315
    .local v12, "nPhotos":I
    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 317
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 318
    .local v14, "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v10

    .line 319
    .local v10, "list":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 320
    const/4 v13, 0x0

    .line 322
    .local v13, "nphoto":I
    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 352
    .end local v10    # "list":I
    .end local v12    # "nPhotos":I
    .end local v13    # "nphoto":I
    .end local v14    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_2
    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 353
    iget-object v0, v9, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    move-object/from16 v18, v0

    const v17, 0x7f060088

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/MessageViewActivity;->addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V

    .line 286
    :cond_3
    add-int/lit8 v17, v19, 0x1

    move/from16 v19, v17

    goto/16 :goto_0

    .line 315
    .restart local v12    # "nPhotos":I
    :cond_4
    aget-object v6, v18, v17

    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    add-int/lit8 v12, v12, 0x1

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 322
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v10    # "list":I
    .restart local v13    # "nphoto":I
    .restart local v14    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_6
    aget-object v6, v21, v18

    .line 323
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v8

    .line 324
    .local v8, "aview":Landroid/view/View;
    const v17, 0x7f060088

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 326
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v17, v6

    .line 327
    check-cast v17, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v17, v8

    .line 328
    check-cast v17, Landroid/widget/ImageView;

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v23

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 329
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v12, v0, :cond_7

    .line 330
    new-instance v15, Lcom/vkontakte/android/Photo;

    invoke-direct {v15}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v15, "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v17, v6

    .line 331
    check-cast v17, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object/from16 v17, v6

    .line 332
    check-cast v17, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v6

    .line 333
    check-cast v17, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/Photo;->albumID:I

    move-object/from16 v17, v6

    .line 334
    check-cast v17, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/Photo;->id:I

    .line 335
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget v0, v6, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/Photo;->date:I

    .line 337
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 338
    invoke-virtual {v14, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 339
    move v5, v13

    .line 340
    .local v5, "_i":I
    new-instance v17, Lcom/vkontakte/android/MessageViewActivity$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v10}, Lcom/vkontakte/android/MessageViewActivity$7;-><init>(Lcom/vkontakte/android/MessageViewActivity;II)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    add-int/lit8 v13, v13, 0x1

    .line 322
    .end local v5    # "_i":I
    .end local v15    # "photo":Lcom/vkontakte/android/Photo;
    :cond_7
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto/16 :goto_3

    .line 293
    .end local v8    # "aview":Landroid/view/View;
    .end local v10    # "list":I
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    .end local v12    # "nPhotos":I
    .end local v13    # "nphoto":I
    .end local v14    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    .end local v16    # "uid":I
    :catch_0
    move-exception v17

    goto/16 :goto_1
.end method

.method private displayMessageData(Lcom/vkontakte/android/Message;)V
    .locals 21
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 191
    const v2, 0x7f0600fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 192
    const v2, 0x7f060157

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/MessageViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 193
    new-instance v11, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v11}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 195
    .local v11, "imgLoader":Lcom/vkontakte/android/ImageLoader;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/MessageViewActivity;->loadFull:Z

    if-eqz v2, :cond_0

    .line 196
    const v2, 0x7f0600fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const v2, 0x7f0600fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 198
    const v2, 0x7f0600f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v2, 0x7f0600f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v2, :cond_1

    .line 203
    const/4 v14, 0x0

    .line 205
    .local v14, "nphoto":I
    const/4 v13, 0x0

    .line 206
    .local v13, "nPhotos":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_3

    .line 208
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 209
    .local v15, "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v12

    .line 210
    .local v12, "list":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 211
    const v2, 0x7f0600fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 213
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 253
    .end local v12    # "list":I
    .end local v13    # "nPhotos":I
    .end local v14    # "nphoto":I
    .end local v15    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    if-eqz v2, :cond_2

    .line 254
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    const v2, 0x7f0600fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v11}, Lcom/vkontakte/android/MessageViewActivity;->addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V

    .line 257
    :cond_2
    invoke-virtual {v11}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 258
    return-void

    .line 206
    .restart local v13    # "nPhotos":I
    .restart local v14    # "nphoto":I
    :cond_3
    aget-object v9, v3, v2

    .local v9, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_4

    add-int/lit8 v13, v13, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v12    # "list":I
    .restart local v15    # "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_5
    aget-object v9, v19, v18

    .line 214
    .restart local v9    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    .line 215
    .local v10, "aview":Landroid/view/View;
    const v2, 0x7f0600fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    instance-of v2, v9, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_6

    .line 218
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    move-object v2, v9

    check-cast v2, Lcom/vkontakte/android/GeoAttachment;

    iget-wide v2, v2, Lcom/vkontakte/android/GeoAttachment;->lat:D

    move-object v4, v9

    check-cast v4, Lcom/vkontakte/android/GeoAttachment;

    iget-wide v4, v4, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v6, 0x12c

    const/16 v7, 0xb4

    invoke-static/range {v2 .. v7}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 219
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 222
    :cond_6
    instance-of v2, v9, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_7

    .line 223
    const v2, 0x7f060018

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v9

    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    const v2, 0x7f060018

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 227
    :cond_7
    instance-of v2, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_8

    move-object v2, v9

    .line 228
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v10

    .line 229
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 231
    new-instance v16, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v16 .. v16}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v16, "photo":Lcom/vkontakte/android/Photo;
    move-object v2, v9

    .line 232
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object v2, v9

    .line 233
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object v2, v9

    .line 234
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/vkontakte/android/Photo;->albumID:I

    move-object v2, v9

    .line 235
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/vkontakte/android/Photo;->id:I

    .line 236
    check-cast v9, Lcom/vkontakte/android/PhotoAttachment;

    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    iget v2, v9, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 237
    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/vkontakte/android/Photo;->date:I

    .line 238
    const-string v2, ""

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 239
    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    move v8, v14

    .line 241
    .local v8, "_i":I
    new-instance v2, Lcom/vkontakte/android/MessageViewActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v12}, Lcom/vkontakte/android/MessageViewActivity$5;-><init>(Lcom/vkontakte/android/MessageViewActivity;II)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    add-int/lit8 v14, v14, 0x1

    .line 213
    .end local v8    # "_i":I
    .end local v16    # "photo":Lcom/vkontakte/android/Photo;
    :cond_8
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_1
.end method

.method private openPhotos(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "list"    # I

    .prologue
    .line 261
    iget-object v3, p0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Lcom/vkontakte/android/Photo;

    .line 262
    .local v2, "ph":[Lcom/vkontakte/android/Photo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 263
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "photo_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    const-string v3, "photo_index"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v3, "photo"

    aget-object v4, v2, p1

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v3, "hide_bottombar"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    return-void

    .line 262
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/MessageViewActivity;->photos:Ljava/util/Vector;

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

.method private stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 9
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 473
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p1, v6, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 474
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 481
    return-object p1

    .line 474
    :cond_0
    aget-object v1, v3, v5

    .line 475
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 476
    .local v4, "start":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 477
    .local v0, "end":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 478
    new-instance v2, Lcom/vkontakte/android/MessageViewActivity$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lcom/vkontakte/android/MessageViewActivity$URLSpanNoUnderline;-><init>(Lcom/vkontakte/android/MessageViewActivity;Ljava/lang/String;)V

    .line 479
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v2, v4, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 474
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteMessage()V
    .locals 4

    .prologue
    .line 394
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 396
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 397
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 398
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "messages.delete"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "mid"

    iget v3, p0, Lcom/vkontakte/android/MessageViewActivity;->msgID:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 399
    new-instance v2, Lcom/vkontakte/android/MessageViewActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/MessageViewActivity$8;-><init>(Lcom/vkontakte/android/MessageViewActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 411
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 412
    return-void
.end method

.method public forwardMessage()V
    .locals 3

    .prologue
    .line 415
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/MessageViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 418
    return-void
.end method

.method public loadInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 164
    const v2, 0x7f0600fb

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 169
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    const v2, 0x7f060157

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    iput-object v1, p0, Lcom/vkontakte/android/MessageViewActivity;->progress:Landroid/widget/ProgressBar;

    .line 172
    new-instance v3, Lcom/vkontakte/android/api/MessagesGetFull;

    iget-boolean v2, p0, Lcom/vkontakte/android/MessageViewActivity;->loadFull:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "msg_id"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    invoke-direct {v3, v2}, Lcom/vkontakte/android/api/MessagesGetFull;-><init>(I)V

    .line 173
    new-instance v2, Lcom/vkontakte/android/MessageViewActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MessageViewActivity$4;-><init>(Lcom/vkontakte/android/MessageViewActivity;)V

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/api/MessagesGetFull;->setCallback(Lcom/vkontakte/android/api/MessagesGetFull$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 188
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->id:I

    goto :goto_0
.end method

.method public loadPhoto()V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/MessageViewActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MessageViewActivity$9;-><init>(Lcom/vkontakte/android/MessageViewActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 469
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 470
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0600f5

    const/4 v5, 0x0

    .line 422
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 423
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 424
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 425
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "peerID"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "fwd"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vkontakte/android/MessageViewActivity;->msgID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v2, "fwd_senders"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "photo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "sender_photo"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "sender_photo"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0}, Lcom/vkontakte/android/MessageViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 432
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->finish()V

    .line 446
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_0
    :goto_1
    return-void

    .line 430
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_1
    invoke-virtual {p0, v7, v5}, Lcom/vkontakte/android/MessageViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "userphoto"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 434
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "peerID"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v2, "fwd"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vkontakte/android/MessageViewActivity;->msgID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v2, "fwd_senders"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "photo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "sender_photo"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "sender_photo"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 441
    :cond_3
    invoke-virtual {p0, v7, v5}, Lcom/vkontakte/android/MessageViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "userphoto"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v10, 0x7f03004b

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->setContentView(I)V

    .line 54
    const v10, 0x7f0600fc

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 55
    const v10, 0x7f06005e

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "msg"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_0
    iput-boolean v10, p0, Lcom/vkontakte/android/MessageViewActivity;->loadFull:Z

    .line 58
    iget-boolean v10, p0, Lcom/vkontakte/android/MessageViewActivity;->loadFull:Z

    if-nez v10, :cond_7

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "msg"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Message;

    iput-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    .line 60
    const v10, 0x7f0600fa

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget-object v11, v11, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    const-string v13, "<br/>"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v10, 0x7f0600fa

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v11}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 62
    const v10, 0x7f0600f6

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v12, v12, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v11, v12}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v10, 0x7f0600fa

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Landroid/text/Spannable;

    invoke-direct {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget-object v10, v10, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 68
    const v10, 0x7f0600fa

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const v10, 0x7f0600fb

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40e00000    # 7.0f

    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    :cond_0
    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget-boolean v10, v10, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v10, p0, Lcom/vkontakte/android/MessageViewActivity;->isOut:Z

    .line 72
    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget v10, v10, Lcom/vkontakte/android/Message;->id:I

    iput v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msgID:I

    .line 78
    :goto_2
    iget-boolean v10, p0, Lcom/vkontakte/android/MessageViewActivity;->isOut:Z

    if-eqz v10, :cond_8

    .line 79
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/vkontakte/android/MessageViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 81
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const v10, 0x7f0600f5

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "username"

    const-string v12, "DELETED"

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->loadPhoto()V

    .line 87
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :goto_3
    const v10, 0x7f0600f3

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/vkontakte/android/MessageViewActivity$1;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/MessageViewActivity$1;-><init>(Lcom/vkontakte/android/MessageViewActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const/4 v8, 0x0

    .line 97
    .local v8, "totalAtts":I
    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget-object v11, v10, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v12, v11

    const/4 v10, 0x0

    :goto_4
    if-lt v10, v12, :cond_9

    .line 98
    :cond_1
    iget-boolean v10, p0, Lcom/vkontakte/android/MessageViewActivity;->loadFull:Z

    if-nez v10, :cond_a

    if-gtz v8, :cond_a

    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget-object v10, v10, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget-object v10, v10, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    const-string v11, "attach1_type"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    :cond_2
    const/4 v5, 0x0

    .line 100
    .local v5, "hasAttach":Z
    :goto_5
    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->loadInfo()V

    .line 104
    :cond_3
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    .local v9, "tv":Landroid/view/View;
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    .line 106
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const v10, -0x141415

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    const v10, 0x7f060157

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 110
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    .local v3, "bv":Landroid/view/View;
    const/4 v10, 0x6

    invoke-virtual {v3, v10}, Landroid/view/View;->setId(I)V

    .line 112
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const v10, 0x7f060157

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    const v10, 0x7f060156

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/OverScrollView;

    invoke-virtual {v10}, Lcom/vkontakte/android/OverScrollView;->init()V

    .line 117
    iget-boolean v10, p0, Lcom/vkontakte/android/MessageViewActivity;->loadFull:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msg:Lcom/vkontakte/android/Message;

    iget-boolean v10, v10, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v10, :cond_4

    .line 118
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v4, "ev":Landroid/widget/TextView;
    const v10, 0x7f090072

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 120
    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    const v10, -0x888889

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x41200000    # 10.0f

    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    const v10, 0x7f060158

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    const v10, 0x7f060158

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    const v10, 0x7f03000c

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 126
    .local v2, "btnResend":Landroid/widget/Button;
    const v10, 0x7f090076

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(I)V

    .line 127
    new-instance v10, Lcom/vkontakte/android/MessageViewActivity$2;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/MessageViewActivity$2;-><init>(Lcom/vkontakte/android/MessageViewActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v10, 0x7f060158

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    .end local v2    # "btnResend":Landroid/widget/Button;
    .end local v4    # "ev":Landroid/widget/TextView;
    :cond_4
    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0xb

    if-lt v10, v11, :cond_5

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "btnMenu":Landroid/widget/ImageView;
    const v10, 0x7f0200c6

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v0, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x10

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 141
    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 142
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v10, Lcom/vkontakte/android/MessageViewActivity$3;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/MessageViewActivity$3;-><init>(Lcom/vkontakte/android/MessageViewActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MessageViewActivity;->addViewAtRight(Landroid/view/View;)V

    .line 161
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "btnMenu":Landroid/widget/ImageView;
    :cond_5
    return-void

    .line 56
    .end local v3    # "bv":Landroid/view/View;
    .end local v5    # "hasAttach":Z
    .end local v8    # "totalAtts":I
    .end local v9    # "tv":Landroid/view/View;
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 74
    :cond_7
    const v10, 0x7f0600f3

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "is_out"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/vkontakte/android/MessageViewActivity;->isOut:Z

    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "msg_id"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/vkontakte/android/MessageViewActivity;->msgID:I

    goto/16 :goto_2

    .line 84
    :cond_8
    const v10, 0x7f0600f5

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "sender_name"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->loadPhoto()V

    goto/16 :goto_3

    .line 97
    .restart local v8    # "totalAtts":I
    :cond_9
    aget v6, v11, v10

    .local v6, "i":I
    add-int/2addr v8, v6

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 98
    .end local v6    # "i":I
    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 66
    .end local v8    # "totalAtts":I
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 450
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 451
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 457
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f06019e

    if-ne v0, v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->deleteMessage()V

    .line 459
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resend()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mid"

    iget v2, p0, Lcom/vkontakte/android/MessageViewActivity;->msgID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/MessageViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/vkontakte/android/MessageViewActivity;->finish()V

    .line 391
    return-void
.end method
