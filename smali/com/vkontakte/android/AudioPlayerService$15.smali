.class Lcom/vkontakte/android/AudioPlayerService$15;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1223
    const-string v0, "vk"

    const-string v1, "Image failed!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$39(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/media/RemoteControlClientCompat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne p2, v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$39(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/media/RemoteControlClientCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1227
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1228
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1229
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putBitmap(ILandroid/graphics/Bitmap;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    goto :goto_0
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 1207
    const-string v0, "vk"

    const-string v1, "Image loaded"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne p3, v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$38(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 1210
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$39(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/media/RemoteControlClientCompat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    const-string v0, "vk"

    const-string v1, "Before apply"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$39(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/media/RemoteControlClientCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1213
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1214
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$15;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1215
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putBitmap(ILandroid/graphics/Bitmap;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 1217
    const-string v0, "vk"

    const-string v1, "Apply"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
