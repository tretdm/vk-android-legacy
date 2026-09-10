.class Lcom/vkontakte/android/FriendListView$7;
.super Ljava/lang/Object;
.source "FriendListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendListView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$19(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$14(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$14(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$32(Lcom/vkontakte/android/FriendListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$14(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 460
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$11(Lcom/vkontakte/android/FriendListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendListView;->access$33(Lcom/vkontakte/android/FriendListView;Z)V

    .line 463
    :cond_2
    return-void
.end method
