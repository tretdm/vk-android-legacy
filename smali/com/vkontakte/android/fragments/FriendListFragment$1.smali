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


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 119
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$200(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$100(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v8, p3, v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->resolveIndex(I)[I

    move-result-object v4

    .line 120
    .local v4, "s":[I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    iget v6, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 121
    .local v6, "uid":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$400(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 122
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$500(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$500(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$600(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$600(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    .line 128
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$200(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->notifyDataSetChanged()V

    .line 144
    :goto_1
    return-void

    .line 125
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$500(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$600(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 131
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    .line 132
    .local v5, "sec":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v7, v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 133
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iget v7, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v6, :cond_4

    .line 134
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$600(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1

    .line 140
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v5    # "sec":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "id"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v7, "ProfileFragment"

    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_1
.end method
