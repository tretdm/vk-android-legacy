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
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoAdapter;)V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView$VideoAdapter;-><init>(Lcom/vkontakte/android/VideoListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 664
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 669
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const v8, 0x7f0800fe

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 674
    if-nez p2, :cond_0

    .line 675
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03006b

    invoke-static {v3, v4, v6}, Lcom/vkontakte/android/VideoListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 676
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 677
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 678
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 679
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 681
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v5}, Lcom/vkontakte/android/VideoListView;->access$1(Lcom/vkontakte/android/VideoListView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    new-instance v2, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v2}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 684
    .local v2, "v":Lcom/vkontakte/android/api/VideoFile;
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    iget v3, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    const/16 v4, 0xe10

    if-le v3, v4, :cond_1

    .line 688
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit16 v5, v5, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit16 v5, v5, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "d":Ljava/lang/String;
    :goto_1
    const v3, 0x7f0800fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v2, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    const v3, 0x7f0800fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 694
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 703
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v2, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    const v3, 0x7f0800fc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v4}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 708
    :goto_2
    return-object p2

    .line 690
    .end local v1    # "d":Ljava/lang/String;
    :cond_1
    const-string v3, "%d:%02d"

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "d":Ljava/lang/String;
    goto :goto_1

    .line 706
    :cond_2
    const v3, 0x7f0800fc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 685
    .end local v1    # "d":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
