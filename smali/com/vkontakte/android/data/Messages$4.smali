.class Lcom/vkontakte/android/data/Messages$4;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getHistory(IIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

.field private final synthetic val$count:I

.field private final synthetic val$offset:I

.field private final synthetic val$peer:I

.field private final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(IIILjava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/data/Messages$4;->val$peer:I

    iput p2, p0, Lcom/vkontakte/android/data/Messages$4;->val$offset:I

    iput p3, p0, Lcom/vkontakte/android/data/Messages$4;->val$count:I

    iput-object p4, p0, Lcom/vkontakte/android/data/Messages$4;->val$result:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/vkontakte/android/data/Messages$4;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 277
    iget v1, p0, Lcom/vkontakte/android/data/Messages$4;->val$peer:I

    invoke-static {v1}, Lcom/vkontakte/android/cache/Cache;->getMessagesHistoryCount(I)I

    move-result v0

    .line 279
    .local v0, "ccnt":I
    iget v1, p0, Lcom/vkontakte/android/data/Messages$4;->val$offset:I

    iget v2, p0, Lcom/vkontakte/android/data/Messages$4;->val$count:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$4;->val$result:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkontakte/android/data/Messages$4;->val$peer:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$4;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$count:I

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/cache/Cache;->getMessagesHistory(III)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$4;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$4;->val$result:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;)V

    .line 307
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_1
    new-instance v1, Lcom/vkontakte/android/api/MessagesGetHistory;

    iget v2, p0, Lcom/vkontakte/android/data/Messages$4;->val$peer:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$4;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$count:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    .line 291
    new-instance v2, Lcom/vkontakte/android/data/Messages$4$1;

    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$4;->val$result:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget v5, p0, Lcom/vkontakte/android/data/Messages$4;->val$peer:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkontakte/android/data/Messages$4$1;-><init>(Lcom/vkontakte/android/data/Messages$4;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetMessagesCallback;I)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 306
    sget-object v1, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    goto :goto_1
.end method
