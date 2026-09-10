.class Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;
.super Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;
.source "ImagesViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    .line 39
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    goto :goto_0
.end method

.method public isPositionAvailable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
