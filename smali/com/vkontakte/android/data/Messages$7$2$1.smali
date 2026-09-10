.class Lcom/vkontakte/android/data/Messages$7$2$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages$7$2;->success(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Messages$7$2;

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$7$2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->this$1:Lcom/vkontakte/android/data/Messages$7$2;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->val$results:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 9
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
    .line 456
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v4, "u":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 459
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v5, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    const v6, 0x77359400

    if-le v5, v6, :cond_1

    iget-object v5, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v5, v5, Lcom/vkontakte/android/Message;->out:Z

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    iget-object v5, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v5, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    goto :goto_1

    .line 463
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 466
    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->this$1:Lcom/vkontakte/android/data/Messages$7$2;

    iget-object v5, v5, Lcom/vkontakte/android/data/Messages$7$2;->this$0:Lcom/vkontakte/android/data/Messages$7;

    iget-object v5, v5, Lcom/vkontakte/android/data/Messages$7;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    if-eqz v5, :cond_4

    .line 467
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->val$results:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->this$1:Lcom/vkontakte/android/data/Messages$7$2;

    iget-object v8, v8, Lcom/vkontakte/android/data/Messages$7$2;->this$0:Lcom/vkontakte/android/data/Messages$7;

    iget v8, v8, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 470
    .restart local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    new-instance v5, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v5, v0}, Lcom/vkontakte/android/DialogEntry;-><init>(Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 472
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$7$2$1;->this$1:Lcom/vkontakte/android/data/Messages$7$2;

    iget-object v5, v5, Lcom/vkontakte/android/data/Messages$7$2;->this$0:Lcom/vkontakte/android/data/Messages$7;

    iget-object v5, v5, Lcom/vkontakte/android/data/Messages$7;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    invoke-interface {v5, v3}, Lcom/vkontakte/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 474
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_4
    return-void

    .line 463
    :catch_0
    move-exception v5

    goto :goto_2
.end method
