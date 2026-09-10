.class Lcom/vkontakte/android/fragments/ChatMembersFragment$4;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 213
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$24(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 221
    :goto_0
    return v3

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$25(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$26(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 220
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method
