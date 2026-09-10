.class Lcom/vkontakte/android/data/Messages$7$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Messages$7;

.field private final synthetic val$cached:Ljava/util/ArrayList;

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

.field private final synthetic val$count:I

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$7;Ljava/util/ArrayList;IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$7$1;->this$1:Lcom/vkontakte/android/data/Messages$7;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$cached:Ljava/util/ArrayList;

    iput p3, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$offset:I

    iput p4, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$count:I

    iput-object p5, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    .line 382
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
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const v8, 0x77359400

    .line 386
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 387
    .local v3, "u":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 389
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$cached:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 404
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$offset:I

    iget v6, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$count:I

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_1

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$offset:I

    iget v6, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$offset:I

    iget v7, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$count:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 409
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    if-eqz v4, :cond_1

    .line 410
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$7$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    invoke-interface {v4, v2}, Lcom/vkontakte/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 415
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_1
    return-void

    .line 387
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 389
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 391
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    if-le v4, v8, :cond_4

    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->out:Z

    if-nez v4, :cond_4

    .line 392
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 393
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 397
    :cond_4
    :goto_3
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v4, v8, :cond_0

    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 398
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 399
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iput-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    goto/16 :goto_1

    .line 395
    :cond_5
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t find photo for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 401
    :cond_6
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t find profile for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 406
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 407
    .restart local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    new-instance v5, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v5, v0}, Lcom/vkontakte/android/DialogEntry;-><init>(Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
