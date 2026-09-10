.class Lcom/vkontakte/android/data/Messages$10;
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
    iput p1, p0, Lcom/vkontakte/android/data/Messages$10;->val$chatID:I

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$10;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 592
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 584
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const-string v0, "vk"

    const-string v1, "chat users loaded"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget v0, p0, Lcom/vkontakte/android/data/Messages$10;->val$chatID:I

    invoke-static {v0, p2, p1, p3}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$10;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method
