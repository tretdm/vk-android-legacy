.class Lcom/vkontakte/android/fragments/ChatMembersFragment$3;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->onAttach(Landroid/app/Activity;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 172
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$17(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->resolveIndex(I)[I

    move-result-object v2

    .line 173
    .local v2, "p":[I
    aget v3, v2, v4

    .local v3, "section":I
    aget v1, v2, v5

    .line 174
    .local v1, "item":I
    if-ne v3, v5, :cond_1

    .line 175
    if-nez v1, :cond_0

    .line 176
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$20(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lde/ankri/views/Switch;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$20(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lde/ankri/views/Switch;

    move-result-object v7

    invoke-virtual {v7}, Lde/ankri/views/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v4}, Lde/ankri/views/Switch;->setChecked(Z)V

    .line 178
    :cond_0
    if-ne v1, v5, :cond_1

    .line 179
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$21(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 182
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "id"

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ChatUser;

    iget-object v4, v4, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v4, "ProfileFragment"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 191
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2
    :goto_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 192
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$23(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 194
    :cond_3
    return-void

    :cond_4
    move v4, v5

    .line 176
    goto :goto_0

    .line 188
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$22(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    goto :goto_1
.end method
