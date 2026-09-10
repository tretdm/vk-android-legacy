.class Lcom/vkontakte/android/FriendRequestsView$4$2;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView$4;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FriendRequestsView$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$4$2;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4$2;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$5(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4$2;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$7(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4$2;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$6(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4$2;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4$2;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4$2;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060051

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    return-void
.end method
