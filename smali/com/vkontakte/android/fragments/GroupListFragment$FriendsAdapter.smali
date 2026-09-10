.class Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "GroupListFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 442
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 453
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->startPos:I

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0900c1

    .line 387
    move-object v2, p3

    .line 388
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 389
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030042

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 391
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 392
    .local v0, "grp":Lcom/vkontakte/android/api/Group;
    const v3, 0x7f0900c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const-string v1, ""

    .line 394
    .local v1, "subtitle":Ljava/lang/String;
    iget v3, v0, Lcom/vkontakte/android/api/Group;->type:I

    if-nez v3, :cond_2

    .line 395
    iget v3, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    packed-switch v3, :pswitch_data_0

    .line 411
    :cond_1
    :goto_0
    const v3, 0x7f0900c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$1(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 416
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$1(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    :goto_1
    return-object v2

    .line 397
    :pswitch_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    goto :goto_0

    .line 400
    :pswitch_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 406
    :cond_2
    iget v3, v0, Lcom/vkontakte/android/api/Group;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 407
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    goto :goto_0

    :cond_3
    iget v3, v0, Lcom/vkontakte/android/api/Group;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 409
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 418
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200e3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

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
