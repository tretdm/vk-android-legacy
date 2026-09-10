.class Lcom/vkontakte/android/ui/AttachmentsEditorView$12;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->createVideoView(Lcom/vkontakte/android/VideoAttachment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private final synthetic val$att:Lcom/vkontakte/android/VideoAttachment;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/VideoAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->val$att:Lcom/vkontakte/android/VideoAttachment;

    iput-object p3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->val$v:Landroid/view/View;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 609
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->val$att:Lcom/vkontakte/android/VideoAttachment;

    instance-of v4, v4, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v4, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, "_b":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 613
    .local v2, "mdr":Landroid/media/MediaMetadataRetriever;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->val$att:Lcom/vkontakte/android/VideoAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 614
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v2    # "mdr":Landroid/media/MediaMetadataRetriever;
    :goto_0
    move-object v1, v0

    .line 623
    .end local v0    # "_b":Landroid/graphics/Bitmap;
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/vkontakte/android/ui/AttachmentsEditorView$12$1;

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->val$v:Landroid/view/View;

    invoke-direct {v5, p0, v6, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView$12$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView$12;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 628
    return-void

    .line 616
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v0    # "_b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 617
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error getting video thumbnail"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 621
    .end local v0    # "_b":Landroid/graphics/Bitmap;
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;->val$att:Lcom/vkontakte/android/VideoAttachment;

    iget-object v4, v4, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_1
.end method
