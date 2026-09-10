.class Lcom/vkontakte/android/AudioAttachView$2;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioAttachView;

.field private final synthetic val$p:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioAttachView$2;->val$p:Z

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView$2;->val$p:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    .line 233
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v0, v0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020076

    :goto_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/AudioAttachView;->access$1(Lcom/vkontakte/android/AudioAttachView;I)V

    .line 235
    return-void

    .line 233
    :cond_0
    const v0, 0x7f020079

    goto :goto_0
.end method
