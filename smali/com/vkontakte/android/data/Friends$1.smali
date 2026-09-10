.class final Lcom/vkontakte/android/data/Friends$1;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Friends;->reload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$forceNetwork:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/vkontakte/android/data/Friends$1;->val$forceNetwork:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-boolean v4, p0, Lcom/vkontakte/android/data/Friends$1;->val$forceNetwork:Z

    if-nez v4, :cond_0

    .line 84
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getFriends()Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    :cond_0
    iget-boolean v4, p0, Lcom/vkontakte/android/data/Friends$1;->val$forceNetwork:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 86
    :cond_1
    invoke-static {v7}, Lcom/vkontakte/android/data/Friends;->access$002(Z)Z

    .line 87
    new-instance v4, Lcom/vkontakte/android/api/FriendsGet;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/vkontakte/android/api/FriendsGet;-><init>(IZ)V

    new-instance v5, Lcom/vkontakte/android/data/Friends$1$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/data/Friends$1$1;-><init>(Lcom/vkontakte/android/data/Friends$1;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/FriendsGet;->setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/APIRequest;->setBackground(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 137
    :goto_0
    return-void

    .line 122
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v1, "onlines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 125
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->online:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 128
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 129
    .restart local v2    # "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_3

    .line 132
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$400()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v4

    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 134
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->access$500()V

    .line 135
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "onlines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method
