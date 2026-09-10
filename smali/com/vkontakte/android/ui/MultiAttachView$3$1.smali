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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView$3;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$3;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$3;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp2:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$2(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 241
    return-void
.end method
