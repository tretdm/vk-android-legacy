.class Lcom/vkontakte/android/fragments/VideoListFragment$3;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/VideoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$600(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$400(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$600(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$602(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    new-instance v1, Lcom/vkontakte/android/fragments/VideoListFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/VideoListFragment$3$1;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment$3;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$602(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$400(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$600(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/VideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$600(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$400(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$600(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VideoListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$602(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1, p1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$700(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 139
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 140
    const/4 v1, 0x1

    return v1
.end method
