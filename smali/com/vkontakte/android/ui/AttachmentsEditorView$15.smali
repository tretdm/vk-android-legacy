.class Lcom/vkontakte/android/ui/AttachmentsEditorView$15;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->createDocumentView(Lcom/vkontakte/android/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field final synthetic val$att:Lcom/vkontakte/android/DocumentAttachment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/DocumentAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;->val$att:Lcom/vkontakte/android/DocumentAttachment;

    iput-object p3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 791
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;->val$att:Lcom/vkontakte/android/DocumentAttachment;

    iget-object v1, v3, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 793
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 795
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 802
    .end local v2    # "x":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 796
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v4, Lcom/vkontakte/android/ui/AttachmentsEditorView$15$1;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$15$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView$15;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
