.class Lcom/vkontakte/android/AudioPlayerService$13;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->fadeIn(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;

.field private final synthetic val$from:F


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService$13;->val$from:F

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1180
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-le v0, v2, :cond_0

    .line 1186
    :goto_1
    return-void

    .line 1181
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService$13;->val$from:F

    int-to-float v3, v0

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService$13;->val$from:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1182
    .local v1, "vol":F
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$13;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1183
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1180
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1185
    .end local v1    # "vol":F
    :catch_1
    move-exception v2

    goto :goto_1
.end method
