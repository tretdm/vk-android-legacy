.class Lcom/vkontakte/android/FriendListView$FriendListAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "FriendListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendListView;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/FriendListView$FriendListAdapter;)V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendListView$FriendListAdapter;-><init>(Lcom/vkontakte/android/FriendListView;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$1(Lcom/vkontakte/android/FriendListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 591
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 579
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_1

    .line 581
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_1

    .line 584
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 586
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_1

    .line 588
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_1

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 584
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$1(Lcom/vkontakte/android/FriendListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 598
    packed-switch p1, :pswitch_data_0

    .line 613
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 600
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_1

    .line 602
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_1

    .line 605
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 607
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_1

    .line 609
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    goto :goto_1

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 605
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$1(Lcom/vkontakte/android/FriendListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$1(Lcom/vkontakte/android/FriendListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    packed-switch p1, :pswitch_data_0

    .line 566
    :cond_0
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 554
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 559
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 561
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 563
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 559
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 492
    if-nez p3, :cond_0

    .line 493
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f030016

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/vkontakte/android/FriendListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 494
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$0(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42680000    # 58.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v4, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 499
    :cond_0
    const/4 v0, 0x0

    .line 500
    .local v0, "applyHighlight":Z
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 501
    .local v2, "profile":Lcom/vkontakte/android/UserProfile;
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$1(Lcom/vkontakte/android/FriendListView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 502
    packed-switch p1, :pswitch_data_0

    .line 523
    :goto_0
    :try_start_0
    iget-object v4, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 524
    iget-object v3, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 527
    .local v3, "uname":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    .line 528
    .local v1, "editable":Landroid/text/Editable;
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$5(Lcom/vkontakte/android/FriendListView;)I

    move-result v4

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_2

    .line 529
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$6(Lcom/vkontakte/android/FriendListView;)Landroid/text/style/StyleSpan;

    move-result-object v4

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v1, v4, v7, v8, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 535
    :goto_1
    move-object v3, v1

    .line 538
    const v4, 0x7f060068

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$7(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v4

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 540
    const v4, 0x7f060066

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v7}, Lcom/vkontakte/android/FriendListView;->access$7(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 543
    :goto_2
    const v4, 0x7f060067

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v4, v2, Lcom/vkontakte/android/UserProfile;->online:Z

    if-eqz v4, :cond_5

    move v4, v6

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "uname":Ljava/lang/CharSequence;
    :goto_4
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p2, :cond_6

    :goto_5
    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 546
    return-object p3

    .line 504
    :pswitch_0
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 505
    .restart local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    goto/16 :goto_0

    .line 507
    :pswitch_1
    const/4 v0, 0x1

    .line 508
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .restart local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    goto/16 :goto_0

    .line 511
    :cond_1
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 513
    :pswitch_2
    const/4 v0, 0x1

    .line 514
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 515
    .restart local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    goto/16 :goto_0

    .line 517
    :pswitch_3
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .restart local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    goto/16 :goto_0

    .line 530
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "uname":Ljava/lang/CharSequence;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$5(Lcom/vkontakte/android/FriendListView;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    if-eqz v0, :cond_3

    .line 531
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$6(Lcom/vkontakte/android/FriendListView;)Landroid/text/style/StyleSpan;

    move-result-object v4

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v1, v4, v7, v8, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 544
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "uname":Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_4

    .line 533
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "uname":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$6(Lcom/vkontakte/android/FriendListView;)Landroid/text/style/StyleSpan;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v1, v4, v7, v8, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 542
    :cond_4
    const v4, 0x7f060066

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f0201e8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 543
    :cond_5
    const/16 v4, 0x8

    goto/16 :goto_3

    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "uname":Ljava/lang/CharSequence;
    :cond_6
    move v5, v6

    .line 545
    goto/16 :goto_5

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 511
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 618
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$1(Lcom/vkontakte/android/FriendListView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$8(Lcom/vkontakte/android/FriendListView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 619
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 619
    goto :goto_0

    .line 620
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 622
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$FriendListAdapter;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
