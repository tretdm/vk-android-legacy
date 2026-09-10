.class Lcom/vkontakte/android/AuthActivity$5;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AuthActivity;->authDone(ILjava/util/HashMap;)V
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
    .line 125
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 128
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Will upload photo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-static {v6}, Lcom/vkontakte/android/AuthActivity;->access$000(Lcom/vkontakte/android/AuthActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/AuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/AuthActivity;->setResult(I)V

    .line 134
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    :try_start_1
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 137
    .local v3, "response":Landroid/os/Parcelable;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v2, "res":Landroid/os/Bundle;
    const-string v4, "authAccount"

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "accountType"

    const-string v5, "com.vkontakte.account"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/AuthActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .end local v2    # "res":Landroid/os/Bundle;
    .end local v3    # "response":Landroid/os/Parcelable;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-static {v4}, Lcom/vkontakte/android/AuthActivity;->access$000(Lcom/vkontakte/android/AuthActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 145
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    const-class v5, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v4, "file"

    iget-object v5, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-static {v5}, Lcom/vkontakte/android/AuthActivity;->access$000(Lcom/vkontakte/android/AuthActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v4, v1}, Lcom/vkontakte/android/AuthActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 150
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-static {v4, v8}, Lcom/vkontakte/android/AuthActivity;->access$002(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget-object v4, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/AuthActivity;->finish()V

    .line 152
    return-void

    .line 142
    :catch_0
    move-exception v4

    goto :goto_1

    .line 132
    :catch_1
    move-exception v4

    goto :goto_0
.end method
