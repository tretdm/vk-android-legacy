.class public Lcom/vkontakte/android/data/Friends;
.super Ljava/lang/Object;
.source "Friends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/data/Friends$Folder;,
        Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;,
        Lcom/vkontakte/android/data/Friends$GetUsersCallback;
    }
.end annotation


# static fields
.field public static final ACTION_FRIEND_LIST_CHANGED:Ljava/lang/String; = "com.vkontakte.android.FRIEND_LIST_CHANGED"

.field public static final ACTION_FRIEND_REQUESTS_CHANGED:Ljava/lang/String; = "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

.field public static final CASE_ABL:I = 0x5

.field public static final CASE_ACC:I = 0x3

.field public static final CASE_DAT:I = 0x2

.field public static final CASE_GEN:I = 0x1

.field public static final CASE_INS:I = 0x4

.field public static final CASE_NOM:I = 0x0

.field private static final DEBUG:Z = false

.field public static final IMPORT_SERVICE_CONTACTS:I = 0x0

.field public static final IMPORT_SERVICE_FACEBOOK:I = 0x2

.field public static final IMPORT_SERVICE_GOOGLE:I = 0x1

.field public static final IMPORT_SERVICE_MAIL:I = 0x3

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

.field private static loading:Z

.field private static semaphore:Ljava/util/concurrent/Semaphore;

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getFriends()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->lists:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    .line 72
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    .line 73
    sput-boolean v2, Lcom/vkontakte/android/data/Friends;->loadedOnlines:Z

    .line 74
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 75
    sput-boolean v2, Lcom/vkontakte/android/data/Friends;->loading:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 75
    sput-boolean p0, Lcom/vkontakte/android/data/Friends;->loading:Z

    return-void
.end method

.method static synthetic access$1()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4()Lcom/vkontakte/android/SearchIndexer;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    return-object v0
.end method

.method static synthetic access$5()V
    .locals 0

    .prologue
    .line 141
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->updateIndex()V

    return-void
.end method

.method static synthetic access$6(Z)V
    .locals 0

    .prologue
    .line 73
    sput-boolean p0, Lcom/vkontakte/android/data/Friends;->loadedOnlines:Z

    return-void
.end method

