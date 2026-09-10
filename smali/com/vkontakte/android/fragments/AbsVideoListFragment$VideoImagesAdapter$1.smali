.class Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;
.super Ljava/lang/Object;
.source "AbsVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;->val$pos:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f080107

    .line 352
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->list:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->list:Landroid/widget/ListView;

    check-cast v1, Lcom/vkontakte/android/ui/MultiColumnListView;

    iget v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;->val$pos:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiColumnListView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
