.class Lcom/vkontakte/android/fragments/ChatFragment$31;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$31;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1999
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$36(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    .line 2000
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 2001
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v2

    const v3, 0x77359400

    if-le v2, v3, :cond_1

    .line 2002
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .local v1, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2011
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2012
    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$31$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatFragment$31$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$31;)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 2030
    .end local v1    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    return-void

    .line 2004
    .restart local v1    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 2005
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$31;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2006
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown chat user: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2029
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    .end local v1    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method
