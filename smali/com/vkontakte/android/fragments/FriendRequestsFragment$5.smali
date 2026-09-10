.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->notifyDataSetChanged()V

    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 291
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$20(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/EmptyView;->clearAnimation()V

    .line 292
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$20(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$14(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 293
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
