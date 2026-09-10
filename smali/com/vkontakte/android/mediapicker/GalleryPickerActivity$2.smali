.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$2;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageOpened(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/util/List;Lcom/vkontakte/android/mediapicker/ui/LocalImageView;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p4, "view"    # Lcom/vkontakte/android/mediapicker/ui/LocalImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;",
            "Lcom/vkontakte/android/mediapicker/ui/LocalImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p3, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0, p1, p2, p4, p3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$7(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V

    .line 166
    return-void
.end method
