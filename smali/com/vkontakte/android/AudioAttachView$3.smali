.class Lcom/vkontakte/android/AudioAttachView$3;
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$p:Z

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v1, 0x7f02013f

    const v0, 0x7f020136

    .line 173
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v3, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$p:Z

    iput-boolean v3, v2, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    .line 174
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v2, v2, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v3, v3, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/AudioAttachView;->access$0(Lcom/vkontakte/android/AudioAttachView;I)V

    .line 179
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v3, v3, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v2, v0}, Lcom/vkontakte/android/AudioAttachView;->access$0(Lcom/vkontakte/android/AudioAttachView;I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
