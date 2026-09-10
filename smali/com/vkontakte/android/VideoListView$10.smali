.class Lcom/vkontakte/android/VideoListView$10;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->scrollToTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$10;->this$0:Lcom/vkontakte/android/VideoListView;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$10;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$9(Lcom/vkontakte/android/VideoListView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$10;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$9(Lcom/vkontakte/android/VideoListView;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 474
    const/4 v0, 0x1

    return v0
.end method
