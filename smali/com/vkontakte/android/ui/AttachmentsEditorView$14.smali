.class Lcom/vkontakte/android/ui/AttachmentsEditorView$14;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkontakte/android/PhotoAttachment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private final synthetic val$att:Lcom/vkontakte/android/PhotoAttachment;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PhotoAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;->val$att:Lcom/vkontakte/android/PhotoAttachment;

    iput-object p3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;->val$v:Landroid/view/View;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 767
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;->val$att:Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, "url":Ljava/lang/String;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 770
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v4, Lcom/vkontakte/android/ui/AttachmentsEditorView$14$1;

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;->val$v:Landroid/view/View;

    invoke-direct {v4, p0, v5, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$14$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView$14;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z

    .line 778
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 771
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_0
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
