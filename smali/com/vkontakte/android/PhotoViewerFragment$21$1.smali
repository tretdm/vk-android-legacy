.class Lcom/vkontakte/android/PhotoViewerFragment$21$1;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerFragment$21;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment$21;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$21$1;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$21;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$21$1;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$21;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment$21;->access$0(Lcom/vkontakte/android/PhotoViewerFragment$21;)Lcom/vkontakte/android/PhotoViewerFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$19(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$21$1;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$21;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment$21;->access$0(Lcom/vkontakte/android/PhotoViewerFragment$21;)Lcom/vkontakte/android/PhotoViewerFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->placeAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method
