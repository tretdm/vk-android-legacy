.class final Lcom/vkontakte/android/data/Messages$7;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getDialogs(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

.field final synthetic val$count:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
    .locals 0

    .prologue
    .line 370
    iput p1, p0, Lcom/vkontakte/android/data/Messages$7;->val$offset:I

    iput p2, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    iput-object p3, p0, Lcom/vkontakte/android/data/Messages$7;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x77359400

    .line 372
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getDialogsCount()I

    move-result v0

    .line 373
    .local v0, "cacheCount":I
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cache count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v0, :cond_3

    iget v5, p0, Lcom/vkontakte/android/data/Messages$7;->val$offset:I

    iget v6, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    add-int/2addr v5, v6

    if-lt v0, v5, :cond_3

    .line 376
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, v0, v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 378
    .local v1, "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/DialogEntry;

    .line 381
    .local v2, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    if-le v5, v8, :cond_1

    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v5, v5, Lcom/vkontakte/android/Message;->out:Z

    if-nez v5, :cond_1

    .line 382
    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 383
    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v5, v8, :cond_0

    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 386
    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 387
    iget-object v5, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v2    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    new-instance v5, Lcom/vkontakte/android/data/Messages$7$1;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/data/Messages$7$1;-><init>(Lcom/vkontakte/android/data/Messages$7;Ljava/util/ArrayList;)V

    invoke-static {v4, v5}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 426
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 488
    .end local v1    # "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 429
    :cond_3
    new-instance v5, Lcom/vkontakte/android/api/MessagesGetDialogs;

    iget v6, p0, Lcom/vkontakte/android/data/Messages$7;->val$offset:I

    iget v7, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/vkontakte/android/api/MessagesGetDialogs;-><init>(II)V

    new-instance v6, Lcom/vkontakte/android/data/Messages$7$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/data/Messages$7$2;-><init>(Lcom/vkontakte/android/data/Messages$7;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/MessagesGetDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/data/Messages;->access$102(Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 486
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$100()Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 487
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/vkontakte/android/data/Messages;->access$102(Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    .line 376
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
