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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendListFragment$8;)Lcom/vkontakte/android/fragments/FriendListFragment;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$22(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateList: sections="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$5(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->notifyDataSetChanged()V

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->requestLayout()V

    .line 538
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$8$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$8$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$8;)V

    .line 543
    const-wide/16 v2, 0x64

    .line 538
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    return-void
.end method
