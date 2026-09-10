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

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView$2;->val$p:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v0, v0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v0, v0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02005d

    :goto_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/AudioAttachView;->access$0(Lcom/vkontakte/android/AudioAttachView;I)V

    .line 267
    :goto_1
    return-void

    .line 263
    :cond_0
    const v0, 0x7f020061

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget-boolean v0, v0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02005a

    :goto_2
    invoke-static {v1, v0}, Lcom/vkontakte/android/AudioAttachView;->access$0(Lcom/vkontakte/android/AudioAttachView;I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f02005e

    goto :goto_2
.end method
