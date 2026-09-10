.class Lcom/vkontakte/android/data/Messages$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


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
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$1;->val$msg:Lcom/vkontakte/android/Message;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$1;->val$senderPhoto:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 97
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$1;->val$msg:Lcom/vkontakte/android/Message;

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$1;->val$senderPhoto:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iput-object v1, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 100
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    return-void
.end method
