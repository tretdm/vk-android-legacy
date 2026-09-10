.class Lcom/vkontakte/android/ChatActivity$29;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$41(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1482
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 1483
    :cond_1
    return-void
.end method
