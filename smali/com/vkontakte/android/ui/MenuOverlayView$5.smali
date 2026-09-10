.class Lcom/vkontakte/android/ui/MenuOverlayView$5;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$5;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$5;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$16(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 460
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$5;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 461
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$5;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$6(Lcom/vkontakte/android/ui/MenuOverlayView;)Lcom/vkontakte/android/MenuListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$5;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/ExtendedTabBar;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$5;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setShowTitleOverlay(Z)V

    .line 464
    :cond_0
    return-void
.end method
