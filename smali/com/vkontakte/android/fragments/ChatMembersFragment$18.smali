.class Lcom/vkontakte/android/fragments/ChatMembersFragment$18;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

.field final synthetic val$p:Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->val$p:Lcom/vkontakte/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0d00d0

    .line 688
    const/16 v2, 0xf

    if-ne p1, v2, :cond_2

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "err":Ljava/lang/String;
    const-string v2, "already left"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v3, 0x7f0d005d

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 696
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 705
    .end local v0    # "err":Ljava/lang/String;
    :goto_1
    return-void

    .line 692
    .restart local v0    # "err":Ljava/lang/String;
    :cond_1
    const-string v2, "already in"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v3, 0x7f0d005c

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    const v1, 0x7f0d00ce

    :cond_3
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public success()V
    .locals 5

    .prologue
    .line 677
    new-instance v0, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v0}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 678
    .local v0, "cu":Lcom/vkontakte/android/ChatUser;
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 679
    iget-object v1, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    iput v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 680
    iget-object v1, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "username"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 681
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->val$p:Lcom/vkontakte/android/UserProfile;

    iput-object v1, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 682
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 684
    return-void
.end method
