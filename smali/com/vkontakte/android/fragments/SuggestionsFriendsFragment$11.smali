.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

.field final synthetic val$acc:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->val$acc:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 608
    const/4 v4, 0x0

    .line 610
    .local v4, "token":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->val$acc:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v7, "oauth2:https://www.google.com/m8/feeds"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 640
    :goto_0
    if-eqz v4, :cond_0

    .line 642
    new-instance v5, Lcom/vkontakte/android/api/GmailGetContacts;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->val$acc:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/vkontakte/android/api/GmailGetContacts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/GmailGetContacts;->setCallback(Lcom/vkontakte/android/api/GmailGetContacts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 674
    :cond_0
    :goto_1
    return-void

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, "recoverableException":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    const-string v5, "vk"

    invoke-static {v5, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    invoke-virtual {v2}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 621
    .local v3, "recoveryIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const/16 v6, 0x67

    invoke-virtual {v5, v3, v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 622
    .end local v2    # "recoverableException":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .end local v3    # "recoveryIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 624
    .local v0, "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecoverable authentication exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 626
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 629
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1

    .line 631
    .end local v0    # "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    :catch_2
    move-exception v1

    .line 632
    .local v1, "ioEx":Ljava/io/IOException;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transient error encountered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 634
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$2;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 637
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_1

    .line 611
    .end local v1    # "ioEx":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method
