.class Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoFeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoViewsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 329
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x6d

    .line 335
    if-nez p2, :cond_0

    .line 336
    new-instance v0, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Landroid/content/Context;)V

    .line 337
    .local v0, "iv":Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    .line 342
    .local v1, "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    iget v2, v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    iput v2, v0, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->w:I

    .line 343
    iget v2, v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    iput v2, v0, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->h:I

    .line 345
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    :goto_1
    return-object v0

    .end local v0    # "iv":Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;
    .end local v1    # "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    :cond_0
    move-object v0, p2

    .line 339
    check-cast v0, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;

    .restart local v0    # "iv":Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;
    goto :goto_0

    .line 348
    .restart local v1    # "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xe0e0f

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
