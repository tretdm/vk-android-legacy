.class Lcom/vkontakte/android/fragments/CreateChatFragment$2;
.super Ljava/lang/Object;
.source "CreateChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/vkontakte/android/UserProfile;)V
    .locals 8
    .param p1, "p"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    const/4 v7, -0x1

    const v6, 0x7f09002b

    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "chat"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getSelectedUsers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69
    .local v0, "cnt":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0800c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, -0x7f000001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .end local v0    # "cnt":I
    :goto_1
    return-void

    .line 69
    .restart local v0    # "cnt":I
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 78
    .end local v0    # "cnt":I
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 81
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1
.end method
