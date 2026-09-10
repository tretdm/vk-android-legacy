.class Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "FriendRequestsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendRequestsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 757
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SCROLL STOP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$5(Lcom/vkontakte/android/FriendRequestsView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 759
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$5(Lcom/vkontakte/android/FriendRequestsView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 760
    return-void
.end method
