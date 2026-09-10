.class Lcom/vkontakte/android/fragments/DialogsFragment$1$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$1;Lcom/vkontakte/android/Message;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->val$intent:Landroid/content/Intent;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1$1;)Lcom/vkontakte/android/fragments/DialogsFragment$1;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    return-object v0
.end method


# virtual methods
.method public onUnreadCountLoaded(II)V
    .locals 4
    .param p1, "peer"    # I
    .param p2, "unread"    # I

    .prologue
    const v3, 0x77359400

    .line 135
    if-ge p1, v3, :cond_0

    .line 136
    new-instance v0, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 137
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 138
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->val$intent:Landroid/content/Intent;

    const-string v2, "sender_photo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->val$intent:Landroid/content/Intent;

    const-string v2, "peer_profile"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 140
    iput p2, v0, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 141
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 168
    :goto_0
    return-void

    .line 144
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_0
    new-instance v0, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 145
    .restart local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 146
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->val$intent:Landroid/content/Intent;

    const-string v2, "sender_photo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 147
    sub-int v1, p1, v3

    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$1$1;ILcom/vkontakte/android/DialogEntry;I)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method
