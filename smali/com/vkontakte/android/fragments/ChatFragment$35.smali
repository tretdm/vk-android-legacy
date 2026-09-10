.class Lcom/vkontakte/android/fragments/ChatFragment$35;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->confirmAndDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field private final synthetic val$msgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msgs:Ljava/util/ArrayList;

    .line 2275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2279
    .local v2, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2280
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/vkontakte/android/data/Messages;->delete(Ljava/util/List;Z)V

    .line 2281
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2283
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2286
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2287
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 2288
    return-void

    .line 2279
    .end local v3    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .local v1, "m":Lcom/vkontakte/android/Message;
    iget v5, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2283
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    .restart local v3    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2284
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
