.class Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;
.super Ljava/lang/Object;
.source "OwnerVideoListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$400(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$500(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$400(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$402(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    new-instance v1, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$402(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$500(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$400(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$400(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$500(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$400(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 129
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$402(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v1, p1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$600(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 135
    const/4 v1, 0x1

    return v1
.end method
