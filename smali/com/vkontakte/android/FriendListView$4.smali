.class Lcom/vkontakte/android/FriendListView$4;
.super Ljava/lang/Object;
.source "FriendListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendListView;->init()V
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
.field final synthetic this$0:Lcom/vkontakte/android/FriendListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
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
    .line 164
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-nez v3, :cond_0

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$2(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    iget-object v5, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendListView;->access$14(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p4, v3

    .line 169
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$15(Lcom/vkontakte/android/FriendListView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wall_id"

    long-to-int v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 174
    :cond_1
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 175
    .local v2, "up":Lcom/vkontakte/android/UserProfile;
    long-to-int v3, p4

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 176
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 182
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 188
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$16(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onSelect(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1

    .line 176
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 177
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, v5, :cond_2

    .line 178
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$16(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onSelect(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1

    .line 182
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 183
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, v5, :cond_3

    .line 184
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$16(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onSelect(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1

    .line 167
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v2    # "up":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
