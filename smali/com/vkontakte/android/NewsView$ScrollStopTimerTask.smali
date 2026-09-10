.class Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "NewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/NewsView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 739
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView;->access$1(Lcom/vkontakte/android/NewsView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$2(Lcom/vkontakte/android/NewsView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 740
    return-void
.end method
