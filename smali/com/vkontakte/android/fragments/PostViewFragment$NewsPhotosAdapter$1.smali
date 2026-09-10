.class Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;

.field final synthetic val$_item:I

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;Landroid/view/View;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1867
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$_item:I

    iput p4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$image:I

    iput-object p5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1868
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1871
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4500(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$_item:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    iget v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$image:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$view:Landroid/view/View;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    :cond_0
    :goto_0
    return-void

    .line 1872
    :catch_0
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
