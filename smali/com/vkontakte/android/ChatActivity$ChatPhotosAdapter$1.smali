.class Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->this$1:Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1720
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->this$1:Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->access$1(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->this$1:Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->access$1(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->this$1:Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->access$1(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1721
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkontakte/android/MessageView;

    if-eqz v1, :cond_0

    .line 1722
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->this$1:Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->access$1(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v1

    const v2, 0x77359400

    if-le v1, v2, :cond_2

    .line 1723
    iget v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$image:I

    if-nez v1, :cond_1

    check-cast v0, Lcom/vkontakte/android/MessageView;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1724
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    check-cast v0, Lcom/vkontakte/android/MessageView;

    .end local v0    # "view":Landroid/view/View;
    iget v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$image:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MessageView;->setAttPhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1726
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    check-cast v0, Lcom/vkontakte/android/MessageView;

    .end local v0    # "view":Landroid/view/View;
    iget v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$image:I

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MessageView;->setAttPhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method
