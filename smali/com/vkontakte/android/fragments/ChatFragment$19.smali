.class Lcom/vkontakte/android/fragments/ChatFragment$19;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 994
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$19;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$48(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/Timer;)V

    .line 998
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$47(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$19$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$19$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$19;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1001
    return-void
.end method
