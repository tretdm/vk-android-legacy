.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$24;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initializeAlbumsFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumChosen(ILcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "album"    # Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$23(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/AlbumEntry;Z)V

    .line 1021
    return-void
.end method

.method public onCameraAlbumFound(I)V
    .locals 2
    .param p1, "bucketId"    # I

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput p1, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentCameraBucketId:I

    .line 1014
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentCameraBucketFound:Z

    .line 1015
    return-void
.end method
