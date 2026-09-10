.class Lcom/vkontakte/android/data/Messages$13$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages$13;->success(Ljava/util/List;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Messages$13;

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

.field private final synthetic val$chats:Ljava/util/ArrayList;

.field private final synthetic val$msgs:Ljava/util/List;

.field private final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$13;Ljava/util/ArrayList;Ljava/util/List;Lcom/vkontakte/android/data/Messages$SearchCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$13$1;->this$1:Lcom/vkontakte/android/data/Messages$13;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$chats:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$msgs:Ljava/util/List;

    iput-object p4, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    iput p5, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$total:I

    .line 715
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
    .line 718
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 719
    .local v8, "u":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 723
    iget-object v10, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$chats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 741
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    iget-object v10, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$msgs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 749
    iget-object v10, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$callback:Lcom/vkontakte/android/data/Messages$SearchCallback;

    iget v11, p0, Lcom/vkontakte/android/data/Messages$13$1;->val$total:I

    invoke-interface {v10, v7, v11}, Lcom/vkontakte/android/data/Messages$SearchCallback;->onDialogsLoaded(Ljava/util/ArrayList;I)V

    .line 750
    :cond_0
    return-void

    .line 719
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    .line 720
    .local v5, "p":Lcom/vkontakte/android/UserProfile;
    iget v11, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 723
    .end local v5    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 724
    .local v0, "c":Lcom/vkontakte/android/UserProfile;
    iget-object v10, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v12, "M"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 726
    iget-object v10, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "ids":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v6, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "M"

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    array-length v10, v3

    if-lt v2, v10, :cond_4

    .line 735
    const-string v10, "|"

    invoke-static {v10, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 738
    .end local v2    # "i":I
    .end local v3    # "ids":[Ljava/lang/String;
    .end local v6    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget v10, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 731
    .restart local v2    # "i":I
    .restart local v3    # "ids":[Ljava/lang/String;
    .restart local v6    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_0
    aget-object v10, v3, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 732
    .local v9, "uid":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v9    # "uid":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 742
    .end local v0    # "c":Lcom/vkontakte/android/UserProfile;
    .end local v2    # "i":I
    .end local v3    # "ids":[Ljava/lang/String;
    .end local v6    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Message;

    .line 743
    .local v4, "m":Lcom/vkontakte/android/Message;
    new-instance v1, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 744
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iput-object v4, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 745
    iget v10, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v10, v1, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 746
    iget v10, v4, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    iput-object v10, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 747
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 733
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v4    # "m":Lcom/vkontakte/android/Message;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v0    # "c":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "i":I
    .restart local v3    # "ids":[Ljava/lang/String;
    .restart local v6    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    goto :goto_4
.end method
