.class Lcom/vkontakte/android/AudioAttachView$4;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioAttachView;->onPlayProgressChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioAttachView;

.field private final synthetic val$played:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$4;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iput p2, p0, Lcom/vkontakte/android/AudioAttachView$4;->val$played:I

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$4;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView$4;->val$played:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 264
    return-void
.end method
