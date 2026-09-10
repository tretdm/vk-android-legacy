.class Lcom/vkontakte/android/fragments/ChatFragment$34;
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

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->val$msg:Lcom/vkontakte/android/Message;

    .line 2230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2233
    packed-switch p2, :pswitch_data_0

    .line 2266
    :cond_0
    :goto_0
    return-void

    .line 2236
    :pswitch_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v3, v3, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v3, :cond_2

    .line 2238
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 2239
    .local v1, "m":Lcom/vkontakte/android/Message;
    iget v4, v1, Lcom/vkontakte/android/Message;->id:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->val$msg:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->id:I

    if-ne v4, v5, :cond_1

    iget-boolean v4, v1, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v4, :cond_1

    .line 2240
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->val$msg:Lcom/vkontakte/android/Message;

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$78(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2243
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2245
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    .local v2, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->val$msg:Lcom/vkontakte/android/Message;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$34(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2253
    .end local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :pswitch_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2254
    .local v0, "cm":Landroid/text/ClipboardManager;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v3, v3, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f08010b

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2260
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    :pswitch_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2261
    .restart local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->val$msg:Lcom/vkontakte/android/Message;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$34;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$33(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
