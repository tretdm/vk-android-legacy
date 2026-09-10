.class Lcom/vkontakte/android/fragments/GroupListFragment$1;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 85
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$200(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$100(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v6, p3, v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->resolveIndex(I)[I

    move-result-object v3

    .line 86
    .local v3, "s":[I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$300(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/Group;

    iget v4, v5, Lcom/vkontakte/android/api/Group;->id:I

    .line 87
    .local v4, "uid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$400(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$500(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/Group;

    .line 89
    .local v2, "p":Lcom/vkontakte/android/api/Group;
    iget v5, v2, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v5, v4, :cond_0

    .line 90
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$400(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/api/Group;)V

    .line 98
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/vkontakte/android/api/Group;
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "id"

    neg-int v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v5, "ProfileFragment"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
