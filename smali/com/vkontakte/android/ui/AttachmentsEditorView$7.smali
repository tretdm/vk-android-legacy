.class Lcom/vkontakte/android/ui/AttachmentsEditorView$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;->val$att:Lcom/vkontakte/android/VideoAttachment;

    iput-object p3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;->val$v:Landroid/view/View;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;->val$att:Lcom/vkontakte/android/VideoAttachment;

    iget-object v1, v1, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$7$1;

    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;->val$v:Landroid/view/View;

    invoke-direct {v2, p0, v3, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$7$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView$7;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method
