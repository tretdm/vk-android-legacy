.class Lcom/vkontakte/android/data/Messages$11$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetHistory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Messages$11;

.field private final synthetic val$_numUnread:I

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

.field private final synthetic val$ccnt:I

.field private final synthetic val$offset:I

.field private final synthetic val$peer:I

.field private final synthetic val$result:Ljava/util/ArrayList;

.field private final synthetic val$startMsgID:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$11;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetMessagesCallback;IIIII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$1:Lcom/vkontakte/android/data/Messages$11;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$result:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iput p4, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$startMsgID:I

    iput p5, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$offset:I

    iput p6, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    iput p7, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$ccnt:I

    iput p8, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$peer:I

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 650
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAIL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onError(ILjava/lang/String;)V

    .line 652
    return-void
.end method

.method public success(ILjava/util/Vector;I)V
    .locals 5
    .param p1, "total"    # I
    .param p3, "unread"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$result:Ljava/util/ArrayList;

    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$startMsgID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v0, v4

    if-gtz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 640
    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$startMsgID:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$startMsgID:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$offset:I

    iget v2, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v0, v2

    if-gtz v0, :cond_3

    .line 641
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$ccnt:I

    iget v2, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$offset:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 642
    invoke-static {p2}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    .line 644
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 646
    return-void

    .line 639
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v0, v4

    goto :goto_0
.end method
