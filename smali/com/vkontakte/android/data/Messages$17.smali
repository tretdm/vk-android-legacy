.class final Lcom/vkontakte/android/data/Messages$17;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetChat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chatID:I

.field final synthetic val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# direct methods
.method constructor <init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 0

    .prologue
    .line 1001
    iput p1, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$17;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

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

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 1026
    iget v1, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    invoke-static {v1, v2, v0, v2}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$17;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    invoke-interface {v1, v0, v2, v2}, Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 5
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "adminID"    # I
    .param p5, "dnd"    # I
    .param p6, "mute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const-string v3, "vk"

    const-string v4, "chat users loaded"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 1006
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    const v4, 0x77359400

    add-int/2addr v3, v4

    iput v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 1007
    iput-object p2, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1008
    iput-object p3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 1009
    iput p4, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 1010
    iput p4, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 1011
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1012
    .local v2, "x":Landroid/os/Bundle;
    const-string v3, "dnd"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    const-string v3, "mute"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1014
    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 1018
    iget v3, p0, Lcom/vkontakte/android/data/Messages$17;->val$chatID:I

    invoke-static {v3, p2, p1, p3}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1019
    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$17;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    return-void
.end method
