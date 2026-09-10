.class Lcom/vkontakte/android/FriendsView$FriendsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "FriendsView.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendsView;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$FriendsAdapter;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendsView$FriendsAdapter;-><init>(Lcom/vkontakte/android/FriendsView;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 467
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 478
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget v0, v0, Lcom/vkontakte/android/FriendsView$Section;->startPos:I

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vkontakte/android/FriendsView$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0800a1

    .line 429
    move-object v1, p3

    .line 430
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 431
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendsView;->access$0(Lcom/vkontakte/android/FriendsView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f030030

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/FriendsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v2, v2, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 434
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendsView;->access$2(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendsView;->access$2(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 443
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendsView;->access$0(Lcom/vkontakte/android/FriendsView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendsView;->access$3(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0200cd

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    :cond_1
    return-object v1

    .line 431
    .end local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const v2, 0x7f03002f

    goto/16 :goto_0

    .line 436
    .restart local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const/16 v2, 0x8

    goto :goto_1

    .line 441
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 444
    :cond_5
    const v3, 0x7f0200cc

    goto :goto_3
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

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
