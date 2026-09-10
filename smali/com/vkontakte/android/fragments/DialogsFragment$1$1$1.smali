.class Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->onUnreadCountLoaded(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

.field final synthetic val$e:Lcom/vkontakte/android/DialogEntry;

.field final synthetic val$peer:I

.field final synthetic val$unread:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$1$1;ILcom/vkontakte/android/DialogEntry;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->this$2:Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    iput p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->val$peer:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->val$e:Lcom/vkontakte/android/DialogEntry;

    iput p4, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->val$unread:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    .line 149
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 150
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->val$peer:I

    iput v1, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 151
    iput-object p3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 152
    iput-object p2, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->val$e:Lcom/vkontakte/android/DialogEntry;

    iput-object v0, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->val$e:Lcom/vkontakte/android/DialogEntry;

    iget v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->val$unread:I

    iput v2, v1, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 156
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->this$2:Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->this$2:Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    return-void
.end method
