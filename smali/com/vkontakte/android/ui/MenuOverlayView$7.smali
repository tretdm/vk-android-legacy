.class Lcom/vkontakte/android/ui/MenuOverlayView$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$7;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$7;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$14(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 568
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$7;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$18(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 569
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$7;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 570
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$7;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$15(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 571
    return-void
.end method
