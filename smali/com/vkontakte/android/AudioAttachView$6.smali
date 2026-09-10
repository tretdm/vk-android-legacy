.class Lcom/vkontakte/android/AudioAttachView$6;
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

.field private final synthetic val$buffered:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$6;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iput p2, p0, Lcom/vkontakte/android/AudioAttachView$6;->val$buffered:I

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$6;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$3(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView$6;->val$buffered:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 330
    return-void
.end method
