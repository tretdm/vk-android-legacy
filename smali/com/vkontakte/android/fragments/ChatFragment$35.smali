.class Lcom/vkontakte/android/fragments/ChatFragment$35;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->showMessageOptions(Lcom/vkontakte/android/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 2262
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msg:Lcom/vkontakte/android/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2265
    packed-switch p2, :pswitch_data_0

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2268
    :pswitch_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v4, :cond_2

    .line 2270
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 2271
    .local v2, "m":Lcom/vkontakte/android/Message;
    iget v4, v2, Lcom/vkontakte/android/Message;->id:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msg:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->id:I

    if-ne v4, v5, :cond_1

    iget-boolean v4, v2, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v4, :cond_1

    .line 2272
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msg:Lcom/vkontakte/android/Message;

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6900(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2275
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2277
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    .local v3, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msg:Lcom/vkontakte/android/Message;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2279
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3300(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2285
    .end local v3    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :pswitch_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2286
    .local v0, "cm":Landroid/text/ClipboardManager;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2287
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0323

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2292
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    :pswitch_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2293
    .restart local v3    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->val$msg:Lcom/vkontakte/android/Message;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2294
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$35;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3200(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
