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
.field final synthetic this$0:Lcom/vkontakte/android/data/Messages$11;

.field final synthetic val$_numUnread:I

.field final synthetic val$ccnt:I

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$11;Ljava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$result:Ljava/util/ArrayList;

    iput p3, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    iput p4, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$ccnt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAIL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 659
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget-object v0, v0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onError(ILjava/lang/String;)V

    .line 660
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

    .line 646
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 647
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget-object v2, v0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$result:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v0, v0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v0, v0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v0, v4

    if-gtz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 648
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v0, v0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v0, v0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v0, v0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v2, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v0, v2

    if-gtz v0, :cond_3

    .line 649
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$ccnt:I

    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v2, v2, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 650
    invoke-static {p2}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 652
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v3, v3, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 654
    return-void

    .line 647
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$11$1;->this$0:Lcom/vkontakte/android/data/Messages$11;

    iget v0, v0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11$1;->val$_numUnread:I

    add-int/2addr v0, v4

    goto :goto_0
.end method
