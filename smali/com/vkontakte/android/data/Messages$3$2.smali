.class Lcom/vkontakte/android/data/Messages$3$2;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Messages$3;

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

.field private final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$3;Lcom/vkontakte/android/data/Messages$GetDialogsCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$3$2;->this$1:Lcom/vkontakte/android/data/Messages$3;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$3$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    iput p3, p0, Lcom/vkontakte/android/data/Messages$3$2;->val$count:I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$3$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$3$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkontakte/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 231
    :cond_0
    return-void
.end method

.method public success(ILjava/util/ArrayList;)V
    .locals 9
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
    .line 189
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/vkontakte/android/data/Messages;->access$1(J)V

    .line 190
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "msg"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "updated"

    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$2()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v4, "usrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 204
    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 205
    invoke-static {v4}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/ArrayList;)V

    .line 206
    new-instance v5, Lcom/vkontakte/android/data/Messages$3$2$1;

    iget-object v6, p0, Lcom/vkontakte/android/data/Messages$3$2;->val$callback:Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    iget v7, p0, Lcom/vkontakte/android/data/Messages$3$2;->val$count:I

    invoke-direct {v5, p0, p2, v6, v7}, Lcom/vkontakte/android/data/Messages$3$2$1;-><init>(Lcom/vkontakte/android/data/Messages$3$2;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetDialogsCallback;I)V

    invoke-static {v3, v5}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 224
    return-void

    .line 192
    .end local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v4    # "usrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 193
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v6, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    const v7, 0x77359400

    if-le v6, v7, :cond_0

    iget-object v6, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v6, v6, Lcom/vkontakte/android/Message;->out:Z

    if-nez v6, :cond_0

    .line 194
    iget-object v6, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v6, v6, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 195
    iget-object v6, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v6, v6, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .restart local v4    # "usrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 201
    .local v0, "dlg":Lcom/vkontakte/android/DialogEntry;
    iget-object v6, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v6, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
