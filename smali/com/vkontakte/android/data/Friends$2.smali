.class Lcom/vkontakte/android/data/Friends$2;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Friends$GetUsersCallback;

.field private final synthetic val$ids:Ljava/util/ArrayList;

.field private final synthetic val$nameCase:I

.field private final synthetic val$profiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iput p2, p0, Lcom/vkontakte/android/data/Friends$2;->val$nameCase:I

    iput-object p3, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vkontakte/android/data/Friends$2;->val$callback:Lcom/vkontakte/android/data/Friends$GetUsersCallback;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 330
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkontakte/android/data/Friends$2;->val$nameCase:I

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/List;ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 332
    .local v0, "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 339
    .end local v0    # "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 340
    new-instance v2, Lcom/vkontakte/android/api/UsersGet;

    iget-object v3, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iget v4, p0, Lcom/vkontakte/android/data/Friends$2;->val$nameCase:I

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/api/UsersGet;-><init>(Ljava/util/List;I)V

    .line 341
    new-instance v3, Lcom/vkontakte/android/data/Friends$2$1;

    iget v4, p0, Lcom/vkontakte/android/data/Friends$2;->val$nameCase:I

    iget-object v5, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/vkontakte/android/data/Friends$2$1;-><init>(Lcom/vkontakte/android/data/Friends$2;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/UsersGet;->setCallback(Lcom/vkontakte/android/api/UsersGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$callback:Lcom/vkontakte/android/data/Friends$GetUsersCallback;

    iget-object v3, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/vkontakte/android/data/Friends$GetUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;)V

    .line 362
    return-void

    .line 333
    .restart local v0    # "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 334
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v3, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$8()Landroid/support/v4/util/LruCache;

    move-result-object v3

    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, p0, Lcom/vkontakte/android/data/Friends$2;->val$nameCase:I

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
