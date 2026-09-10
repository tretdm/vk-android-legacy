.class Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "FriendListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendListView;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/FriendListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendListView;->access$7(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$9(Lcom/vkontakte/android/FriendListView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$10(Lcom/vkontakte/android/FriendListView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 692
    return-void
.end method
