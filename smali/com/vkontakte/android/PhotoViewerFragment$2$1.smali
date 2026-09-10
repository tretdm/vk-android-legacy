.class Lcom/vkontakte/android/PhotoViewerFragment$2$1;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment$2;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerFragment$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$2$1;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$2;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$2$1;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment$2;->access$0(Lcom/vkontakte/android/PhotoViewerFragment$2;)Lcom/vkontakte/android/PhotoViewerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    return-void
.end method
