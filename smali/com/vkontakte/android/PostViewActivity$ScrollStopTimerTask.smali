.class Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "PostViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PostViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 1092
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$1(Lcom/vkontakte/android/PostViewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$2(Lcom/vkontakte/android/PostViewActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 1096
    return-void
.end method
