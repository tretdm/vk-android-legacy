.class Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->run(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->showFiltersToast()V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setFiltered(I)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    const/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->update(I)V

    .line 99
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    iget v1, v1, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$lastFilterId:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setFiltered(I)V

    goto :goto_0
.end method
