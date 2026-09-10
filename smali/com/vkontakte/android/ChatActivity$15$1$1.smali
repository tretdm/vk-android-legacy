.class Lcom/vkontakte/android/ChatActivity$15$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$15$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ChatActivity$15$1;

.field private final synthetic val$mids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$15$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$15$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$15$1;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$15$1$1;->val$mids:Ljava/util/ArrayList;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$15$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$15$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$15$1;->access$0(Lcom/vkontakte/android/ChatActivity$15$1;)Lcom/vkontakte/android/ChatActivity$15;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$15;->access$0(Lcom/vkontakte/android/ChatActivity$15;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 708
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    .line 697
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v1, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$15$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$15$1;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$15$1;->access$0(Lcom/vkontakte/android/ChatActivity$15$1;)Lcom/vkontakte/android/ChatActivity$15;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$15;->access$0(Lcom/vkontakte/android/ChatActivity$15;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 701
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 702
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$15$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$15$1;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$15$1;->access$0(Lcom/vkontakte/android/ChatActivity$15$1;)Lcom/vkontakte/android/ChatActivity$15;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$15;->access$0(Lcom/vkontakte/android/ChatActivity$15;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 703
    return-void

    .line 698
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 699
    .local v0, "msg":Lcom/vkontakte/android/Message;
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$15$1$1;->val$mids:Ljava/util/ArrayList;

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    .end local v0    # "msg":Lcom/vkontakte/android/Message;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .restart local v0    # "msg":Lcom/vkontakte/android/Message;
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$15$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$15$1;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity$15$1;->access$0(Lcom/vkontakte/android/ChatActivity$15$1;)Lcom/vkontakte/android/ChatActivity$15;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity$15;->access$0(Lcom/vkontakte/android/ChatActivity$15;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
