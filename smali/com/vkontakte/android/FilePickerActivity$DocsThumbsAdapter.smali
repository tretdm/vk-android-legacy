.class Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocsThumbsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FilePickerActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/FilePickerActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/FilePickerActivity$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    iget-object v0, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

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
    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    iget-object v0, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity;->access$300(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 393
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity;->access$300(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity;->access$300(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity;->access$300(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$300(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity;->access$1200(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter$1;-><init>(Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
