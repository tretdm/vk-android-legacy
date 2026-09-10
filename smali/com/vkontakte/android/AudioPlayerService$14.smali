.class Lcom/vkontakte/android/AudioPlayerService$14;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->fadeIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1136
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 1142
    :goto_1
    return-void

    .line 1137
    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    .line 1138
    .local v1, "vol":F
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1139
    const-wide/16 v2, 0x14

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1136
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1141
    :catch_1
    move-exception v2

    goto :goto_1
.end method
