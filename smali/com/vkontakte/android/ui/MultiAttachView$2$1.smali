.class Lcom/vkontakte/android/ui/MultiAttachView$2$1;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$2$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$2;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$2$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$2;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$2;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$2;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$2$1;->this$1:Lcom/vkontakte/android/ui/MultiAttachView$2;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView$2;->access$0(Lcom/vkontakte/android/ui/MultiAttachView$2;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020207

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$1(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    .line 174
    return-void
.end method
