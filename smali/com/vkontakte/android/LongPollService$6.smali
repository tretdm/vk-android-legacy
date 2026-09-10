.class Lcom/vkontakte/android/LongPollService$6;
.super Ljava/util/TimerTask;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->startSendingOnline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$6;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$6;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-static {v0}, Lcom/vkontakte/android/LongPollService;->access$500(Lcom/vkontakte/android/LongPollService;)V

    .line 1309
    return-void
.end method
