.class Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbsVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AbsVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 294
    .local v0, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget v1, v0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, v0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x2

    const/4 v7, 0x1

    const v8, 0x7f080112

    const/4 v4, 0x0

    .line 299
    if-nez p2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030084

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 302
    :cond_0
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->access$700(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)I

    move-result v6

    invoke-direct {v2, v3, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/VideoFile;

    .line 305
    .local v1, "v":Lcom/vkontakte/android/api/VideoFile;
    iget v2, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    const/16 v3, 0xe10

    if-le v2, v3, :cond_1

    .line 306
    const-string v2, "%d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit16 v6, v6, 0xe10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget v6, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit16 v6, v6, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    iget v6, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "d":Ljava/lang/String;
    :goto_0
    const v2, 0x7f080108

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const v2, 0x7f080109

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, v1, Lcom/vkontakte/android/api/VideoFile;->views:I

    if-lez v3, :cond_2

    const v3, 0x7f07006c

    iget v6, v1, Lcom/vkontakte/android/api/VideoFile;->views:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v2, 0x7f0801b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const v2, 0x7f0801b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v2, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    if-lez v2, :cond_3

    move v2, v4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, v1, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    const v2, 0x7f080107

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v6, v1, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    :goto_3
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-boolean v3, v3, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->selectMode:Z

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 321
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->access$800(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-object p2

    .line 308
    .end local v0    # "d":Ljava/lang/String;
    :cond_1
    const-string v2, "%d:%02d"

    new-array v3, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget v6, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "d":Ljava/lang/String;
    goto/16 :goto_0

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d01b4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_3
    move v2, v5

    .line 312
    goto :goto_2

    .line 317
    :cond_4
    const v2, 0x7f080107

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0xd0d0e

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    move v5, v4

    .line 320
    goto :goto_4
.end method
