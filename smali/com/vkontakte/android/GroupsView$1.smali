.class Lcom/vkontakte/android/GroupsView$1;
.super Ljava/lang/Object;
.source "GroupsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsView;->init()V
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
.field final synthetic this$0:Lcom/vkontakte/android/GroupsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 84
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsView;->access$3(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/GroupsView$FriendsAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v5}, Lcom/vkontakte/android/GroupsView;->access$2(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->resolveIndex(I)[I

    move-result-object v2

    .line 85
    .local v2, "s":[I
    iget-object v4, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v4, v4, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/Group;

    iget v3, v4, Lcom/vkontakte/android/api/Group;->id:I

    .line 86
    .local v3, "uid":I
    iget-object v4, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsView;->access$4(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/GroupsView$SelectionListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsView;->access$5(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 94
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "id"

    neg-int v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v5, "ProfileFragment"

    iget-object v4, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/GroupsView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v5, v0, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 100
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 88
    .local v1, "p":Lcom/vkontakte/android/api/Group;
    iget v5, v1, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v5, v3, :cond_0

    .line 89
    iget-object v4, p0, Lcom/vkontakte/android/GroupsView$1;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsView;->access$4(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/GroupsView$SelectionListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/vkontakte/android/GroupsView$SelectionListener;->onItemSelected(Lcom/vkontakte/android/api/Group;)V

    goto :goto_0
.end method
