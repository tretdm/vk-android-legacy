.class Lcom/vkontakte/android/NotificationsView$4;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->init()V
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
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "_pos"    # I
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
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x4

    .line 204
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v5}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr p3, v5

    .line 205
    move v4, p3

    .line 206
    .local v4, "pos":I
    if-ltz v4, :cond_0

    sget-object v5, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    sget-object v5, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    .line 209
    .local v0, "_e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 210
    iget-object v3, v0, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 211
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    sget-object v5, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 212
    sget-object v5, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v5, v4, v3}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    .line 213
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    goto :goto_0

    .line 216
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :cond_2
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    if-nez v5, :cond_4

    :cond_3
    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 217
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    :goto_1
    if-nez v2, :cond_5

    .line 218
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "id"

    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v6, "ProfileFragment"

    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v6, v1, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 216
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto :goto_1

    .line 221
    .restart local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_5
    iget v5, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v5, v7, :cond_6

    .line 222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "title"

    iget-object v6, v2, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 224
    const-string v5, "gid"

    iget v6, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v5, "tid"

    iget v6, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v5, "offset"

    iget v6, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v7, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    rem-int/lit8 v7, v7, 0x14

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v6, "BoardTopicViewFragment"

    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v6, v1, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 230
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "entry"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    if-ne v5, v7, :cond_7

    .line 232
    const-string v5, "comment"

    iget-object v6, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    :cond_7
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 234
    const-string v5, "comment"

    iget v6, v0, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    :cond_8
    const-string v6, "PostViewFragment"

    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v6, v1, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
