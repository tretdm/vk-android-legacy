.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 112
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$400(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$002(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "focus":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$002(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 122
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$200(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 125
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2, v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$102(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 129
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 127
    :cond_1
    new-instance v2, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;)V

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->run()V

    goto :goto_0
.end method
