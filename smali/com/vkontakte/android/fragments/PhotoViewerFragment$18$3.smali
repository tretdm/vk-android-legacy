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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 725
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 726
    return-void
.end method
