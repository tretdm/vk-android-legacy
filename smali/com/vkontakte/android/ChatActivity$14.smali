.class Lcom/vkontakte/android/ChatActivity$14;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$14;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v0, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v3, "senders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$14;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v4}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 609
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$14;->this$0:Lcom/vkontakte/android/ChatActivity;

    const-string v5, ","

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/ChatActivity;->access$29(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$14;->this$0:Lcom/vkontakte/android/ChatActivity;

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/ChatActivity;->access$30(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)V

    .line 613
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$14;->this$0:Lcom/vkontakte/android/ChatActivity;

    const-class v5, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "select"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$14;->this$0:Lcom/vkontakte/android/ChatActivity;

    const/16 v5, 0x8

    invoke-virtual {v4, v1, v5}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 616
    return-void

    .line 595
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 596
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v4, v2, Lcom/vkontakte/android/Message;->selected:Z

    if-eqz v4, :cond_0

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$14;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v4}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget v6, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
