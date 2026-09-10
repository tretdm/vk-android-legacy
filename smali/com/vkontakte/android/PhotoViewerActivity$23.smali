.class Lcom/vkontakte/android/PhotoViewerActivity$23;
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->val$prevIndex:I

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 908
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->val$prevIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    .line 909
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600da

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->setPrevImage(Landroid/graphics/Bitmap;)V

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "page"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->val$prevIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 913
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v1, :cond_0

    .line 914
    check-cast v0, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->val$prevIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/PhotoViewerFragment;->displayImage(Landroid/graphics/Bitmap;ZI)V

    .line 915
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    goto :goto_0
.end method
