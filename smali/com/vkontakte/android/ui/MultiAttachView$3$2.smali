.class Lcom/vkontakte/android/ui/MultiAttachView$3$2;
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

.field private final synthetic val$idx:I

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView$3;ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    iput p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->val$idx:I

    iput-object p3, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->val$iv:Landroid/widget/ImageView;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$3;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$2(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->val$idx:I

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    return-void
.end method
