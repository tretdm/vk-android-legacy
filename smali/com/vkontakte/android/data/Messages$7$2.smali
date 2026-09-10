.class Lcom/vkontakte/android/data/Messages$7$2;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;


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

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

.field private final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$7;Lcom/vkontakte/android/data/Messages$GetDialogsCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$7$2;->this$1:Lcom/vkontakte/android/data/Messages$7;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$7$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    iput p3, p0, Lcom/vkontakte/android/data/Messages$7$2;->val$count:I

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading dialogs "

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

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$7$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$7$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/data/Messages$GetDialogsCallback;->onError(ILjava/lang/String;)V

    .line 476
    :cond_0
    return-void
.end method

.method public success(ILjava/util/ArrayList;)V
    .locals 11
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    const/4 v10, 0x0

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/vkontakte/android/data/Messages;->access$1(J)V

    .line 426
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "msg"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "updated"

    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$2()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v2, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v5, "usrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v4, "unreadCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 442
    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 443
    invoke-static {v5, v10}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 444
    invoke-static {v4}, Lcom/vkontakte/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 445
    new-instance v6, Lcom/vkontakte/android/data/Messages$7$2$1;

    iget-object v7, p0, Lcom/vkontakte/android/data/Messages$7$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    iget v8, p0, Lcom/vkontakte/android/data/Messages$7$2;->val$count:I

    invoke-direct {v6, p0, p2, v7, v8}, Lcom/vkontakte/android/data/Messages$7$2$1;-><init>(Lcom/vkontakte/android/data/Messages$7$2;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetDialogsCallback;I)V

    invoke-static {v3, v6}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 468
    return-void

    .line 428
    .end local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v4    # "unreadCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v5    # "usrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 429
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v7, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    const v8, 0x77359400

    if-le v7, v8, :cond_0

    iget-object v7, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v7, v7, Lcom/vkontakte/android/Message;->out:Z

    if-nez v7, :cond_0

    .line 430
    iget-object v7, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 431
    iget-object v7, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .restart local v4    # "unreadCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v5    # "usrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 438
    .local v0, "dlg":Lcom/vkontakte/android/DialogEntry;
    iget-object v7, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v7, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v8, v8, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
