.class public Lcom/vkontakte/android/data/Friends;
.super Ljava/lang/Object;
.source "Friends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/data/Friends$Folder;,
        Lcom/vkontakte/android/data/Friends$GetUsersCallback;
    }
.end annotation


# static fields
.field public static final ACTION_FRIEND_LIST_CHANGED:Ljava/lang/String; = "com.vkontakte.android.FRIEND_LIST_CHANGED"

.field public static final ACTION_FRIEND_REQUESTS_CHANGED:Ljava/lang/String; = "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

.field private static final DEBUG:Z

.field private static friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static index:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/Friends$Folder;",
            ">;"
        }
    .end annotation
.end field

.field private static loadedOnlines:Z

.field private static users:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getFriends()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->lists:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    .line 36
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/data/Friends;->loadedOnlines:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/vkontakte/android/SearchIndexer;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    return-object v0
.end method

.method static synthetic access$3(Z)V
    .locals 0

    .prologue
    .line 37
    sput-boolean p0, Lcom/vkontakte/android/data/Friends;->loadedOnlines:Z

    return-void
.end method

.method static synthetic access$4(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5()Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public static add(Lcom/vkontakte/android/UserProfile;)V
    .locals 4
    .param p0, "user"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 117
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/Cache;->updateFriends(Ljava/util/ArrayList;Z)V

    .line 122
    sget-object v1, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/SearchIndexer;->add(Lcom/vkontakte/android/Indexable;)V

    .line 123
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public static get(I)Lcom/vkontakte/android/UserProfile;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 110
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 111
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    goto :goto_0
.end method

.method public static getFriends(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 96
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    sget-boolean v0, Lcom/vkontakte/android/data/Friends;->loadedOnlines:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 99
    :cond_0
    sget-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    return-void
.end method

.method private static getGroup(I)Lcom/vkontakte/android/UserProfile;
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 165
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getById(I)Lcom/vkontakte/android/api/Group;

    move-result-object v0

    .line 166
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 171
    :goto_0
    return-object v1

    .line 167
    :cond_0
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 168
    .local v1, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v2, v2

    iput v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 169
    iget-object v2, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 170
    iget-object v2, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOnlineStatus(I)I
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 103
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 104
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    iget v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0
.end method

.method public static getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/vkontakte/android/data/Friends$GetUsersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkontakte/android/data/Friends$GetUsersCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 190
    invoke-interface {p1, v2}, Lcom/vkontakte/android/data/Friends$GetUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;)V

    .line 228
    :goto_1
    return-void

    .line 180
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 181
    .local v3, "uid":I
    if-lez v3, :cond_2

    sget-object v4, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    move-object v1, v4

    .line 182
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    :goto_2
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Returned from ram: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getGroup(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v1

    goto :goto_2

    .line 193
    .end local v3    # "uid":I
    :cond_3
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/data/Friends$2;

    invoke-direct {v5, v0, v2, p1}, Lcom/vkontakte/android/data/Friends$2;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public static getUsersBlocking(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 248
    :goto_0
    return-object v2

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 234
    .local v1, "lock":Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 235
    .local v0, "done":[Z
    new-instance v3, Lcom/vkontakte/android/data/Friends$3;

    invoke-direct {v3, v2, v0, v1}, Lcom/vkontakte/android/data/Friends$3;-><init>(Ljava/util/ArrayList;[ZLjava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 244
    monitor-enter v1

    .line 245
    const/4 v3, 0x0

    :try_start_0
    aget-boolean v3, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 246
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 246
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static intersect(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    return-void

    .line 155
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 158
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static isFriend(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 89
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 89
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 90
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static reload(Z)V
    .locals 6
    .param p0, "forceNetwork"    # Z

    .prologue
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    if-nez p0, :cond_0

    .line 43
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getFriends()Ljava/util/ArrayList;

    move-result-object v2

    .line 44
    :cond_0
    if-nez p0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 45
    :cond_1
    new-instance v3, Lcom/vkontakte/android/api/FriendsGet;

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/api/FriendsGet;-><init>(IZ)V

    .line 46
    new-instance v4, Lcom/vkontakte/android/data/Friends$1;

    invoke-direct {v4}, Lcom/vkontakte/android/data/Friends$1;-><init>()V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/FriendsGet;->setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 70
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->setBackground(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 86
    :goto_0
    return-void

    .line 73
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, "onlines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v3, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 77
    sput-object v2, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    .line 78
    sget-object v3, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 82
    sget-object v3, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    sget-object v4, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 83
    sget-object v3, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v3}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 84
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 75
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->online:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 79
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_2
.end method

.method public static remove(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 127
    invoke-static {p0}, Lcom/vkontakte/android/data/Friends;->get(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v0

    .line 128
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->removeFriend(I)V

    .line 131
    sget-object v1, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v1}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 132
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    sget-object v0, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    sget-object v0, Lcom/vkontakte/android/data/Friends;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    sget-object v0, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 256
    return-void
.end method

.method public static search(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "q"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setOnlineStatus(II)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "status"    # I

    .prologue
    .line 145
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 146
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 147
    iput p1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0
.end method

.method public static setOnlines(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    return-void

    .line 136
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 137
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    const/4 v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0

    .line 140
    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0
.end method