.method static synthetic access$7(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 68
    sput-object p0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$8()Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public static add(Lcom/vkontakte/android/UserProfile;)V
    .locals 4
    .param p0, "user"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 223
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/Cache;->updateFriends(Ljava/util/ArrayList;Z)V

    .line 230
    sget-object v1, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/SearchIndexer;->add(Lcom/vkontakte/android/Indexable;)V

    .line 231
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    return-void

    .line 223
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get(I)Lcom/vkontakte/android/UserProfile;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 185
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 193
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 186
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 187
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 188
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 185
    .end local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v1

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
    .line 166
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    sget-boolean v0, Lcom/vkontakte/android/data/Friends;->loadedOnlines:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 169
    :cond_0
    sget-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    return-void
.end method

.method public static getFromAll(I)Lcom/vkontakte/android/UserProfile;
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    sget-object v4, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    sget-object v4, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 205
    sget-object v4, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 206
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    if-eqz v1, :cond_2

    .line 219
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :goto_1
    return-object v1

    .line 198
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 199
    .local v3, "user":Lcom/vkontakte/android/UserProfile;
    iget v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, p0, :cond_0

    .line 200
    sget-object v4, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    move-object v1, v3

    .line 201
    goto :goto_1

    .line 207
    .end local v3    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    new-array v4, v7, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 208
    .local v0, "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 209
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 210
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v4, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :cond_3
    new-array v4, v7, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 214
    .local v2, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 215
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 216
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v4, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 197
    .end local v0    # "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v2    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private static getGroup(I)Lcom/vkontakte/android/UserProfile;
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 283
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getById(I)Lcom/vkontakte/android/api/Group;

    move-result-object v0

    .line 284
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    .line 285
    :cond_0
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 286
    .local v1, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v2, v2

    iput v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 287
    iget-object v2, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 288
    iget-object v2, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getImportedContacts(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V
    .locals 2
    .param p0, "service"    # I
    .param p1, "callback"    # Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;

    .prologue
    .line 392
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/data/Friends$4;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Friends$4;-><init>(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 417
    return-void
.end method

.method public static getOnlineStatus(I)I
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 173
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 181
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 174
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 175
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 176
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 177
    iget v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_1

    .line 173
    .end local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/vkontakte/android/data/Friends$GetUsersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkontakte/android/data/Friends$GetUsersCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;I)V

    .line 294
    return-void
.end method

.method public static getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;I)V
    .locals 7
    .param p1, "callback"    # Lcom/vkontakte/android/data/Friends$GetUsersCallback;
    .param p2, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkontakte/android/data/Friends$GetUsersCallback;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 310
    if-nez p2, :cond_2

    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 323
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 325
    invoke-interface {p1, v2}, Lcom/vkontakte/android/data/Friends$GetUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;)V

    .line 364
    :goto_2
    return-void

    .line 302
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 303
    .local v3, "uid":I
    if-gtz v3, :cond_4

    const v4, -0x77359400

    if-ge v3, v4, :cond_5

    :cond_4
    sget-object v4, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    shl-int/lit8 v6, p2, 0x18

    or-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    move-object v1, v4

    .line 304
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    :goto_3
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getGroup(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v1

    goto :goto_3

    .line 311
    .end local v3    # "uid":I
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 312
    .restart local v3    # "uid":I
    if-ltz v3, :cond_1

    .line 313
    sget-object v4, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 314
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget v6, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v6, v3, :cond_7

    .line 315
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "uid":I
    :cond_8
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/data/Friends$2;

    invoke-direct {v5, v0, p2, v2, p1}, Lcom/vkontakte/android/data/Friends$2;-><init>(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 363
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public static getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
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
    .line 367
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 388
    :goto_0
    return-object v2

    .line 373
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 374
    .local v1, "lock":Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 375
    .local v0, "done":[Z
    new-instance v3, Lcom/vkontakte/android/data/Friends$3;

    invoke-direct {v3, v2, v0, v1}, Lcom/vkontakte/android/data/Friends$3;-><init>(Ljava/util/ArrayList;[ZLjava/lang/Object;)V

    invoke-static {p0, v3, p1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;I)V

    .line 384
    monitor-enter v1

    .line 385
    const/4 v3, 0x0

    :try_start_0
    aget-boolean v3, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 386
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
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

    .line 386
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
    .line 270
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    sget-object v2, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 275
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 280
    return-void

    .line 272
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 276
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 270
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v1    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isFriend(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 155
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 155
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 156
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 158
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static reload(Z)V
    .locals 2
    .param p0, "forceNetwork"    # Z

    .prologue
    .line 79
    sget-boolean v0, Lcom/vkontakte/android/data/Friends;->loading:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/data/Friends$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Friends$1;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static remove(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 235
    invoke-static {p0}, Lcom/vkontakte/android/data/Friends;->get(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v0

    .line 236
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    sget-object v1, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 240
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->removeFriend(I)V

    .line 241
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->updateIndex()V

    .line 242
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 426
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    sget-object v0, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    sget-object v0, Lcom/vkontakte/android/data/Friends;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    sget-object v0, Lcom/vkontakte/android/data/Friends;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    sget-object v0, Lcom/vkontakte/android/data/Friends;->users:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 431
    sget-object v0, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 432
    return-void

    .line 426
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resultFromApi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "resp"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 442
    return-void
.end method

.method public static saveImportedContacts(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "service"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "notOnVk":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v1, 0x0

    .line 420
    invoke-static {p1, v1}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 421
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/vkontakte/android/cache/Cache;->saveImportedContacts(Ljava/util/List;IZ)V

    .line 422
    invoke-static {p2, p0, v1}, Lcom/vkontakte/android/cache/Cache;->saveImportedContacts(Ljava/util/List;IZ)V

    .line 423
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
    .line 435
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
    .line 259
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :goto_1
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 267
    return-void

    .line 260
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 261
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 262
    iput p1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_1

    .line 259
    .end local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setOnlines(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, "mobileOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    sget-object v1, Lcom/vkontakte/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    sget-object v1, Lcom/vkontakte/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 256
    return-void

    .line 247
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 248
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const/4 v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_1

    .line 250
    :cond_1
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    const/4 v2, 0x3

    iput v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_1

    .line 253
    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_1

    .line 246
    .end local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static updateIndex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 142
    sget-object v2, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v2}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 143
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 144
    .local v0, "me":Lcom/vkontakte/android/UserProfile;
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    iput v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 145
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "username"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "sp":[Ljava/lang/String;
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 147
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 149
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 150
    sget-object v2, Lcom/vkontakte/android/data/Friends;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/SearchIndexer;->add(Lcom/vkontakte/android/Indexable;)V

    .line 151
    return-void
.end method
