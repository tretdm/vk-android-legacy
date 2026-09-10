.class Lcom/vkontakte/android/fragments/ChatFragment$3;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatFragment;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 583
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 606
    :goto_0
    return v4

    .line 585
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 587
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$33(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    .line 588
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 592
    .end local v1    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .restart local v1    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$34(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    .line 595
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 599
    .end local v1    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 600
    .local v0, "cm":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f08010b

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 602
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x7f09020a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 572
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$35(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/actionbarsherlock/view/ActionMode;)V

    .line 612
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$36(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    .line 614
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 578
    const/4 v0, 0x1

    return v0
.end method
