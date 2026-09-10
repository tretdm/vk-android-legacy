.class Lcom/vkontakte/android/AuthActivity$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AuthActivity;->authDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AuthActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AuthActivity;->setResult(I)V

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AuthActivity;->finish()V

    .line 92
    return-void

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method
