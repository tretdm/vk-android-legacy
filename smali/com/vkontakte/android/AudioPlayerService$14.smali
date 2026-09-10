.class Lcom/vkontakte/android/AudioPlayerService$14;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->getCoverForWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1461
    const-string v0, "vk"

    const-string v1, "Image failed!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$3200(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne p2, v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$3200(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 1445
    const-string v0, "vk"

    const-string v1, "Image loaded"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne p3, v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$3500(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 1448
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$3200(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    const-string v0, "vk"

    const-string v1, "Before apply"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$14;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$3200(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 1455
    const-string v0, "vk"

    const-string v1, "Apply"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
