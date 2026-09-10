.class public Lcom/vkontakte/android/UserListView$UserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UserListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/UserListView;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 602
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f0900c1

    const v3, 0x7f02019e

    const/4 v2, 0x0

    const v6, 0x7f0900c2

    .line 607
    if-nez p2, :cond_0

    .line 608
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    if-eqz v1, :cond_2

    const v1, 0x7f030042

    :goto_0
    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/vkontakte/android/UserListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 609
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 611
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 612
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v1, v1, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 613
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    const v1, 0x7f0900c3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 617
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    if-eqz v1, :cond_1

    .line 618
    const v1, 0x7f0900c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v1, v1, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 622
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    :goto_3
    return-object p2

    .line 608
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const v1, 0x7f030040

    goto/16 :goto_0

    .line 614
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    .line 615
    :cond_4
    const v2, 0x7f02019f

    goto :goto_2

    .line 624
    :cond_5
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02027c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
