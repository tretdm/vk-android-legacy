.class public Lcom/vkontakte/android/UserListActivity$UserListAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "UserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UserListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/UserListActivity;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UserListActivity$UserListAdapter;)Lcom/vkontakte/android/UserListActivity;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    return-object v0
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "pos"    # I

    .prologue
    .line 488
    int-to-long v0, p2

    return-wide v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x2

    const v7, 0x7f0600b5

    const v6, 0x7f060071

    const/4 v2, 0x0

    .line 493
    if-nez p3, :cond_0

    .line 494
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-static {v1}, Lcom/vkontakte/android/UserListActivity;->access$0(Lcom/vkontakte/android/UserListActivity;)I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 495
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 496
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/vkontakte/android/UserListActivity$UserListAdapter$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/UserListActivity$UserListAdapter$1;-><init>(Lcom/vkontakte/android/UserListActivity$UserListAdapter;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    :goto_0
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 508
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 509
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 510
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060070

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f020149

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    :cond_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 513
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 514
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const v1, 0x7f060070

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-static {v1}, Lcom/vkontakte/android/UserListActivity;->access$0(Lcom/vkontakte/android/UserListActivity;)I

    move-result v1

    if-ne v1, v8, :cond_3

    .line 518
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-static {v4}, Lcom/vkontakte/android/UserListActivity;->access$2(Lcom/vkontakte/android/UserListActivity;)I

    move-result v4

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 519
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 522
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    if-eqz v1, :cond_4

    .line 523
    const v1, 0x7f060073

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 527
    const v1, 0x7f06006f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 531
    :goto_2
    return-object p3

    .line 503
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    if-eqz v1, :cond_6

    const v1, 0x7f03001c

    :goto_3
    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f03001a

    goto :goto_3

    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_7
    move v1, v3

    .line 515
    goto :goto_1

    .line 529
    :cond_8
    const v1, 0x7f06006f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method
