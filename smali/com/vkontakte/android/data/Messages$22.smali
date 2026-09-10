.class Lcom/vkontakte/android/data/Messages$22;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->search(Ljava/lang/String;IILcom/vkontakte/android/data/Messages$SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$SearchCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/data/Messages$SearchCallback;->onError(ILjava/lang/String;)V

    .line 1265
    :cond_0
    return-void
.end method

.method public success(Ljava/util/List;ILjava/util/ArrayList;)V
    .locals 12
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
    .line 1206
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    .local p3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    .local v11, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1211
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1223
    new-instance v0, Lcom/vkontakte/android/data/Messages$22$1;

    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/data/Messages$22$1;-><init>(Lcom/vkontakte/android/data/Messages$22;Ljava/util/ArrayList;Ljava/util/List;Lcom/vkontakte/android/data/Messages$SearchCallback;I)V

    invoke-static {v11, v0}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 1260
    return-void

    .line 1207
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message;

    .line 1208
    .local v9, "m":Lcom/vkontakte/android/Message;
    iget v1, v9, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v9, Lcom/vkontakte/android/Message;->peer:I

    const v2, 0x77359400

    if-ge v1, v2, :cond_3

    iget v1, v9, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_3
    iget v1, v9, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v9, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1211
    .end local v9    # "m":Lcom/vkontakte/android/Message;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 1212
    .local v6, "c":Lcom/vkontakte/android/UserProfile;
    iget-object v1, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    iget-object v1, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1214
    .local v8, "ids":[Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    array-length v1, v8

    if-ge v7, v1, :cond_1

    .line 1216
    :try_start_0
    aget-object v1, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1217
    .local v10, "uid":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    .end local v10    # "uid":I
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1218
    :catch_0
    move-exception v1

    goto :goto_2
.end method
