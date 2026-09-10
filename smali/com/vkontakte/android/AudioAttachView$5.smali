.class Lcom/vkontakte/android/AudioAttachView$5;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioAttachView;->onBufferProgressChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioAttachView;

.field final synthetic val$buffered:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;I)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$5;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iput p2, p0, Lcom/vkontakte/android/AudioAttachView$5;->val$buffered:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$5;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$200(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView$5;->val$buffered:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 279
    return-void
.end method
