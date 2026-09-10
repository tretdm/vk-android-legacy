.class Lcom/vkontakte/android/PhotoViewerActivity$20$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ImageCache$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$20;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(II)V
    .locals 7
    .param p1, "progress"    # I
    .param p2, "total"    # I

    .prologue
    .line 758
    int-to-double v3, p1

    int-to-double v5, p2

    div-double v1, v3, v5

    .line 759
    .local v1, "progr":D
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity$20;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$20;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity$20;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$20;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "page"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoViewerActivity$20;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$20;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 761
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v3, :cond_0

    .line 762
    check-cast v0, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/PhotoViewerFragment;->setProgress(D)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity$20;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$20;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v3

    const v4, 0x7f0600db

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v3, v1, v2}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    goto :goto_0
.end method
