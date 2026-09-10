.class Lcom/vkontakte/android/fragments/PostViewFragment$28$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$28;->success(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$28;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1145
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1147
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1148
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$300(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$300(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$28$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$28$1$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$28$1;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1155
    return-void
.end method
