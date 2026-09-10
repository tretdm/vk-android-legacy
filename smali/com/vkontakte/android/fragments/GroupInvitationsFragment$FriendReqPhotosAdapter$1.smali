.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;
.super Ljava/lang/Object;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0900c8

    .line 416
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;)Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;)Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$image:I

    if-nez v1, :cond_2

    .line 419
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;)Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$image:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$3(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
