.class Lcom/vkontakte/android/fragments/ChatMembersFragment$7;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->onAttach(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatMembersFragment$7;)Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0, p3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$7;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method
