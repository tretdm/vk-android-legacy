.class final Lcom/vkontakte/android/data/Friends$4;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Friends;->getImportedContacts(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;

.field final synthetic val$service:I


# direct methods
.method constructor <init>(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V
    .locals 0

    .prologue
    .line 392
    iput p1, p0, Lcom/vkontakte/android/data/Friends$4;->val$service:I

    iput-object p2, p0, Lcom/vkontakte/android/data/Friends$4;->val$callback:Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 394
    iget v10, p0, Lcom/vkontakte/android/data/Friends$4;->val$service:I

    invoke-static {v10}, Lcom/vkontakte/android/cache/Cache;->getImportedContacts(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 395
    .local v9, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v0, "descs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v7, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v3, "needProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 399
    .local v8, "u":Lcom/vkontakte/android/UserProfile;
    iget v10, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v10, :cond_0

    .line 400
    iget v10, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget v10, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v8, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-boolean v10, v8, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-eqz v10, :cond_0

    iget v10, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v8    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_1
    const/4 v10, 0x1

    invoke-static {v3, v10}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 406
    .local v6, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    .line 407
    .local v5, "profile":Lcom/vkontakte/android/UserProfile;
    iget v10, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v5, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_1

    .line 409
    .end local v5    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 410
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 412
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    iget v10, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 414
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    iget-object v10, p0, Lcom/vkontakte/android/data/Friends$4;->val$callback:Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;

    invoke-interface {v10, v6, v9}, Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 415
    return-void
.end method
