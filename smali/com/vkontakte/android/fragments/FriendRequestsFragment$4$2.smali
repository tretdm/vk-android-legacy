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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$14(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$18(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    return-void
.end method
