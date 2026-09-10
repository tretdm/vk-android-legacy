.class Lcom/vkontakte/android/fragments/DialogsFragment$3;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 346
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 347
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 349
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 335
    return-void
.end method
