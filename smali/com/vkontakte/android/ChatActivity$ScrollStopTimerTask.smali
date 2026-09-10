.class Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 2118
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 2118
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$15(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2122
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$12(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$16(Lcom/vkontakte/android/ChatActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$17(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 2123
    return-void
.end method
