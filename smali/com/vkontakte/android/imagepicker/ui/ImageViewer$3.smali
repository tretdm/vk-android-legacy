.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->load([IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

.field private final synthetic val$indexes:[I

.field private final synthetic val$lock:[Ljava/util/concurrent/Semaphore;

.field private final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;[I[Ljava/util/concurrent/Semaphore;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$indexes:[I

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    iput-boolean p4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$sync:Z

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 766
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$indexes:[I

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_1

    .line 772
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 787
    :cond_0
    return-void

    .line 768
    :cond_1
    aget v1, v6, v4

    .line 769
    .local v1, "i":I
    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v8}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$3(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 770
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 775
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 777
    .local v2, "index":I
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$3(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    .line 779
    .local v0, "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 781
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    aget-object v8, v8, v5

    invoke-static {v7, v2, v8}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$4(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    move-result-object v7

    iget-boolean v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$sync:Z

    invoke-virtual {v4, v0, v5, v7, v8}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V

    .line 784
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 785
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    aput-object v7, v4, v5

    goto :goto_1
.end method
