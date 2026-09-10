.class Lcom/vkontakte/android/fragments/DialogsFragment$1$2;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


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

.field private final synthetic val$e:Lcom/vkontakte/android/DialogEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$1;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;->val$e:Lcom/vkontakte/android/DialogEntry;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 218
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;->val$e:Lcom/vkontakte/android/DialogEntry;

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iput-object p2, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 219
    if-eqz p3, :cond_0

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;->val$e:Lcom/vkontakte/android/DialogEntry;

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iput-object p3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 222
    return-void
.end method
