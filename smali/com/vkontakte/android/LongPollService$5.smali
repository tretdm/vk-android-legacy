.class Lcom/vkontakte/android/LongPollService$5;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetHistory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->checkAndPreload(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$peerID:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/LongPollService$5;->val$peerID:I

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 594
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 5
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    const v4, 0x77359400

    const/4 v1, 0x1

    .line 566
    sget-object v0, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/vkontakte/android/LongPollService$5;->val$peerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v2, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p0, Lcom/vkontakte/android/LongPollService$5;->val$peerID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget v0, p0, Lcom/vkontakte/android/LongPollService$5;->val$peerID:I

    if-le v0, v4, :cond_0

    .line 569
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetChatUsers;

    iget v2, p0, Lcom/vkontakte/android/LongPollService$5;->val$peerID:I

    sub-int/2addr v2, v4

    invoke-direct {v0, v2}, Lcom/vkontakte/android/api/MessagesGetChatUsers;-><init>(I)V

    .line 570
    new-instance v2, Lcom/vkontakte/android/LongPollService$5$1;

    iget v3, p0, Lcom/vkontakte/android/LongPollService$5;->val$peerID:I

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/LongPollService$5$1;-><init>(Lcom/vkontakte/android/LongPollService$5;I)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/api/MessagesGetChatUsers;->setCallback(Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 588
    :cond_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget v2, p0, Lcom/vkontakte/android/LongPollService$5;->val$peerID:I

    invoke-static {v0, v2, p2, v1}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 589
    return-void

    .line 567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
