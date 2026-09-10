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


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

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

    .line 173
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$600(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->resolveIndex(I)[I

    move-result-object v2

    .line 174
    .local v2, "p":[I
    aget v3, v2, v4

    .local v3, "section":I
    aget v1, v2, v5

    .line 175
    .local v1, "item":I
    if-ne v3, v5, :cond_2

    .line 176
    if-nez v1, :cond_1

    .line 177
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$700(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/Switch;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$700(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/Switch;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 179
    :cond_1
    if-ne v1, v5, :cond_2

    .line 180
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$800(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 183
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 184
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "id"

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ChatUser;

    iget-object v4, v4, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v4, "ProfileFragment"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 192
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_3
    :goto_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 193
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 195
    :cond_4
    return-void

    .line 189
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    goto :goto_0
.end method
