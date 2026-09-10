.class Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$8;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1902(Lcom/vkontakte/android/fragments/ChatMembersFragment;Z)Z

    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1500(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080090

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 394
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2200(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 396
    return-void

    :cond_0
    move v0, v2

    .line 389
    goto :goto_0

    :cond_1
    move v0, v2

    .line 390
    goto :goto_1

    :cond_2
    move v1, v2

    .line 391
    goto :goto_2
.end method
