.class Lcom/vkontakte/android/data/Friends$2;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Friends$GetUsersCallback;

.field private final synthetic val$ids:Ljava/util/ArrayList;

.field private final synthetic val$profiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/data/Friends$2;->val$callback:Lcom/vkontakte/android/data/Friends$GetUsersCallback;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 195
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 197
    .local v0, "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    .end local v0    # "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 205
    new-instance v2, Lcom/vkontakte/android/api/UsersGet;

    iget-object v3, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/vkontakte/android/api/UsersGet;-><init>(Ljava/util/List;)V

    .line 206
    new-instance v3, Lcom/vkontakte/android/data/Friends$2$1;

    iget-object v4, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/vkontakte/android/data/Friends$2$1;-><init>(Lcom/vkontakte/android/data/Friends$2;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/UsersGet;->setCallback(Lcom/vkontakte/android/api/UsersGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/data/Friends$2;->val$callback:Lcom/vkontakte/android/data/Friends$GetUsersCallback;

    iget-object v3, p0, Lcom/vkontakte/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/vkontakte/android/data/Friends$GetUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;)V

    .line 226
    return-void

    .line 198
    .restart local v0    # "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 199
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v3, p0, Lcom/vkontakte/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$5()Landroid/support/v4/util/LruCache;

    move-result-object v3

    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
