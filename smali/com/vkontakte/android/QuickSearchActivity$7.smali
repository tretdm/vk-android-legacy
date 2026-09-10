.class Lcom/vkontakte/android/QuickSearchActivity$7;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/QuickSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$7;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$7;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/QuickSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 214
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 215
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$7;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$800(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$7;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$900(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$7;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v2}, Lcom/vkontakte/android/QuickSearchActivity;->access$800(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$7;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$800(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 218
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$7;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/QuickSearchActivity;->access$802(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 220
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
