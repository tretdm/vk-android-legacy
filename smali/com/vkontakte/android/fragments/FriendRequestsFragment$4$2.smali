.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1100(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1200(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$502(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method
