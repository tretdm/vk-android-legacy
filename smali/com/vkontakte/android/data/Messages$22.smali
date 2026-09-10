.class final Lcom/vkontakte/android/data/Messages$22;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->search(Ljava/lang/String;IILcom/vkontakte/android/data/Messages$SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$SearchCallback;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/data/Messages$SearchCallback;->onError(ILjava/lang/String;)V

    .line 1278
    :cond_0
    return-void
.end method

.method public success(Ljava/util/List;ILjava/util/ArrayList;)V
    .locals 9
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1219
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    .local p3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v6, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Message;

    .line 1221
    .local v4, "m":Lcom/vkontakte/android/Message;
    iget v7, v4, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v4, Lcom/vkontakte/android/Message;->peer:I

    const v8, 0x77359400

    if-ge v7, v8, :cond_1

    iget v7, v4, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_1
    iget v7, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1224
    .end local v4    # "m":Lcom/vkontakte/android/Message;
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 1225
    .local v0, "c":Lcom/vkontakte/android/UserProfile;
    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1226
    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1227
    .local v3, "ids":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_3

    .line 1229
    :try_start_0
    aget-object v7, v3, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1230
    .local v5, "uid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v5    # "uid":I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1236
    .end local v0    # "c":Lcom/vkontakte/android/UserProfile;
    .end local v1    # "i":I
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/vkontakte/android/data/Messages$22$1;

    invoke-direct {v7, p0, p3, p1, p2}, Lcom/vkontakte/android/data/Messages$22$1;-><init>(Lcom/vkontakte/android/data/Messages$22;Ljava/util/ArrayList;Ljava/util/List;I)V

    invoke-static {v6, v7}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 1273
    return-void

    .line 1231
    .restart local v0    # "c":Lcom/vkontakte/android/UserProfile;
    .restart local v1    # "i":I
    .restart local v3    # "ids":[Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_2
.end method
