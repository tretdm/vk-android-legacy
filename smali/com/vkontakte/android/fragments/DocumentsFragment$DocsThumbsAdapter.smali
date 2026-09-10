.class Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "DocumentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocsThumbsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Document;

    iget-object v0, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Document;

    iget-object v0, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 458
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$4(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter$1;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
