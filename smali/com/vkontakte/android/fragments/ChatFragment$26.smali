.class Lcom/vkontakte/android/fragments/ChatFragment$26;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->val$msg:Lcom/vkontakte/android/Message;

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1478
    packed-switch p2, :pswitch_data_0

    .line 1505
    :goto_0
    return-void

    .line 1481
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v2, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->val$msg:Lcom/vkontakte/android/Message;

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$53(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V

    goto :goto_0

    .line 1484
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    .local v1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->val$msg:Lcom/vkontakte/android/Message;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$23(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1492
    .end local v1    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1493
    .local v0, "cm":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1494
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0600f1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1499
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .restart local v1    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->val$msg:Lcom/vkontakte/android/Message;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$22(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
