.class Lcom/vkontakte/android/fragments/AudioListFragment$11;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioListFragment$11;)Lcom/vkontakte/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$24(Lcom/vkontakte/android/fragments/AudioListFragment;Z)V

    .line 411
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$25(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$22(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    new-instance v2, Lcom/vkontakte/android/fragments/AudioListFragment$11$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment$11$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$11;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$22(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V

    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    return v1

    :cond_1
    move v0, v1

    .line 410
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$22(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$23(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "f":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 402
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 403
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 405
    .end local v0    # "f":Landroid/view/View;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
