.class Lcom/vkontakte/android/ChatActivity$32$1$1$1;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$32$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$1;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$1;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/ChatActivity$32;->r:Z

    .line 1642
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$1;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    iget-object v1, v0, Lcom/vkontakte/android/ChatActivity$32;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 1643
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$1$1;->this$3:Lcom/vkontakte/android/ChatActivity$32$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1$1;)Lcom/vkontakte/android/ChatActivity$32$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$32;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1642
    monitor-exit v1

    .line 1645
    return-void

    .line 1642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
