.class Lcom/vkontakte/android/VideoListView$VideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/VideoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAdapter"
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 1

    .prologue
    .line 707
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->first:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/VideoListView;
    .param p2, "x1"    # Lcom/vkontakte/android/VideoListView$1;

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView$VideoAdapter;-><init>(Lcom/vkontakte/android/VideoListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 713
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$000(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 714
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$000(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v2}, Lcom/vkontakte/android/VideoListView;->access$1500(Lcom/vkontakte/android/VideoListView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 719
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 724
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$000(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 730
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const v11, 0x7f080112

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 740
    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v5}, Lcom/vkontakte/android/VideoListView;->access$000(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 741
    if-eqz p2, :cond_0

    .line 742
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, p2

    .line 788
    :goto_0
    return-object v2

    .line 745
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 746
    .local v2, "fl":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 747
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/16 v8, 0x11

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 751
    .end local v2    # "fl":Landroid/widget/FrameLayout;
    .end local v3    # "pb":Landroid/widget/ProgressBar;
    :cond_1
    if-eqz p2, :cond_2

    const v5, 0x7f080108

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_3

    const-string v5, "shit"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 752
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030084

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 754
    :cond_3
    iget-boolean v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->first:Z

    if-eqz v5, :cond_4

    .line 755
    const-string v5, "shit"

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 756
    new-instance v5, Lcom/vkontakte/android/VideoListView$VideoAdapter$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/VideoListView$VideoAdapter$1;-><init>(Lcom/vkontakte/android/VideoListView$VideoAdapter;)V

    const-wide/16 v8, 0x64

    invoke-virtual {p2, v5, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 760
    :cond_4
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v6}, Lcom/vkontakte/android/VideoListView;->access$2600(Lcom/vkontakte/android/VideoListView;)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    const/4 v4, 0x0

    .line 763
    .local v4, "v":Lcom/vkontakte/android/api/VideoFile;
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v5}, Lcom/vkontakte/android/VideoListView;->access$000(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_1
    if-nez v4, :cond_5

    .line 766
    const-string v5, "vk"

    const-string v6, "DAFUQ"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    .line 767
    goto/16 :goto_0

    .line 770
    :cond_5
    iget v5, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    const/16 v6, 0xe10

    if-le v5, v6, :cond_7

    .line 771
    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit16 v8, v8, 0xe10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v8, 0x1

    iget v9, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit16 v9, v9, 0xe10

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    iget v9, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "d":Ljava/lang/String;
    :goto_2
    const v5, 0x7f080108

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v4, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    const v5, 0x7f080109

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, v4, Lcom/vkontakte/android/api/VideoFile;->views:I

    if-lez v6, :cond_8

    const v6, 0x7f07006c

    iget v8, v4, Lcom/vkontakte/android/api/VideoFile;->views:I

    iget-object v9, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    const v5, 0x7f0801b1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    const v5, 0x7f0801b1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    if-lez v5, :cond_9

    move v5, v7

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v5}, Lcom/vkontakte/android/VideoListView;->access$2000(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v4, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 780
    const v5, 0x7f080107

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v6}, Lcom/vkontakte/android/VideoListView;->access$2000(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v8, v4, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 784
    :goto_5
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 785
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-boolean v6, v6, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    if-eqz v6, :cond_6

    const/16 v7, 0x8

    :cond_6
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 786
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v6}, Lcom/vkontakte/android/VideoListView;->access$2700(Lcom/vkontakte/android/VideoListView;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, p2

    .line 788
    goto/16 :goto_0

    .line 773
    .end local v1    # "d":Ljava/lang/String;
    :cond_7
    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v8, 0x1

    iget v9, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "d":Ljava/lang/String;
    goto/16 :goto_2

    .line 775
    :cond_8
    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d01b4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 777
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 782
    :cond_a
    const v5, 0x7f080107

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const v8, -0xd0d0e

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 764
    .end local v1    # "d":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->first:Z

    .line 793
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 794
    return-void
.end method
