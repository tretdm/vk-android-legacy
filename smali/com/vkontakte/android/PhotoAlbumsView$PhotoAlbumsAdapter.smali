.class Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoAlbumsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAlbumsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAlbumsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0800fe

    const v4, 0x7f0800fd

    const v5, 0x7f0800fc

    .line 254
    if-nez p2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030055

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/PhotoAlbumsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 256
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 259
    :cond_0
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->access$1(Lcom/vkontakte/android/PhotoAlbumsView;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 261
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    if-lez v2, :cond_1

    const v2, 0x7f0d0014

    iget v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v1

    iget-object v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    :goto_1
    return-object p2

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
