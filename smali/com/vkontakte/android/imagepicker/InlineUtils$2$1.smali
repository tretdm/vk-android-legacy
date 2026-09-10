.class Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/InlineUtils$2;->run(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/InlineUtils$2;

.field private final synthetic val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/InlineUtils$2;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;->this$1:Lcom/vkontakte/android/imagepicker/InlineUtils$2;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->showFiltersToast()V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setFiltered(I)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    const/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->update(I)V

    .line 83
    return-void
.end method
