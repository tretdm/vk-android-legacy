.class Lcom/vkontakte/android/ChatActivity$4$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$4;

.field private final synthetic val$links:Ljava/util/ArrayList;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$4;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    iput p2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->val$pos:I

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$4$1;->val$links:Ljava/util/ArrayList;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 377
    iget v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->val$pos:I

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->val$pos:I

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 379
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/ChatActivity$4$1;->val$pos:I

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v4}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 380
    .local v1, "msg":Lcom/vkontakte/android/Message;
    if-nez p2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 382
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, v1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceEmojiRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v2

    const v3, 0x7f090126

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 385
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, "vklink://view/?"

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$4$1;->val$links:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
