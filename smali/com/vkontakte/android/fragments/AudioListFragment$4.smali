.class Lcom/vkontakte/android/fragments/AudioListFragment$4;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 253
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1602(Lcom/vkontakte/android/fragments/AudioListFragment;Z)Z

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1700(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1300(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1300(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1302(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    new-instance v2, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$4;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1302(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1400(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1300(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    return v1

    :cond_1
    move v0, v1

    .line 272
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1300(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1400(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1300(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1302(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v2, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1500(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "f":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 264
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 265
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 267
    .end local v0    # "f":Landroid/view/View;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
