.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->loadAndOpenImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$entries:Ljava/util/List;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$index:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$index:I

    iput-object p5, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$entries:Ljava/util/List;

    .line 1225
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 7
    .param p1, "result"    # Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 1232
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$view:Landroid/view/View;

    iget v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$index:I

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->val$entries:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;Landroid/view/View;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1243
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    return-void
.end method
