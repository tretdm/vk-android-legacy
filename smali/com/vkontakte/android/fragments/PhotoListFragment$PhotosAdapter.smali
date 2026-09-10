.class Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$5(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 708
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 713
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 727
    if-eqz p2, :cond_1

    move-object v3, p2

    .line 728
    check-cast v3, Landroid/widget/LinearLayout;

    .line 729
    .local v3, "l":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lt v0, v9, :cond_0

    .line 732
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 737
    .end local v0    # "i":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$5(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 738
    .local v6, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    const/4 v1, 0x0

    .local v1, "image":I
    const/4 v8, 0x0

    .line 739
    .local v8, "wsum":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 765
    return-object v3

    .line 730
    .end local v1    # "image":I
    .end local v6    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    .end local v8    # "wsum":I
    .restart local v0    # "i":I
    :cond_0
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$6(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "i":I
    .end local v3    # "l":Landroid/widget/LinearLayout;
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 735
    .restart local v3    # "l":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 739
    .restart local v1    # "image":I
    .restart local v6    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    .restart local v8    # "wsum":I
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    .line 741
    .local v5, "p":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$6(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 742
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$6(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 749
    .local v2, "iv":Landroid/widget/ImageView;
    :goto_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_5

    iget v9, v5, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    add-int/2addr v9, v8

    iget-object v11, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getWidth()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    if-ge v9, v11, :cond_5

    const/4 v9, -0x1

    :goto_4
    iget v11, v5, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->height:I

    invoke-direct {v4, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 750
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v5, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    add-int/2addr v8, v9

    .line 751
    if-eqz v1, :cond_3

    .line 752
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 753
    :cond_3
    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$5(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    iget-object v11, v9, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v12, 0x3fc00000    # 1.5f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_6

    const/16 v9, 0x70

    :goto_5
    const/16 v12, 0x6d

    invoke-virtual {v11, v9, v12}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v9

    iget-object v7, v9, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 756
    .local v7, "url":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$8(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 757
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$8(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 761
    :goto_6
    iget v9, v5, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->index:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 744
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "url":Ljava/lang/String;
    :cond_4
    new-instance v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 745
    .restart local v2    # "iv":Landroid/widget/ImageView;
    const v9, -0xd7d7d8

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 746
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 747
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 749
    :cond_5
    iget v9, v5, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    goto :goto_4

    .line 755
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    const/16 v9, 0x6d

    goto :goto_5

    .line 759
    .restart local v7    # "url":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 721
    const/4 v0, 0x0

    return v0
.end method
