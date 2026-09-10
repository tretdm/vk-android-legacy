.class Lcom/vkontakte/android/fragments/CreateChatFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CreateChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 43
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 46
    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v4}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 48
    .end local v0    # "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    const-string v2, "uid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "online"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setUserOnline(II)V

    .line 52
    :cond_1
    return-void
.end method
