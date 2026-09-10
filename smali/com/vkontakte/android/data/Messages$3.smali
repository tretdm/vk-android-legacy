.class Lcom/vkontakte/android/data/Messages$3;
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
    iput p1, p0, Lcom/vkontakte/android/data/Messages$3;->val$count:I

    iput p2, p0, Lcom/vkontakte/android/data/Messages$3;->val$offset:I

    iput-object p3, p0, Lcom/vkontakte/android/data/Messages$3;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 146
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getDialogsCount()I

    move-result v0

    .line 147
    .local v0, "cacheCount":I
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v0, :cond_2

    .line 149
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, v0, v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$3;->val$count:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/data/Messages$3;->val$offset:I

    iget v6, p0, Lcom/vkontakte/android/data/Messages$3;->val$count:I

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_2

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/data/Messages$3;->val$offset:I

    iget v6, p0, Lcom/vkontakte/android/data/Messages$3;->val$offset:I

    iget v7, p0, Lcom/vkontakte/android/data/Messages$3;->val$count:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    new-instance v4, Lcom/vkontakte/android/data/Messages$3$1;

    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$3;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    invoke-direct {v4, p0, v2, v5}, Lcom/vkontakte/android/data/Messages$3$1;-><init>(Lcom/vkontakte/android/data/Messages$3;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetDialogsCallback;)V

    invoke-static {v3, v4}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 235
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    return-void

    .line 155
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 156
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v5, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    const v6, 0x77359400

    if-le v5, v6, :cond_0

    iget-object v5, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v5, v5, Lcom/vkontakte/android/Message;->out:Z

    if-nez v5, :cond_0

    .line 157
    iget-object v5, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    iget-object v5, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v4, Lcom/vkontakte/android/api/MessagesGetDialogs;

    iget v5, p0, Lcom/vkontakte/android/data/Messages$3;->val$offset:I

    iget v6, p0, Lcom/vkontakte/android/data/Messages$3;->val$count:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/vkontakte/android/api/MessagesGetDialogs;-><init>(II)V

    .line 186
    new-instance v5, Lcom/vkontakte/android/data/Messages$3$2;

    iget-object v6, p0, Lcom/vkontakte/android/data/Messages$3;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    iget v7, p0, Lcom/vkontakte/android/data/Messages$3;->val$count:I

    invoke-direct {v5, p0, v6, v7}, Lcom/vkontakte/android/data/Messages$3$2;-><init>(Lcom/vkontakte/android/data/Messages$3;Lcom/vkontakte/android/data/Messages$GetDialogsCallback;I)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/MessagesGetDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 185
    invoke-static {v4}, Lcom/vkontakte/android/data/Messages;->access$3(Lcom/vkontakte/android/APIRequest;)V

    .line 233
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$4()Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 234
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/vkontakte/android/data/Messages;->access$3(Lcom/vkontakte/android/APIRequest;)V

    goto :goto_1
.end method
