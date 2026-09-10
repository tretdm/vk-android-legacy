.class Lcom/vkontakte/android/fragments/FriendListFragment$5$2;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment$5;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1102(Lcom/vkontakte/android/fragments/FriendListFragment;Z)Z

    .line 408
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$100(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1400(Lcom/vkontakte/android/fragments/FriendListFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1500(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1500(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1502(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 414
    :cond_1
    return-void
.end method
