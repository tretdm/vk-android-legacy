.class Lcom/vkontakte/android/data/Messages$7;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getDialogs(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

.field private final synthetic val$count:I

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/data/Messages$7;->val$offset:I

    iput p2, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    iput-object p3, p0, Lcom/vkontakte/android/data/Messages$7;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v4, 0x77359400

    .line 364
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getDialogsCount()I

    move-result v6

    .line 365
    .local v6, "cacheCount":I
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cache count "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v6, :cond_3

    iget v0, p0, Lcom/vkontakte/android/data/Messages$7;->val$offset:I

    iget v1, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    add-int/2addr v0, v1

    if-lt v6, v0, :cond_3

    .line 368
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v6, v1

    iget v3, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 370
    .local v2, "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v8, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    new-instance v0, Lcom/vkontakte/android/data/Messages$7$1;

    iget v3, p0, Lcom/vkontakte/android/data/Messages$7;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$7;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/data/Messages$7$1;-><init>(Lcom/vkontakte/android/data/Messages$7;Ljava/util/ArrayList;IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V

    invoke-static {v8, v0}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 418
    sget-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 480
    .end local v2    # "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v8    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 372
    .restart local v2    # "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v8    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/DialogEntry;

    .line 373
    .local v7, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-le v1, v4, :cond_2

    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v1, v1, Lcom/vkontakte/android/Message;->out:Z

    if-nez v1, :cond_2

    .line 374
    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_2
    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v1, v4, :cond_0

    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 378
    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    .end local v2    # "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v7    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v8    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetDialogs;

    iget v1, p0, Lcom/vkontakte/android/data/Messages$7;->val$offset:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/vkontakte/android/api/MessagesGetDialogs;-><init>(II)V

    .line 422
    new-instance v1, Lcom/vkontakte/android/data/Messages$7$2;

    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$7;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    iget v4, p0, Lcom/vkontakte/android/data/Messages$7;->val$count:I

    invoke-direct {v1, p0, v3, v4}, Lcom/vkontakte/android/data/Messages$7$2;-><init>(Lcom/vkontakte/android/data/Messages$7;Lcom/vkontakte/android/data/Messages$GetDialogsCallback;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcom/vkontakte/android/data/Messages;->access$3(Lcom/vkontakte/android/APIRequest;)V

    .line 478
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$4()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 479
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/data/Messages;->access$3(Lcom/vkontakte/android/APIRequest;)V

    goto :goto_2

    .line 368
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
