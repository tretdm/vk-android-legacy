.class Lcom/vkontakte/android/fragments/VideoListFragment$3;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/VideoListFragment$3;)Lcom/vkontakte/android/fragments/VideoListFragment;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    return-object v0
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$7(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$4(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$7(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$8(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/Runnable;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    new-instance v1, Lcom/vkontakte/android/fragments/VideoListFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/VideoListFragment$3$1;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment$3;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$8(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$4(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$7(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/VideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$7(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$4(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$7(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VideoListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 129
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$8(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1, p1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$9(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$3;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    const/4 v1, 0x1

    return v1
.end method
