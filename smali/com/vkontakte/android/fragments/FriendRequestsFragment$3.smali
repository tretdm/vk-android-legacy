.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$8(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loadData()V

    .line 165
    :cond_0
    return-void
.end method
