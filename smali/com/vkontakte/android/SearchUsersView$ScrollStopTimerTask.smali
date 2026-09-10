.class Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "SearchUsersView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SearchUsersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SearchUsersView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/SearchUsersView;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/SearchUsersView;Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$2(Lcom/vkontakte/android/SearchUsersView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v1}, Lcom/vkontakte/android/SearchUsersView;->access$3(Lcom/vkontakte/android/SearchUsersView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v2}, Lcom/vkontakte/android/SearchUsersView;->access$4(Lcom/vkontakte/android/SearchUsersView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 321
    return-void
.end method
