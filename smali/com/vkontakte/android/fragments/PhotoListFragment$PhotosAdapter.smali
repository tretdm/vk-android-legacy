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
    .line 719
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/PhotoListFragment$1;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 733
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 747
    if-eqz p2, :cond_2

    move-object v4, p2

    .line 748
    check-cast v4, Landroid/widget/LinearLayout;

    .line 749
    .local v4, "l":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 750
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2300(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 757
    .end local v0    # "i":I
    :goto_1
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 758
    .local v7, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    const/4 v2, 0x0

    .local v2, "image":I
    const/4 v9, 0x0

    .line 759
    .local v9, "wsum":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    .line 761
    .local v6, "p":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2300(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 762
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2300(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 769
    .local v3, "iv":Landroid/widget/ImageView;
    :goto_3
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_4

    iget v10, v6, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    if-ge v10, v11, :cond_4

    const/4 v10, -0x1

    :goto_4
    iget v11, v6, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->height:I

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 770
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, v6, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    add-int/2addr v9, v10

    .line 771
    if-eqz v2, :cond_1

    .line 772
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 773
    :cond_1
    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    iget-object v11, v10, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v12, 0x3fc00000    # 1.5f

    cmpl-float v10, v10, v12

    if-lez v10, :cond_5

    const/16 v10, 0x70

    :goto_5
    const/16 v12, 0x6d

    invoke-virtual {v11, v10, v12}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v10

    iget-object v8, v10, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 776
    .local v8, "url":Ljava/lang/String;
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 777
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 781
    :goto_6
    iget v10, v6, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->index:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 783
    add-int/lit8 v2, v2, 0x1

    .line 784
    goto/16 :goto_2

    .line 754
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "image":I
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "l":Landroid/widget/LinearLayout;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "p":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .end local v7    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "wsum":I
    :cond_2
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 755
    .restart local v4    # "l":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_1

    .line 764
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "image":I
    .restart local v6    # "p":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .restart local v7    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    .restart local v9    # "wsum":I
    :cond_3
    new-instance v3, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 765
    .restart local v3    # "iv":Landroid/widget/ImageView;
    const v10, -0xd7d7d8

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 766
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 767
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 769
    :cond_4
    iget v10, v6, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    goto/16 :goto_4

    .line 775
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    const/16 v10, 0x6d

    goto :goto_5

    .line 779
    .restart local v8    # "url":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 785
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "p":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .end local v8    # "url":Ljava/lang/String;
    :cond_7
    return-object v4
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method
