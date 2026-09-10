.class Lcom/vkontakte/android/NotificationsView$3;
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
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 214
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr p3, v4

    .line 215
    move v3, p3

    .line 216
    .local v3, "pos":I
    if-ltz v3, :cond_0

    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    .line 219
    .local v0, "_e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v4, v0, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    if-nez v4, :cond_3

    :cond_2
    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 220
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    :goto_1
    iget v4, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 221
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v1, "args":Landroid/os/Bundle;
    const-string v4, "title"

    iget-object v5, v2, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 223
    const-string v4, "gid"

    iget v5, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v4, "tid"

    iget v5, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v4, "offset"

    iget v5, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v6, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    rem-int/lit8 v6, v6, 0x14

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v5, "BoardTopicViewFragment"

    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v5, v1, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 219
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto :goto_1

    .line 228
    .restart local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 229
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v4, "entry"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 230
    const-string v5, "PostViewFragment"

    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v5, v1, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
