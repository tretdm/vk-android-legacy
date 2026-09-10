.class Lcom/vkontakte/android/ui/MenuOverlayView$4;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MenuOverlayView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$4;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$4;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$4;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/ExtendedTabBar;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$4;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setShowTitleOverlay(Z)V

    .line 403
    :cond_0
    return-void
.end method
