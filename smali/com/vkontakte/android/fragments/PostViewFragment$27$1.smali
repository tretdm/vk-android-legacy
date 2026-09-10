.class Lcom/vkontakte/android/fragments/PostViewFragment$27$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$27;->success(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$27;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27$1;)Lcom/vkontakte/android/fragments/PostViewFragment$27;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$27;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1060
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$27;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1062
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$27;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$27;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$27;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$27$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$27$1$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$27$1;)V

    .line 1065
    const-wide/16 v3, 0xc8

    .line 1063
    invoke-virtual {v1, v2, v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1066
    return-void
.end method
