.class Lcom/vkontakte/android/fragments/DialogsFragment$4;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->updateQuery(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    :goto_0
    return v1

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 276
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->updateQuery(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$4;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$6(Lcom/vkontakte/android/fragments/DialogsFragment;Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x1

    goto :goto_0
.end method
