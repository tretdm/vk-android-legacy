.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;
.super Ljava/lang/Object;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsGetInvites$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$5(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$6(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)V

    .line 154
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

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$5(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->updateList()V

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$6(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$7(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v2, v1}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$8(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)V

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$9(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$10(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)V

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 147
    :cond_1
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.GROUP_INVITES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
