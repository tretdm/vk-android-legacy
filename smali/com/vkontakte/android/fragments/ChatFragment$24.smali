.class Lcom/vkontakte/android/fragments/ChatFragment$24;
.super Ljava/util/TimerTask;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6002(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1377
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5900(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$24$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$24$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$24;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1380
    return-void
.end method
