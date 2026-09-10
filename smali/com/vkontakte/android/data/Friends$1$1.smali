.class Lcom/vkontakte/android/data/Friends$1$1;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Friends$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Friends$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Friends$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Friends$1$1;->this$1:Lcom/vkontakte/android/data/Friends$1;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getFriends()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->access$7(Ljava/util/ArrayList;)V

    .line 111
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reload friends failed, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$2()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$4()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$2()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 113
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$5()V

    .line 114
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->access$6(Z)V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->access$0(Z)V

    .line 117
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 5
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
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v4, 0x1

    .line 92
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$1()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$2()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$2()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$1()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 97
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$3()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-static {p1, v4}, Lcom/vkontakte/android/cache/Cache;->updateFriends(Ljava/util/ArrayList;Z)V

    .line 101
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$4()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v1

    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$2()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 102
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$5()V

    .line 103
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    invoke-static {v4}, Lcom/vkontakte/android/data/Friends;->access$6(Z)V

    .line 105
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->access$0(Z)V

    .line 106
    return-void

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 99
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$3()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
