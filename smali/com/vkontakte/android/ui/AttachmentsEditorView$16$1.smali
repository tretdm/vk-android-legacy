.class Lcom/vkontakte/android/ui/AttachmentsEditorView$16$1;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/AttachmentsEditorView$16;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView$16;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16$1;->this$1:Lcom/vkontakte/android/ui/AttachmentsEditorView$16;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16$1;->this$1:Lcom/vkontakte/android/ui/AttachmentsEditorView$16;

    iget-object v0, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->val$v:Landroid/view/View;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 826
    return-void
.end method
