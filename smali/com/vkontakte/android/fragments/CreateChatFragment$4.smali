.class Lcom/vkontakte/android/fragments/CreateChatFragment$4;
.super Ljava/lang/Object;
.source "CreateChatFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$4;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 142
    .local v0, "ns":Z
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$4;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/fragments/CreateChatFragment;->updateFilter(Ljava/lang/String;)V

    .line 143
    return v1

    .end local v0    # "ns":Z
    :cond_0
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$4;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$4;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 136
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v4
.end method
