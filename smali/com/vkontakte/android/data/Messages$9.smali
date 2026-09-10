.class Lcom/vkontakte/android/data/Messages$9;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
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
    iput p1, p0, Lcom/vkontakte/android/data/Messages$9;->val$chatID:I

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$9;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 567
    iget v2, p0, Lcom/vkontakte/android/data/Messages$9;->val$chatID:I

    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->getChatUsers(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 568
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get users from cache, size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 570
    iget v2, p0, Lcom/vkontakte/android/data/Messages$9;->val$chatID:I

    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$9;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    invoke-static {v2, v3}, Lcom/vkontakte/android/data/Messages;->access$7(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 575
    :goto_0
    return-void

    .line 572
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/data/Messages$9;->val$chatID:I

    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->getChatInfo(I)[Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "info":[Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$9;->val$getChatUsersCallback:Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-interface {v2, v1, v3, v4}, Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
