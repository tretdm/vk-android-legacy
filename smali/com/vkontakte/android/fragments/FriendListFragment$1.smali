.class Lcom/vkontakte/android/fragments/FriendListFragment$1;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$5(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v6, p3, v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->resolveIndex(I)[I

    move-result-object v2

    .line 118
    .local v2, "s":[I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget v4, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 119
    .local v4, "uid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$3(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$3(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$6(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$6(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    .line 126
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$5(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->notifyDataSetChanged()V

    .line 142
    :goto_1
    return-void

    .line 123
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$3(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$6(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 129
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 138
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "id"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v5, "ProfileFragment"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_1

    .line 129
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    .line 130
    .local v3, "sec":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v6, v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 131
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v7, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v4, :cond_6

    .line 132
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$6(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1
.end method
