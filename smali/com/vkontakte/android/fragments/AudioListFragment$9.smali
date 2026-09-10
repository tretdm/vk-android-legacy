.class Lcom/vkontakte/android/fragments/AudioListFragment$9;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioListFragment$9;)Lcom/vkontakte/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$23(Lcom/vkontakte/android/fragments/AudioListFragment;Z)V

    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$24(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    new-instance v2, Lcom/vkontakte/android/fragments/AudioListFragment$9$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment$9$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$9;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V

    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    return v1

    :cond_1
    move v0, v1

    .line 352
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 338
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$21(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$22(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "f":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 344
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$9;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 345
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 347
    .end local v0    # "f":Landroid/view/View;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
