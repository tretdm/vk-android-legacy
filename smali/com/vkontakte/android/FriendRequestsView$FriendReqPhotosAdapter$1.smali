.class Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f060078

    .line 724
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->access$1(Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget v2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->access$1(Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 725
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$image:I

    if-nez v1, :cond_2

    .line 727
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 729
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->access$1(Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$image:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
