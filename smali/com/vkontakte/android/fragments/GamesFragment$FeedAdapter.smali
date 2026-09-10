.class Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    return-void
.end method


# virtual methods
.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 509
    const v0, 0x7f03003c

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 400
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 411
    const/4 v0, 0x2

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/GamesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 17
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 417
    move-object/from16 v11, p3

    .line 419
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 420
    if-eqz v11, :cond_0

    move-object v12, v11

    check-cast v12, Landroid/widget/TextView;

    move-object v10, v12

    .line 421
    .local v10, "tv":Landroid/widget/TextView;
    :goto_0
    if-eqz v11, :cond_1

    .line 489
    .end local v10    # "tv":Landroid/widget/TextView;
    :goto_1
    return-object v10

    .line 420
    :cond_0
    new-instance v10, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v12}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 422
    .restart local v10    # "tv":Landroid/widget/TextView;
    :cond_1
    const v12, 0x7f0d02dc

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 423
    const v12, 0x7f02003f

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object v12, v10

    .line 424
    check-cast v12, Lcom/vkontakte/android/ui/OverlayTextView;

    const v13, 0x7f020077

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    move-object v12, v10

    .line 425
    check-cast v12, Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlayPadding(IIII)V

    .line 426
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v12

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v14

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v15

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 427
    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    const v12, -0xcc7337

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    const/4 v12, 0x1

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v10, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 433
    .end local v10    # "tv":Landroid/widget/TextView;
    :cond_2
    if-nez v11, :cond_3

    .line 434
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v12}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f030003

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 435
    new-instance v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    .line 436
    .local v5, "holder":Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;
    const v12, 0x7f08002b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 437
    const v12, 0x7f08002a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 438
    const v12, 0x7f08002c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 439
    iget-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1500(Lcom/vkontakte/android/fragments/GamesFragment;)Landroid/view/View$OnClickListener;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {v11, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    .end local v5    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/GameFeedEntry;

    .line 444
    .local v3, "e":Lcom/vkontakte/android/data/GameFeedEntry;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;

    .line 445
    .restart local v5    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-direct {v9, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 446
    .local v9, "title":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 447
    .local v7, "nameLength":I
    const-string v12, " "

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 448
    const-string v1, ""

    .line 449
    .local v1, "act":Ljava/lang/String;
    iget v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v12, v12, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v12, :cond_4

    const v12, 0x7f0d0111

    :goto_2
    invoke-virtual {v13, v12}, Lcom/vkontakte/android/fragments/GamesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    :goto_3
    const-string v12, "<b>"

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 455
    .local v8, "start":I
    const-string v12, "<b>"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 456
    const-string v12, "</b>"

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 457
    .local v4, "end":I
    const-string v12, "</b>"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 461
    .local v2, "acts":Landroid/text/Spannable;
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 462
    const-string v12, " "

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 464
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/GamesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a001f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v7, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 465
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v12

    iget-object v13, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v13, v13, Lcom/vkontakte/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 466
    .local v6, "link":Landroid/text/Spannable;
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/GamesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0021

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v13, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v6, v12, v13, v14, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 467
    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 468
    iget-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v12

    iget-object v13, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v13, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 471
    iget-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v13

    iget-object v14, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v14, v14, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v12

    iget-object v13, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v13, v13, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v14, 0x4

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 475
    iget-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v13

    iget-object v14, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v14, v14, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    :goto_5
    iget-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v13, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget v13, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 481
    if-nez p2, :cond_9

    .line 482
    const v12, 0x7f020043

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    move-object v10, v11

    .line 489
    goto/16 :goto_1

    .line 450
    .end local v2    # "acts":Landroid/text/Spannable;
    .end local v4    # "end":I
    .end local v6    # "link":Landroid/text/Spannable;
    .end local v8    # "start":I
    :cond_4
    const v12, 0x7f0d0112

    goto/16 :goto_2

    .line 452
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v12, v12, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v12, :cond_6

    const v12, 0x7f0d0114

    :goto_7
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v3, Lcom/vkontakte/android/data/GameFeedEntry;->level:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v12, v14}, Lcom/vkontakte/android/fragments/GamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_6
    const v12, 0x7f0d0115

    goto :goto_7

    .line 473
    .restart local v2    # "acts":Landroid/text/Spannable;
    .restart local v4    # "end":I
    .restart local v6    # "link":Landroid/text/Spannable;
    .restart local v8    # "start":I
    :cond_7
    iget-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const v13, 0x7f0201ec

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 477
    :cond_8
    iget-object v12, v5, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v13, 0x7f020074

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 486
    :cond_9
    const v12, 0x7f020041

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x3

    return v0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
