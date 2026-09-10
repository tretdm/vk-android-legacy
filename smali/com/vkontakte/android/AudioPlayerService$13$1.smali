.class Lcom/vkontakte/android/AudioPlayerService$13$1;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerService$13;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1427
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "_bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-eq p3, v1, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$43(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$42(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    move-object v0, p1

    .line 1414
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/high16 v1, 0x43020000    # 130.0f

    :try_start_0
    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    const/high16 v2, 0x43020000    # 130.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1415
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$43(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f090072

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1416
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 1417
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$43(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v2, 0x7f090072

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$13$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService$13;->access$0(Lcom/vkontakte/android/AudioPlayerService$13;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$43(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1419
    :catch_0
    move-exception v1

    goto :goto_1
.end method
