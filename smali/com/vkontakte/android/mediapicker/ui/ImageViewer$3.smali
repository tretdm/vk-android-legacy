.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->load([IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

.field private final synthetic val$indexes:[I

.field private final synthetic val$lock:[Ljava/util/concurrent/Semaphore;

.field private final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;[I[Ljava/util/concurrent/Semaphore;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$indexes:[I

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    iput-boolean p4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$sync:Z

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 766
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$indexes:[I

    array-length v4, v3

    move v0, v2

    :goto_0
    if-lt v0, v4, :cond_1

    .line 772
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 787
    :cond_0
    return-void

    .line 768
    :cond_1
    aget v8, v3, v0

    .line 769
    .local v8, "i":I
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$3(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 770
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    .end local v8    # "i":I
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 777
    .local v9, "index":I
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$3(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v1

    .line 779
    .local v1, "entry":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 781
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    aget-object v4, v4, v2

    invoke-static {v3, v9, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$4(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$sync:Z

    const/4 v6, -0x1

    const/4 v7, 0x1

    move v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    .line 784
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;->val$lock:[Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_1
.end method
