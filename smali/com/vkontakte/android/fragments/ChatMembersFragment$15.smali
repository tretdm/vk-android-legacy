.class Lcom/vkontakte/android/fragments/ChatMembersFragment$15;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveChat()V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 586
    const/4 v1, -0x1

    .line 587
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 593
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 595
    :goto_2
    return-void

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ChatUser;

    iget-object v2, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_1

    .line 589
    move v1, v0

    .line 590
    goto :goto_1

    .line 587
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$29(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    goto :goto_2
.end method
