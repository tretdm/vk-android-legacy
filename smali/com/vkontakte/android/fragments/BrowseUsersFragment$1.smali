.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$15(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$12(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$16(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "focus":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$12(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/String;)V

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 123
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$13(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$14(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$13(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$13(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 126
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2, v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$0(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/Runnable;)V

    .line 130
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 128
    :cond_1
    new-instance v2, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;)V

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->run()V

    goto :goto_0
.end method
