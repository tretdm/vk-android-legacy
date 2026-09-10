.class Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;Landroid/view/View;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->val$v:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->val$v:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->val$image:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 817
    .local v0, "vv":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 818
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "vv":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 820
    :cond_0
    return-void
.end method
