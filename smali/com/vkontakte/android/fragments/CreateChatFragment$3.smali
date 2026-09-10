.class Lcom/vkontakte/android/fragments/CreateChatFragment$3;
.super Ljava/lang/Object;
.source "CreateChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getSelectedUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "users"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getSelectedUsers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
