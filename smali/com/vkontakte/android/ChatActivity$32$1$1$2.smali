.class Lcom/vkontakte/android/ChatActivity$32$1$1$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$32$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$32$1$1;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->val$msg:Ljava/lang/String;

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 1650
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    iput-boolean v2, v0, Lcom/vkontakte/android/ChatActivity$32;->r:Z

    .line 1651
    sget-object v0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MultiAttachView;->getCurrent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/UploaderService;->cancel(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1653
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    const v1, 0x7f090109

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1654
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->resetIndex()V

    .line 1655
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$35(Lcom/vkontakte/android/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1656
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    iget-object v1, v0, Lcom/vkontakte/android/ChatActivity$32;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 1657
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$2;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$32;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1656
    monitor-exit v1

    .line 1659
    return-void

    .line 1656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
