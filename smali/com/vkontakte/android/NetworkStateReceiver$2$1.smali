.class Lcom/vkontakte/android/NetworkStateReceiver$2$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NetworkStateReceiver$2;

.field private final synthetic val$preq:Lcom/vkontakte/android/data/PersistentAPIRequest;

.field private final synthetic val$req:Lcom/vkontakte/android/APIRequest;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NetworkStateReceiver$2;Lcom/vkontakte/android/APIRequest;Lcom/vkontakte/android/data/PersistentAPIRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->this$1:Lcom/vkontakte/android/NetworkStateReceiver$2;

    iput-object p2, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$req:Lcom/vkontakte/android/APIRequest;

    iput-object p3, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$preq:Lcom/vkontakte/android/data/PersistentAPIRequest;

    .line 135
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 153
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$preq:Lcom/vkontakte/android/data/PersistentAPIRequest;

    iget v0, v0, Lcom/vkontakte/android/data/PersistentAPIRequest;->id:I

    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->deleteApiRequest(I)V

    .line 156
    :cond_1
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 137
    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$req:Lcom/vkontakte/android/APIRequest;

    iget-object v5, v5, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v6, "method"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "m":Ljava/lang/String;
    const-string v5, "friends.add"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$req:Lcom/vkontakte/android/APIRequest;

    iget-object v5, v5, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "uid":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    .local v1, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    invoke-static {v5}, Lcom/vkontakte/android/data/Friends;->add(Lcom/vkontakte/android/UserProfile;)V

    .line 145
    .end local v1    # "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v2    # "uid":I
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$preq:Lcom/vkontakte/android/data/PersistentAPIRequest;

    iget v5, v5, Lcom/vkontakte/android/data/PersistentAPIRequest;->id:I

    invoke-static {v5}, Lcom/vkontakte/android/cache/Cache;->deleteApiRequest(I)V

    .line 146
    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$preq:Lcom/vkontakte/android/data/PersistentAPIRequest;

    iget-object v5, v5, Lcom/vkontakte/android/data/PersistentAPIRequest;->callback:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$preq:Lcom/vkontakte/android/data/PersistentAPIRequest;

    iget-object v5, v5, Lcom/vkontakte/android/data/PersistentAPIRequest;->callback:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$preq:Lcom/vkontakte/android/data/PersistentAPIRequest;

    iget-object v9, v9, Lcom/vkontakte/android/data/PersistentAPIRequest;->userdata:Lorg/json/JSONObject;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
