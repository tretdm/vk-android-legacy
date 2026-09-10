.class Lcom/vkontakte/android/fragments/ChatMembersFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 98
    const-string v4, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const-string v4, "id"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "cid":I
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received chat changed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$0(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 102
    const-string v4, "photo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const-string v5, "photo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 109
    .end local v0    # "cid":I
    :cond_1
    const-string v4, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    const-string v4, "id"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, "id":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$4(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 112
    const-string v4, "done"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "done":I
    const-string v4, "total"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 114
    .local v3, "total":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 116
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 117
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 121
    .end local v1    # "done":I
    .end local v2    # "id":I
    .end local v3    # "total":I
    :cond_2
    const-string v4, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    const-string v4, "id"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 123
    .restart local v2    # "id":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$4(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 124
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 126
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4, v8}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$6(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/app/ProgressDialog;)V

    .line 130
    .end local v2    # "id":I
    :cond_3
    const-string v4, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 131
    const-string v4, "id"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 132
    .restart local v2    # "id":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$4(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 133
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4, v8}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$6(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/app/ProgressDialog;)V

    .line 137
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    const v5, 0x7f06004e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 139
    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 140
    const v5, 0x7f060028

    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 141
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    .end local v2    # "id":I
    :cond_5
    return-void
.end method
