.class Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "GroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/GroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public getItemCount(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x0

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 598
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 600
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 602
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$3(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 604
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 610
    packed-switch p1, :pswitch_data_0

    .line 620
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 612
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget v0, v0, Lcom/vkontakte/android/api/Group;->id:I

    int-to-long v0, v0

    goto :goto_0

    .line 614
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget v0, v0, Lcom/vkontakte/android/api/Group;->id:I

    int-to-long v0, v0

    goto :goto_0

    .line 616
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$3(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget v0, v0, Lcom/vkontakte/android/api/Group;->id:I

    int-to-long v0, v0

    goto :goto_0

    .line 618
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget v0, v0, Lcom/vkontakte/android/api/Group;->id:I

    int-to-long v0, v0

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v0, 0x0

    .line 642
    packed-switch p1, :pswitch_data_0

    .line 648
    :goto_0
    :pswitch_0
    return v0

    .line 644
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x4

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 578
    packed-switch p1, :pswitch_data_0

    .line 588
    const-string v0, ""

    :goto_0
    return-object v0

    .line 580
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 584
    :pswitch_2
    const-string v0, ""

    goto :goto_0

    .line 586
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f060069

    const v4, 0x7f060066

    .line 544
    if-nez p3, :cond_0

    .line 545
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    if-nez p1, :cond_1

    const v1, 0x7f030017

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    move-object v1, p3

    .line 546
    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f060067

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 547
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 551
    :cond_0
    const/4 v0, 0x0

    .line 552
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    packed-switch p1, :pswitch_data_0

    .line 568
    :goto_1
    const v1, 0x7f060068

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$5(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v1

    iget-object v2, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$5(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 573
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p2, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 574
    return-object p3

    .line 545
    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    :cond_1
    const v1, 0x7f030016

    goto :goto_0

    .line 554
    .restart local v0    # "g":Lcom/vkontakte/android/api/Group;
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 555
    .restart local v0    # "g":Lcom/vkontakte/android/api/Group;
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 559
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 560
    .restart local v0    # "g":Lcom/vkontakte/android/api/Group;
    goto/16 :goto_1

    .line 562
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$3(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 563
    .restart local v0    # "g":Lcom/vkontakte/android/api/Group;
    goto/16 :goto_1

    .line 565
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    check-cast v0, Lcom/vkontakte/android/api/Group;

    .restart local v0    # "g":Lcom/vkontakte/android/api/Group;
    goto/16 :goto_1

    .line 572
    :cond_2
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 573
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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

    .line 624
    packed-switch p1, :pswitch_data_0

    .line 634
    :cond_0
    :goto_0
    return v0

    .line 626
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 628
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 630
    goto :goto_0

    .line 632
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
