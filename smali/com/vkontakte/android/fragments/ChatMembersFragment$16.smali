.class Lcom/vkontakte/android/fragments/ChatMembersFragment$16;
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

.field private final synthetic val$p:Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;->val$p:Lcom/vkontakte/android/UserProfile;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f060051

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 621
    return-void

    .line 620
    :cond_0
    const v0, 0x7f06004e

    goto :goto_0
.end method

.method public success()V
    .locals 5

    .prologue
    .line 609
    new-instance v0, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v0}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 610
    .local v0, "cu":Lcom/vkontakte/android/ChatUser;
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 611
    iget-object v1, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    iput v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 612
    iget-object v1, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "username"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;->val$p:Lcom/vkontakte/android/UserProfile;

    iput-object v1, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 614
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$26(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 616
    return-void
.end method
