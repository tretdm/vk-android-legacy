.class Lcom/vkontakte/android/FriendsView$1;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsView;->init()V
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
.field final synthetic this$0:Lcom/vkontakte/android/FriendsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    .line 82
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
    .line 85
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$5(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$FriendsAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendsView;->access$4(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->resolveIndex(I)[I

    move-result-object v2

    .line 86
    .local v2, "s":[I
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v4, v4, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget v3, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 87
    .local v3, "uid":I
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$0(Lcom/vkontakte/android/FriendsView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$3(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$3(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$6(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$SelectionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$6(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$SelectionListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/vkontakte/android/FriendsView$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$5(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$FriendsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/FriendsView$FriendsAdapter;->notifyDataSetChanged()V

    .line 108
    :goto_1
    return-void

    .line 91
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$3(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$6(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$SelectionListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 97
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$7(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 104
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v5, "ProfileFragment"

    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v5, v0, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_1

    .line 97
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 98
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v3, :cond_3

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/FriendsView$1;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendsView;->access$6(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$SelectionListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/vkontakte/android/FriendsView$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1
.end method
