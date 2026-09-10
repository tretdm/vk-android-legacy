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

.field private final synthetic val$id:I

.field private final synthetic val$req:Lcom/vkontakte/android/APIRequest;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NetworkStateReceiver$2;Lcom/vkontakte/android/APIRequest;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->this$1:Lcom/vkontakte/android/NetworkStateReceiver$2;

    iput-object p2, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$req:Lcom/vkontakte/android/APIRequest;

    iput p3, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$id:I

    .line 133
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 146
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 147
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$id:I

    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->deleteApiRequest(I)V

    .line 149
    :cond_1
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 135
    iget-object v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$req:Lcom/vkontakte/android/APIRequest;

    iget-object v4, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v5, "method"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "m":Ljava/lang/String;
    const-string v4, "friends.add"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$req:Lcom/vkontakte/android/APIRequest;

    iget-object v4, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v5, "user_id"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, "uid":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 141
    .local v1, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    invoke-static {v4}, Lcom/vkontakte/android/data/Friends;->add(Lcom/vkontakte/android/UserProfile;)V

    .line 143
    .end local v1    # "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v2    # "uid":I
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iget v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$2$1;->val$id:I

    invoke-static {v4}, Lcom/vkontakte/android/cache/Cache;->deleteApiRequest(I)V

    .line 144
    return-void
.end method
