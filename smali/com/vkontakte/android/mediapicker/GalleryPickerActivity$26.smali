.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeAlbumsFragment()V
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
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumChosen(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$28(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V

    .line 1174
    return-void
.end method

.method public onCameraAlbumFound(I)V
    .locals 2
    .param p1, "bucketId"    # I

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iput p1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketId:I

    .line 1161
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketFound:Z

    .line 1162
    return-void
.end method

.method public onVKCameraAlbumFound(I)V
    .locals 0
    .param p1, "bucketId"    # I

    .prologue
    .line 1168
    return-void
.end method
