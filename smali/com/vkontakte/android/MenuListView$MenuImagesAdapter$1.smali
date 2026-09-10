.class Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;->this$1:Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 904
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;->this$1:Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    iget-object v2, v2, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget-object v2, v2, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    iget v3, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;->val$item:I

    iget-object v4, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;->this$1:Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    iget-object v4, v4, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget-object v4, v4, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 905
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 906
    const v2, 0x7f0800ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 907
    .local v1, "vv":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 908
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "vv":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 911
    :cond_0
    return-void
.end method
