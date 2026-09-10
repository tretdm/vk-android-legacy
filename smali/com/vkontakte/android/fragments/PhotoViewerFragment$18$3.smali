.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 725
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1300(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 726
    return-void
.end method
