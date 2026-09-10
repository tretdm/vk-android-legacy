.class Lcom/vkontakte/android/ui/MultiAttachView$3$1;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$bmp2:Landroid/graphics/Bitmap;

.field private final synthetic val$idx:I

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView$3;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp2:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$idx:I

    iput-object p5, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$3;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$2(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$idx:I

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$3;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$3;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$3;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;->onUpdateBitmaps()V

    .line 249
    :cond_0
    return-void
.end method
