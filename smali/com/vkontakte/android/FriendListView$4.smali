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

    .line 167
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
    .line 170
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-nez v3, :cond_0

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    iget-object v5, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendListView;->access$16(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;

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

    .line 175
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$17(Lcom/vkontakte/android/FriendListView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wall_id"

    long-to-int v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$0(Lcom/vkontakte/android/FriendListView;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 181
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 182
    .local v2, "up":Lcom/vkontakte/android/UserProfile;
    long-to-int v3, p4

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 183
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 189
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$5(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 195
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$18(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onSelect(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1

    .line 183
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 184
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, v5, :cond_2

    .line 185
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$18(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onSelect(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1

    .line 189
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 190
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, v5, :cond_3

    .line 191
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$18(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onSelect(Lcom/vkontakte/android/UserProfile;)V

    goto :goto_1

    .line 197
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v2    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_6
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 198
    .restart local v2    # "up":Lcom/vkontakte/android/UserProfile;
    long-to-int v3, p4

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 199
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 204
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$9(Lcom/vkontakte/android/FriendListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$9(Lcom/vkontakte/android/FriendListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    :goto_3
    const v3, 0x7f060072

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$9(Lcom/vkontakte/android/FriendListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f02007e

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$18(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$9(Lcom/vkontakte/android/FriendListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onMultiSelectChanged(I)V

    goto/16 :goto_1

    .line 199
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 200
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, v5, :cond_7

    .line 201
    move-object v2, v1

    goto :goto_2

    .line 205
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_9
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$4;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$9(Lcom/vkontakte/android/FriendListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 206
    :cond_a
    const v4, 0x7f02007d

    goto :goto_4

    .line 173
    .end local v2    # "up":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
