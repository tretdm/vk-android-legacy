.class Lcom/vkontakte/android/ui/MultiAttachView$2$2;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/MultiAttachView$2;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$2$2;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$2;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$2$2;->val$bmp:Landroid/graphics/Bitmap;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$2$2;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$2;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$2;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$2;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$2$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->access$1(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    .line 189
    return-void
.end method
