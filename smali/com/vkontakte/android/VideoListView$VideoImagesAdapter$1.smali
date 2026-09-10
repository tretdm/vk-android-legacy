.class Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->this$1:Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->val$pos:I

    iput-object p3, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f060142

    .line 691
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->this$1:Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->access$1(Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)Lcom/vkontakte/android/VideoListView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->val$pos:I

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->this$1:Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->access$1(Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)Lcom/vkontakte/android/VideoListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->this$1:Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->access$1(Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)Lcom/vkontakte/android/VideoListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
