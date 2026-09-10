.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 326
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 327
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$15(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$18(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$19(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$18(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$20(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$21(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$3(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$3(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$6(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 307
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$3(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$20(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    goto :goto_0
.end method
