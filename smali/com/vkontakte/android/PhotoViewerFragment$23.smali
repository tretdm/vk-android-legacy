.class Lcom/vkontakte/android/PhotoViewerFragment$23;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->displayImage(Landroid/graphics/Bitmap;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;

.field private final synthetic val$animate:Z

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;ZLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->val$animate:Z

    iput-object p3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->val$bmp:Landroid/graphics/Bitmap;

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 920
    :try_start_0
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->val$animate:Z

    .line 921
    .local v1, "anim":Z
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 922
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 923
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 924
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600db

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 925
    if-eqz v1, :cond_1

    .line 926
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 927
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 928
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 930
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ZoomableImageView;->setTags([Lcom/vkontakte/android/PhotoTag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    .end local v1    # "anim":Z
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v2

    .line 933
    .local v2, "x":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$23;->val$bmp:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$23(Lcom/vkontakte/android/PhotoViewerFragment;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
