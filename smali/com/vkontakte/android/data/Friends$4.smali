.class Lcom/vkontakte/android/data/Friends$4;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Friends;->getImportedContacts(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;

.field private final synthetic val$service:I


# direct methods
.method constructor <init>(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/data/Friends$4;->val$service:I

    iput-object p2, p0, Lcom/vkontakte/android/data/Friends$4;->val$callback:Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 394
    iget v9, p0, Lcom/vkontakte/android/data/Friends$4;->val$service:I

    invoke-static {v9}, Lcom/vkontakte/android/cache/Cache;->getImportedContacts(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 395
    .local v8, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v0, "descs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v6, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, "needProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 405
    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/vkontakte/android/cache/Cache;->getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 406
    .local v5, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 409
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 410
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 414
    iget-object v9, p0, Lcom/vkontakte/android/data/Friends$4;->val$callback:Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;

    invoke-interface {v9, v5, v8}, Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 415
    return-void

    .line 398
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/UserProfile;>;"
    .end local v5    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 399
    .local v7, "u":Lcom/vkontakte/android/UserProfile;
    iget v10, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v10, :cond_0

    .line 400
    iget v10, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget v10, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v7, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-boolean v10, v7, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-eqz v10, :cond_0

    iget v10, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    .end local v7    # "u":Lcom/vkontakte/android/UserProfile;
    .restart local v5    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 407
    .local v4, "profile":Lcom/vkontakte/android/UserProfile;
    iget v9, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_1

    .line 411
    .end local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 412
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iget v9, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method
