.class Lcom/vkontakte/android/PhotoViewerActivity$19;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->hideControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 717
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600dc

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 720
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 721
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 727
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
