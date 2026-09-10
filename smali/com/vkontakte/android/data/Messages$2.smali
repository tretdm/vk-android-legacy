.class Lcom/vkontakte/android/data/Messages$2;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$msg:Lcom/vkontakte/android/Message;

.field private final synthetic val$senderPhoto:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/Message;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$2;->val$msg:Lcom/vkontakte/android/Message;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$2;->val$senderPhoto:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    .line 108
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 109
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iput-object p2, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$2;->val$msg:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->peer:I

    iput v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 111
    if-eqz p3, :cond_0

    .line 112
    iput-object p3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 116
    :goto_0
    new-instance v0, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 117
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$2;->val$msg:Lcom/vkontakte/android/Message;

    iput-object v2, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$2;->val$senderPhoto:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 119
    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 120
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    return-void

    .line 114
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_0
    invoke-static {p1}, Lcom/vkontakte/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0
.end method
