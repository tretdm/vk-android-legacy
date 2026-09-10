.class Lcom/vkontakte/android/PhotoViewerFragment$15;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->toggleControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;

.field private final synthetic val$v1:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$15;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerFragment$15;->val$v1:Landroid/view/View;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$15;->val$v1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$15;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$15;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$15;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$15;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$14(Lcom/vkontakte/android/PhotoViewerFragment;Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method
