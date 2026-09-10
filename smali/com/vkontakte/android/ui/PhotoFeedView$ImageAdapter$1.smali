.class Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter$1;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter$1;->this$1:Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter$1;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    :cond_0
    return-void
.end method
