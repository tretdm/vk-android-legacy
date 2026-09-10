.class Lcom/vkontakte/android/fragments/ChatMembersFragment$10;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesCreateChat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->createChat()V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 483
    return-void
.end method

.method public success(I)V
    .locals 5
    .param p1, "chatID"    # I

    .prologue
    .line 464
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 465
    .local v2, "profile":Lcom/vkontakte/android/UserProfile;
    const v3, 0x77359400

    add-int/2addr v3, p1

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 466
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$25(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 467
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->online:I

    .line 468
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 472
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "id"

    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    const-string v3, "title"

    iget-object v4, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 475
    const-string v3, "ChatFragment"

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 476
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 477
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 478
    return-void
.end method
