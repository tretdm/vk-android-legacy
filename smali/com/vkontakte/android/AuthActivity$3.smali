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

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/AuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/AuthActivity;->setResult(I)V

    .line 132
    iget-object v3, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    :try_start_1
    iget-object v3, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 135
    .local v2, "response":Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v1, "res":Landroid/os/Bundle;
    const-string v3, "authAccount"

    sget-object v4, Lcom/vkontakte/android/Global;->myName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "accountType"

    const-string v4, "com.vkontakte.account"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/AuthActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .end local v1    # "res":Landroid/os/Bundle;
    .end local v2    # "response":Landroid/os/Parcelable;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/AuthActivity$3;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AuthActivity;->finish()V

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v3

    goto :goto_1

    .line 130
    :catch_1
    move-exception v3

    goto :goto_0
.end method
