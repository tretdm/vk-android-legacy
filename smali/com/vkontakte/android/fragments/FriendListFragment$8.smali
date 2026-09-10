.class Lcom/vkontakte/android/fragments/FriendListFragment$8;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$2200(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateList: sections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$200(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->notifyDataSetChanged()V

    .line 545
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$100(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->requestLayout()V

    .line 546
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$100(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$8$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$8$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$8;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    return-void
.end method
