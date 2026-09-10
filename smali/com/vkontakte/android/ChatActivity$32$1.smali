.class Lcom/vkontakte/android/ChatActivity$32$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/UploaderService$UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$32;

.field private final synthetic val$_i:I

.field private final synthetic val$atts:[Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;

.field private final synthetic val$thumbs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$32;Landroid/app/ProgressDialog;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$atts:[Ljava/lang/String;

    iput p5, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$_i:I

    iput-object p6, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$thumbs:[Ljava/lang/String;

    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    return-object v0
.end method


# virtual methods
.method public setProgress(II)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "total"    # I

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ChatActivity$32$1$3;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/vkontakte/android/ChatActivity$32$1$3;-><init>(Lcom/vkontakte/android/ChatActivity$32$1;ILandroid/app/ProgressDialog;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1707
    return-void
.end method

.method public uploadDone(Ljava/lang/String;Lcom/vkontakte/android/Attachment;)V
    .locals 10
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v9

    new-instance v0, Lcom/vkontakte/android/ChatActivity$32$1$2;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$atts:[Ljava/lang/String;

    iget v4, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$_i:I

    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$thumbs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$pdlg:Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$msg:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/ChatActivity$32$1$2;-><init>(Lcom/vkontakte/android/ChatActivity$32$1;Lcom/vkontakte/android/Attachment;[Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1694
    return-void
.end method

.method public uploadFailed()Z
    .locals 4

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ChatActivity$32$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$pdlg:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$32$1;->val$msg:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/ChatActivity$32$1$1;-><init>(Lcom/vkontakte/android/ChatActivity$32$1;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    iget-object v1, v0, Lcom/vkontakte/android/ChatActivity$32;->sync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$32;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1665
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1;->this$1:Lcom/vkontakte/android/ChatActivity$32;

    iget-boolean v0, v0, Lcom/vkontakte/android/ChatActivity$32;->r:Z

    return v0

    .line 1665
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1668
    :catch_0
    move-exception v0

    goto :goto_0
.end method
