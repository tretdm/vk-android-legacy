.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getLoadCallback(ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

.field private final synthetic val$index:I

.field private final synthetic val$lock:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;ILjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->val$index:I

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->val$lock:Ljava/util/concurrent/Semaphore;

    .line 815
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    return-object v0
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 4
    .param p1, "result"    # Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .prologue
    .line 818
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$3(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->val$index:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 820
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->val$lock:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$5(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)I

    move-result v1

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->val$index:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$6(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V

    .line 824
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$7(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$8(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V

    .line 826
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;)V

    .line 844
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->post(Ljava/lang/Runnable;)Z

    .line 845
    return-void

    .line 823
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;->run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    return-void
.end method
