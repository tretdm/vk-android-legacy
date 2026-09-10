.class Lcom/vkontakte/android/fragments/ChatMembersFragment$9;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060051

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 439
    return-void
.end method

.method public success(I)V
    .locals 7
    .param p1, "chatID"    # I

    .prologue
    .line 415
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 416
    .local v4, "profile":Lcom/vkontakte/android/UserProfile;
    const v5, 0x77359400

    add-int/2addr v5, p1

    iput v5, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 417
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$23(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 418
    sget v5, Lcom/vkontakte/android/Global;->uid:I

    iput v5, v4, Lcom/vkontakte/android/UserProfile;->online:I

    .line 419
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v3, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "M"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 424
    const-string v5, "|"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/ArrayList;)V

    .line 428
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 429
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "id"

    iget v6, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    const-string v5, "title"

    iget-object v6, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 431
    const-string v5, "ChatFragment"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 432
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 433
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 434
    return-void

    .line 422
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ChatUser;

    iget-object v5, v5, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
