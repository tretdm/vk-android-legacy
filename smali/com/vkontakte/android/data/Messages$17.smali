.class Lcom/vkontakte/android/data/Messages$17;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetChat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$chatID:I

.field private final synthetic val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# direct methods
.method constructor <init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$17;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 1013
    iget v1, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    invoke-static {v1, v2, v0, v2}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$17;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    invoke-interface {v1, v0, v2, v2}, Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "adminID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const-string v2, "vk"

    const-string v3, "chat users loaded"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 998
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v2, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    const v3, 0x77359400

    add-int/2addr v2, v3

    iput v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 999
    iput-object p2, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1000
    iput-object p3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 1001
    iput p4, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 1005
    iget v2, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    invoke-static {v2, p2, p1, p3}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1006
    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$17;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void
.end method
