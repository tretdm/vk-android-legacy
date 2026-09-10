.class Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 982
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DialogsActivity;->access$3(Lcom/vkontakte/android/DialogsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/DialogsActivity;->access$4(Lcom/vkontakte/android/DialogsActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 986
    :cond_0
    return-void
.end method
