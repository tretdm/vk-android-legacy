.class Lcom/vkontakte/android/data/Messages$22$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages$22;->success(Ljava/util/List;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/data/Messages$22;

.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$msgs:Ljava/util/List;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$22;Ljava/util/ArrayList;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$22$1;->this$0:Lcom/vkontakte/android/data/Messages$22;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$22$1;->val$chats:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/data/Messages$22$1;->val$msgs:Ljava/util/List;

    iput p4, p0, Lcom/vkontakte/android/data/Messages$22$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 13
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
    .line 1239
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1240
    .local v9, "u":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 1241
    .local v6, "p":Lcom/vkontakte/android/UserProfile;
    iget v11, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1244
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    iget-object v11, p0, Lcom/vkontakte/android/data/Messages$22$1;->val$chats:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 1245
    .local v0, "c":Lcom/vkontakte/android/UserProfile;
    iget-object v11, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v12, "M"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1247
    iget-object v11, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1248
    .local v4, "ids":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .local v7, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "M"

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    array-length v11, v4

    if-ge v2, v11, :cond_1

    .line 1252
    :try_start_0
    aget-object v11, v4, v2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1253
    .local v10, "uid":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .end local v10    # "uid":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1256
    :cond_1
    const-string v11, "|"

    invoke-static {v11, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 1259
    .end local v2    # "i":I
    .end local v4    # "ids":[Ljava/lang/String;
    .end local v7    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget v11, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1262
    .end local v0    # "c":Lcom/vkontakte/android/UserProfile;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    iget-object v11, p0, Lcom/vkontakte/android/data/Messages$22$1;->val$msgs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Message;

    .line 1264
    .local v5, "m":Lcom/vkontakte/android/Message;
    new-instance v1, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 1265
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iput-object v5, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 1266
    iget v11, v5, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v11, v1, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 1267
    iget v11, v5, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/UserProfile;

    iput-object v11, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 1268
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1270
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v5    # "m":Lcom/vkontakte/android/Message;
    :cond_4
    iget-object v11, p0, Lcom/vkontakte/android/data/Messages$22$1;->this$0:Lcom/vkontakte/android/data/Messages$22;

    iget-object v11, v11, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/vkontakte/android/data/Messages$22$1;->this$0:Lcom/vkontakte/android/data/Messages$22;

    iget-object v11, v11, Lcom/vkontakte/android/data/Messages$22;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    iget v12, p0, Lcom/vkontakte/android/data/Messages$22$1;->val$total:I

    invoke-interface {v11, v8, v12}, Lcom/vkontakte/android/data/Messages$SearchCallback;->onDialogsLoaded(Ljava/util/ArrayList;I)V

    .line 1271
    :cond_5
    return-void

    .line 1254
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v0    # "c":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "i":I
    .restart local v4    # "ids":[Ljava/lang/String;
    .restart local v7    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    goto :goto_3
.end method
