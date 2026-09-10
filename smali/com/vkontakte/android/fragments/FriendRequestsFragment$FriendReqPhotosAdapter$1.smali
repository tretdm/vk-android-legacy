.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;Landroid/view/View;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v1, 0x7f08002e

    .line 647
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$image:I

    if-nez v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$image:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
