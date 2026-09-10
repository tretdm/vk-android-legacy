.class Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

.field private final synthetic val$_pos:I

.field private final synthetic val$p:F


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;IF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->val$_pos:I

    iput p3, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->val$p:F

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 635
    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->val$_pos:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->val$_pos:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "ds":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->val$p:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/AudioPlayerView;->setProgress(ILjava/lang/String;)V

    .line 637
    :cond_0
    return-void
.end method
