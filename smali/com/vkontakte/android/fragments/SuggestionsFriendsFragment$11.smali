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

.field private final synthetic val$acc:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->val$acc:Landroid/accounts/Account;

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 610
    const/4 v4, 0x0

    .line 612
    .local v4, "token":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 642
    :goto_0
    if-eqz v4, :cond_0

    .line 644
    new-instance v5, Lcom/vkontakte/android/api/GmailGetContacts;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->val$acc:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/vkontakte/android/api/GmailGetContacts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    new-instance v6, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->val$acc:Landroid/accounts/Account;

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;Landroid/accounts/Account;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/GmailGetContacts;->setCallback(Lcom/vkontakte/android/api/GmailGetContacts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 674
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 676
    :cond_0
    :goto_1
    return-void

    .line 619
    :catch_0
    move-exception v2

    .line 620
    .local v2, "recoverableException":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    const-string v5, "vk"

    invoke-static {v5, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    invoke-virtual {v2}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 623
    .local v3, "recoveryIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const/16 v6, 0x67

    invoke-virtual {v5, v3, v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 624
    .end local v2    # "recoverableException":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .end local v3    # "recoveryIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 626
    .local v0, "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unrecoverable authentication exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 628
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 631
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1

    .line 633
    .end local v0    # "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    :catch_2
    move-exception v1

    .line 634
    .local v1, "ioEx":Ljava/io/IOException;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "transient error encountered: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 636
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$2;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 639
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_1

    .line 613
    .end local v1    # "ioEx":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method
