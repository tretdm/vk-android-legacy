.class Lcom/vkontakte/android/ChatActivity$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v4}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 293
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v3, v2, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3, v2}, Lcom/vkontakte/android/ChatActivity;->access$18(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V

    .line 307
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-boolean v3, v2, Lcom/vkontakte/android/Message;->selected:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lcom/vkontakte/android/Message;->selected:Z

    .line 298
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$19(Lcom/vkontakte/android/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$20(Lcom/vkontakte/android/ChatActivity;)V

    .line 299
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "cnt":I
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 304
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$21(Lcom/vkontakte/android/ChatActivity;)V

    .line 305
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v4, 0x7f0601a0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v4, 0x7f06019f

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity$3;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 297
    .end local v0    # "cnt":I
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 301
    .restart local v0    # "cnt":I
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 302
    .local v1, "m":Lcom/vkontakte/android/Message;
    iget-boolean v4, v1, Lcom/vkontakte/android/Message;->selected:Z

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method
