.class Lcom/vkontakte/android/data/Friends$2$1;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Lcom/vkontakte/android/api/UsersGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Friends$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Friends$2;

.field private final synthetic val$ids:Ljava/util/ArrayList;

.field private final synthetic val$profiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Friends$2;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Friends$2$1;->this$1:Lcom/vkontakte/android/data/Friends$2;

    iput-object p2, p0, Lcom/vkontakte/android/data/Friends$2$1;->val$profiles:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/data/Friends$2$1;->val$ids:Ljava/util/ArrayList;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/vkontakte/android/data/Friends$2$1;->val$ids:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    .local v0, "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v1, p0, Lcom/vkontakte/android/data/Friends$2$1;->val$profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 209
    .local p1, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-static {p1}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/ArrayList;)V

    .line 210
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/vkontakte/android/data/Friends$2$1;->val$profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    return-void

    .line 210
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 211
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$5()Landroid/support/v4/util/LruCache;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
