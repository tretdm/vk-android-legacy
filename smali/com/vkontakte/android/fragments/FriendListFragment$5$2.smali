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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$5;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$5;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$9(Lcom/vkontakte/android/fragments/FriendListFragment;Z)V

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$5;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$5;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$5;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$5;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDraggingEnabled(Z)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$5;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$5;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$12(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$5;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$5;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$12(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$5;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$5;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$13(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/lang/Runnable;)V

    .line 406
    :cond_1
    return-void
.end method
