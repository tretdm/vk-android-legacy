.class Lcom/vkontakte/android/PhotoViewerActivity$17;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->onNavPrev()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$prevIndex:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$17;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$17;->val$prevIndex:I

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$17;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$17;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$17;->val$prevIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    .line 530
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$17;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$17;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setPrevImage(Landroid/graphics/Bitmap;)V

    .line 531
    return-void
.end method
