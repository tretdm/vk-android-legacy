.class Lcom/vkontakte/android/GroupInvitesView$3;
.super Ljava/lang/Object;
.source "GroupInvitesView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsGetInvites$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupInvitesView;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupInvitesView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupInvitesView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/GroupInvitesView;->access$4(Lcom/vkontakte/android/GroupInvitesView;Lcom/vkontakte/android/APIRequest;)V

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/GroupInvitesView;->access$5(Lcom/vkontakte/android/GroupInvitesView;Z)V

    .line 169
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/GroupInvitation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "invs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/GroupInvitation;>;"
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/GroupInvitesView;->access$4(Lcom/vkontakte/android/GroupInvitesView;Lcom/vkontakte/android/APIRequest;)V

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupInvitesView;->access$0(Lcom/vkontakte/android/GroupInvitesView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupInvitesView;->access$0(Lcom/vkontakte/android/GroupInvitesView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupInvitesView;->updateList()V

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/GroupInvitesView;->access$5(Lcom/vkontakte/android/GroupInvitesView;Z)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupInvitesView;->access$6(Lcom/vkontakte/android/GroupInvitesView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v2, v1}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupInvitesView;->access$7(Lcom/vkontakte/android/GroupInvitesView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/GroupInvitesView;->access$8(Lcom/vkontakte/android/GroupInvitesView;Z)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    iget-object v0, v0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$3;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupInvitesView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.GROUP_INVITES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 163
    return-void
.end method
