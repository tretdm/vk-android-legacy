.class Lcom/vkontakte/android/fragments/GroupListFragment$3;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 128
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 130
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 133
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$6(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    .line 117
    return-void
.end method
