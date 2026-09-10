.class Lcom/vkontakte/android/ChatActivity$19;
.super Ljava/util/TimerTask;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->restartTypingTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$19;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 771
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$19;)Lcom/vkontakte/android/ChatActivity;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$19;->this$0:Lcom/vkontakte/android/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$19;->this$0:Lcom/vkontakte/android/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ChatActivity;->access$32(Lcom/vkontakte/android/ChatActivity;Ljava/util/Timer;)V

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$19;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$31(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ChatActivity$19$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$19$1;-><init>(Lcom/vkontakte/android/ChatActivity$19;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 778
    return-void
.end method
